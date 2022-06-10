<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Post;

class PostController extends Controller
{
    public function index()
    {
        //
    }

    public function show(Post $post)
    {
        return view('user.posts', compact('post'));
    }
}
