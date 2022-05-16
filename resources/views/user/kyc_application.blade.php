@extends('layouts.user')
@section('title', __('Begin ID-Verification'))
@php
$has_sidebar = false;
@endphp

@section('content')
<div class="page-header page-header-kyc">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-xl-7 text-center">
            <h2 class="page-title">{{__('Bắt đầu xác minh ID của bạn')}}</h2>
            <p class="large">{{__('Xác minh danh tính của bạn để tham gia giao dịch trên An Phúc Linh.')}}</p>
        </div>
    </div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-10 col-xl-9">

@include('layouts.messages')

<div class="kyc-form-steps card mx-lg-4">
    <input type="hidden" id="file_uploads" value="{{ route('ajax.kyc.file.upload') }}" />
    <form class="validate-modern" action="{{ route('user.ajax.kyc.submit') }}" method="POST" id="kyc_submit">
        @csrf
        @include('layouts.kyc-form')
    </form>
</div>


    </div>
</div>

@endsection
