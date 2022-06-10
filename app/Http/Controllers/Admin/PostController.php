<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\PostRequest;
use App\Models\Post;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::all();
        return view('admin.posts.index', compact('posts'));
    }

    public function store(PostRequest $request)
    {
        Post::create($request->validated() + ['created_by' => $request->user()]);
        return back()->with('success', __('Posts created'));
    }

    public function create()
    {
        return view('admin.posts.create');
    }

    public function edit(Post $post)
    {
        return view('admin.posts.create', compact('post'));
    }

    public function update(PostRequest $request, Post $post)
    {
        $post->update([
            'title' => $request->title,
            'content' => $request->content
        ]);
        return back()->with('success', __('Posts updated'));
    }

    public function destroy(Post $post)
    {
        $post->delete();
        return back()->with('success', __('Posts deleted'));
    }
}
