<?php

namespace App\Http\Controllers;

use App\Models\Post;

class PostController extends Controller
{
    public function show($post)
    {
        $post = Post::where('slug', $post)->firstOrFail();
        return view('public.posts', compact('post'));
    }
}
