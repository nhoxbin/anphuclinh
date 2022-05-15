@extends('layouts.auth')
@section('title', __('Sign up'))
@section('content')

@php
$check_users = \App\Models\User::count();
@endphp
@if( recaptcha() )
@push('header')
<script>
    grecaptcha.ready(function () { grecaptcha.execute('{{ recaptcha('site') }}', { action: 'register' }).then(function (token) { if(token) { document.getElementById('recaptcha').value = token; } }); });
</script>
@endpush
@endif
<div class="page-ath-form">

    <h2 class="page-ath-heading">{{__('Đăng ký')}} <small>{{__('Tạo tài khoản ')}} {{ site_info('name') }} {{__( 'mới')}}</small></h2>
    <form class="register-form" method="POST" action="{{ route('register') }}" id="regForm">
        @csrf
        <div id="recaptcha-container"></div>
        @include('layouts.messages')
        {{-- @if(! is_maintenance() && application_installed(true) && ($check_users == 0) )
            <div class="alert alert-info-alt">
                Please register first your Super Admin account with adminstration privilege.
            </div>
        @endif --}}
        <div class="tab">
            <div class="input-item">
                <input type="text" placeholder="{{ __('Số điện thoại') }}" id="phone" class="input-bordered{{ $errors->has('phone') ? ' input-error' : '' }}" name="phone" value="{{ old('phone') }}" minlength="10" data-msg-required="{{ __('Required.') }}" data-msg-minlength="{{ __('At least :num chars.', ['num' => 10]) }}" required>
            </div>
        </div>
        <div class="tab">
            <div class="alert alert-primary" role="alert">
                Vui lòng nhập mã OTP được gửi đến điện thoại của bạn.
            </div>
            <div class="form-group">
                <input class="form-control" name="verification" id="verification" type="text" value="{{ old('verification') }}" placeholder="{{ __('Nhập mã xác minh') }}" required>
                <span id="alert-code" class="text-danger" style="display: none">{{ __('INVALID_CODE') }}</span>
            </div>
        </div>
        <div class="tab">
            <div class="input-item">
                <input type="text" placeholder="{{__('Tên')}}" class="input-bordered{{ $errors->has('name') ? ' input-error' : '' }}" name="name" value="{{ old('name') }}" minlength="3" data-msg-required="{{ __('Required.') }}" data-msg-minlength="{{ __('At least :num chars.', ['num' => 3]) }}" required>
            </div>
            {{-- <div class="input-item">
                <input type="email" placeholder="{{__('Your Email')}}" class="input-bordered{{ $errors->has('email') ? ' input-error' : '' }}" name="email" value="{{ old('email') }}"data-msg-required="{{ __('Required.') }}" data-msg-email="{{ __('Enter valid email.') }}" required>
            </div> --}}
            <div class="input-item">
                <input type="text" placeholder="{{__('SĐT người giới thiệu')}}" class="input-bordered{{ $errors->has('ref') ? ' input-error' : '' }}" name="phone-ref" minlength="4" maxlength="12" required>
            </div>
            <div class="input-item">
                <select name="address" id="address" class="input-bordered">
                    <option value="">-- Chọn Tỉnh Thành --</option>
                    @forelse ($provinces as $province)
                    <option value="{{$province->id}}">{{$province->name}}</option>
                        
                    @empty
                        
                    @endforelse
                </select>
            </div>
            <div class="input-item">
                <input type="password" placeholder="{{__('Mật khẩu')}}" class="input-bordered{{ $errors->has('password') ? ' input-error' : '' }}" name="password" id="password" minlength="6" data-msg-required="{{ __('Required.') }}" data-msg-minlength="{{ __('At least :num chars.', ['num' => 6]) }}" required>
            </div>
            <div class="input-item">
                <input type="password" placeholder="{{__('Nhập lại mật khẩu')}}" class="input-bordered{{ $errors->has('password_confirmation') ? ' input-error' : '' }}" name="password_confirmation" data-rule-equalTo="#password" minlength="6" data-msg-required="{{ __('Required.') }}" data-msg-equalTo="{{ __('Enter the same value.') }}" data-msg-minlength="{{ __('At least :num chars.', ['num' => 6]) }}" required>
            </div>
        </div>
        @if( gws('referral_info_show')==1 && get_refer_id() )
        <div class="input-item">
            <input type="text" class="input-bordered" value="{{ __('Your were invited by :userid', ['userid' => get_refer_id(true)]) }}" disabled readonly>
        </div>
        @endif

        {{-- @if(( application_installed(true)) && ($check_users > 0)) --}}
            @if(get_page_link('terms') || get_page_link('policy'))
            <div class="input-item text-left">
                <input name="terms" class="input-checkbox input-checkbox-md" id="agree" type="checkbox" required="required" data-msg-required="{{ __("Bạn nên chấp nhận các điều khoản và chính sách của chúng tôi.") }}">
                <label for="agree">{!! __('Tôi đồng ý với các') . ' ' .get_page_link('terms', ['target'=>'_blank', 'name' => true, 'status' => true]) . ((get_page_link('terms', ['status' => true]) && get_page_link('policy', ['status' => true])) ? ' '.__('và').' ' : '') . get_page_link('policy', ['target'=>'_blank', 'name' => true, 'status' => true]) !!}.</label>
            </div>
            @else
            <div class="input-item text-left">
                <label for="agree">{{__('Bằng cách đăng ký, bạn đồng ý với các điều khoản và điều kiện.')}}</label>
            </div>
            @endif
        {{-- @else --}}
            <input name="terms" value="1" type="hidden">
        {{-- @endif --}}
        @if( recaptcha() )
            <input type="hidden" name="recaptcha" id="recaptcha">
        @endif
        {{-- @if (application_installed(true) && ($check_users == 0))
            <button type="submit" class="btn btn-primary btn-block">{{ __('Complete Installation') }}</button>
        @else --}}
        {{-- @endif --}}
        <button type="button" onclick="nextPrev(1)" class="btn btn-primary btn-block">{{ __('Tạo tài khoản') }}</button>
    </form>

    {{-- @if(application_installed(true) && ($check_users > 0) && Schema::hasTable('settings')) --}}
        @if (
        (get_setting('site_api_fb_id', env('FB_CLIENT_ID', '')) != '' && get_setting('site_api_fb_secret', env('FB_CLIENT_SECRET', '')) != '') ||
        (get_setting('site_api_google_id', env('GOOGLE_CLIENT_ID', '')) != '' && get_setting('site_api_google_secret', env('GOOGLE_CLIENT_SECRET', '')) != '')
        )
        <div class="sap-text"><span>{{__('Or Sign up with')}}</span></div>
        <ul class="row guttar-20px guttar-vr-20px">
            <li class="col"><a href="{{ route('social.login', 'facebook') }}" class="btn btn-outline btn-dark btn-facebook btn-block"><em class="fab fa-facebook-f"></em><span>{{__('Facebook')}}</span></a></li>
            <li class="col"><a href="{{ route('social.login', 'google') }}" class="btn btn-outline btn-dark btn-google btn-block"><em class="fab fa-google"></em><span>{{__('Google')}}</span></a></li>
        </ul>
        @endif

        <div class="gaps-4x"></div>
        <div class="form-note">
            {{__('Bạn co sẵn sàng để tạo một tai khoản ?')}} <a href="{{ route('login') }}"> <strong>{{__('Đăng nhập')}}</strong></a>
        </div>
    {{-- @endif --}}
</div>
@endsection
