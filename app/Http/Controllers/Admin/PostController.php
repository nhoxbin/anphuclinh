<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\PostRequest;
use App\Models\Post;
use Illuminate\Support\Str;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::paginate(10);
        $pagi = $posts->appends(request()->all());
        return view('admin.posts.index', compact('posts', 'pagi'));
    }

    public function store(PostRequest $request)
    {
        if (!is_dir(storage_path('app/public/post-files'))) {
            mkdir(storage_path('app/public/post-files'));
        }
        if (is_null($request->file('image'))) {
            return back()->withInput()->with('error', __('Image cannot be null!'));
        }
        try {
            $file = $request->file('image');
            $name = Str::random(10) . '-' . time() . '.' . $file->getClientOriginalExtension();
            $save_file = $file->storeAs('public/post-files', $name);
            $save_file = 'post-files/' . pathinfo($save_file)['basename'];

            $validated = $request->validated();
            $validated['title'] = strip_tags($validated['title']);
            $validated['slug'] = Str::slug(strip_vn($validated['title']));
            $validated['image'] = $save_file;
            $validated['content'] = e(nl2br($validated['content']));
            Post::create($validated + ['user_id' => $request->user()->id]);
            return back()->with('success', __('Posts created'));
        } catch (\Exception $e) {
            return back()->with('error', __($e->getMessage()));
        }
    }

    public function create()
    {
        return view('admin.posts.create');
    }

    public function edit(Post $post)
    {
        return view('admin.posts.edit', compact('post'));
    }

    public function update(PostRequest $request, Post $post)
    {
        if (!is_dir(storage_path('app/public/post-files'))) {
            mkdir(storage_path('app/public/post-files'));
        }
        try {
            if (!is_null($request->file('image')) && $file = $request->file('image')) {
                $name = Str::random(10) . '-' . time() . '.' . $file->getClientOriginalExtension();
                $save_file = $file->storeAs('public/post-files', $name);
                $save_file = 'post-files/' . pathinfo($save_file)['basename'];

                $post->image = $save_file;
                if (file_exists('app/public/' . $post->image)) {
                    unlink(storage_path('app/public/' . $post->image));
                }
            }
            $post->title = strip_tags($request->title);
            $post->content = e(nl2br($request->content));
            $post->save();
            return back()->with('success', __('Posts updated'));
        } catch (\Exception $e) {
            return back()->with('error', __($e->getMessage()));
        }
    }

    public function destroy(Post $post)
    {
        if (file_exists('app/public/' . $post->image)) {
            unlink(storage_path('app/public/' . $post->image));
        }
        $post->delete();
        return back()->with('success', __('Posts deleted'));
    }
}
