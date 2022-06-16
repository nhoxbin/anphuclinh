@extends('layouts.user-new')
@section('content')
<div class="body-content body-content-lg">
    <div class="container">
        <main id="primary" class="site-main">
            <article id="post-1812"
                class="post-1812 post type-post status-publish format-standard has-post-thumbnail hentry category-khong-phan-loai">
                <header class="entry-header">
                    <h1 class="entry-title">{{ $post->title }}</h1>
                    <div class="entry-meta" syle="display: none;">
                        <span class="posted-on">{{ __('Posted on :time', ['time' => $post->created_at->diffForHumans()]) }}</span>
                    </div>
                </header>
                <div class="post-thumbnail">
                    <img class="rounded mx-auto d-block" src="{{ asset('storage/' . $post->image) }}" />
                </div>
                <div class="entry-content">{!! htmlspecialchars_decode($post->content) !!}</div>
            </article>
        </main>
    </div>
</div>
@endsection
