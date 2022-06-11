@extends('layouts.admin')
@section('title', 'Posts')
@push('header')
    <script src="https://cdn.tiny.cloud/1/vqlouba8lrn2cdpvub865g0iqqqw6f46eqkr9y6jvfr1oe7q/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
@endpush
@section('content')
<div class="page-content">
    <div class="container">
        @include('layouts.messages')
        @include('vendor.notice')
        <div class="card content-area content-area-mh">
            <div class="card-innr">
                <div class="card-head has-aside">
                    <h4 class="card-title">{{ __('Posts') }}</h4>
                </div>

                <form class="" action="{{ route('admin.posts.store') }}" method="post">
                    @csrf
                    <div class="form-group row">
                        <label class="col-sm-12 col-form-label" for="title">{{ __('Title') }}</label>
                        <div class="col-sm-12">
                            <input class="form-control" id="title" type="text" name="title">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-12 col-form-label" for="title">{{ __('Content') }}</label>
                        <div class="col-sm-12">
                            <textarea name="content">
                                Hello, An Phúc Linh!
                            </textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12">
                            <button class="btn btn-primary" type="submit">Lưu bài viết</button>
                        </div>
                    </div>
                </form>
            </div>{{-- .card-innr --}}
        </div>{{-- .card --}}
    </div>
</div>
@endsection
@push('footer')
<script>
    tinymce.init({
        selector: 'textarea',
        plugins: 'a11ychecker advcode casechange export formatpainter image editimage linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tableofcontents tinycomments tinymcespellchecker',
        toolbar: 'a11ycheck addcomment showcomments casechange checklist code export formatpainter image editimage pageembed permanentpen table tableofcontents',
        toolbar_mode: 'floating',
        tinycomments_mode: 'embedded',
        tinycomments_author: 'Author name',
    });
</script>
@endpush
