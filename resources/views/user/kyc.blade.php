@extends('layouts.user')
@section('title', __('KYC Verification'))
@php
$has_sidebar = false;

$kyc_title = ($user_kyc !== NULL && isset($_GET['thank_you'])) ? __('Bắt đầu xác minh ID của bạn') : __('Xác minh KYC');
$kyc_desc = ($user_kyc !== NULL && isset($_GET['thank_you'])) ? __('Xác minh danh tính của bạn để tham gia giao dịch trên An Phúc Linh.') : __('Để tuân thủ các quy định, mỗi người tham gia phải trải qua quá trình xác minh danh tính (KYC / AML) để ngăn chặn gian lận, hoạt động rửa tiền, các giao dịch bị cấm theo chế độ trừng phạt hoặc những hành vi tài trợ cho khủng bố. Vui lòng hoàn tất quy trình xác minh nhanh chóng và an toàn của chúng tôi để tham gia vào các đợt cung cấp mã thông báo.');
@endphp

@section('content')
<div class="page-header page-header-kyc">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-xl-7 text-center">
            <h2 class="page-title">{{ $kyc_title }}</h2>
            <p class="large">{{ $kyc_desc }}</p>
        </div>
    </div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-10 col-xl-9">
        <div class="content-area card user-account-pages page-kyc">
            <div class="card-innr">
                @include('layouts.messages')
                <div class="kyc-status card mx-lg-4">
                    <div class="card-innr">
                        {{-- IF NOT SUBMITED --}}
                        @if($user_kyc == NULL)
                        <div class="status status-empty">
                            <div class="status-icon">
                                <em class="ti ti-files"></em>
                            </div>
                            <span class="status-text text-dark">{{__('Bạn chưa gửi các tài liệu cần thiết để xác minh danh tính của mình.')}}{{ (token('before_kyc')=='1') ? __('Để tham gia giao dịch, vui lòng xác minh danh tính của bạn.') : ''}}</span>
                            <p class="px-md-5">{{__('Nếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ với nhóm hỗ trợ của chúng tôi.')}}</p>
                            <a href="{{ route('user.kyc.application') }}?state=new" class="btn btn-primary">{{__('Nhấn vào đây để hoàn thành KYC của bạn')}}</a>
                        </div> 
                        @endif
                        {{-- IF SUBMITED @Thanks --}}
                        @if($user_kyc !== NULL && isset($_GET['thank_you']))
                        <div class="status status-thank px-md-5">
                            <div class="status-icon">
                                <em class="ti ti-check"></em>
                            </div>
                            <span class="status-text large text-dark">{{__('You have completed the process of KYC')}}</span>
                            <p class="px-md-5">{{__('Chúng tôi vẫn đang chờ xác minh danh tính của bạn. Sau khi nhóm của chúng tôi xác minh danh tính của bạn, bạn sẽ được thông báo qua email. Bạn cũng có thể kiểm tra trạng thái tuân thủ KYC từ trang hồ sơ của mình.')}}</p>
                            <a href="{{ route('user.account') }}" class="btn btn-primary">{{__('Quay lại trang cá nhân')}}</a>
                        </div>
                        @endif

                        {{-- IF PENDING --}}
                        @if($user_kyc !== NULL && $user_kyc->status == 'pending' && !isset($_GET['thank_you']))
                        <div class="status status-process">
                            <div class="status-icon">
                                <em class="ti ti-infinite"></em>
                            </div>
                            <span class="status-text text-dark">{{__('Quá trình xác minh đơn đăng ký của bạn.')}}</span>
                            <p class="px-md-5">{{__('Chúng tôi vẫn đang làm việc để xác minh danh tính của bạn. Sau khi nhóm của chúng tôi xác minh danh tính của bạn, bạn sẽ được thông báo qua email.')}}</p>
                        </div>
                        @endif

                        {{-- IF REJECTED/MISSING --}}
                        @if($user_kyc !== NULL && ($user_kyc->status == 'missing' || $user_kyc->status == 'rejected') && !isset($_GET['thank_you']))
                        <div class="status status{{ ($user_kyc->status == 'missing') ? '-warnning' : '-canceled' }}">
                            <div class="status-icon">
                                <em class="ti ti-na"></em>
                            </div>
                            <span class="status-text text-dark">
                                {{ $user_kyc->status == 'missing' ? __('Chúng tôi thấy một số thông tin bị thiếu.') : __('Xin lỗi! Đơn của bạn đã bị từ chối.') }}
                            </span>
                            <p class="px-md-5">{{__('Trong quá trình xác minh của chúng tôi, chúng tôi đã tìm thấy thông tin không chính xác hoặc bị thiếu. Vui lòng gửi lại biểu mẫu. Trong trường hợp có bất kỳ vấn đề nào với biểu mẫu đăng kí, vui lòng liên hệ với nhóm hỗ trợ của chúng tôi.')}}</p>
                            <a href="{{ route('user.kyc.application') }}?state={{ $user_kyc->status == 'missing' ? 'missing' : 'resubmit' }}" class="btn btn-primary">{{__('Xác nhận lại')}}</a>
                        </div>
                        @endif

                        {{-- IF VERIFIED --}}
                        @if($user_kyc !== NULL && $user_kyc->status == 'approved' && !isset($_GET['thank_you']))
                        <div class="status status-verified">
                            <div class="status-icon">
                                <em class="ti ti-files"></em>
                            </div>
                            <span class="status-text text-dark">{{__('Danh tính của bạn đã được xác minh thành công.')}}</span>
                            <p class="px-md-5">{{__('Một trong những thành viên trong nhóm của chúng tôi đã xác minh danh tính của bạn. Bây giờ bạn có thể tham gia vào giao dịch của chúng tôi. Cảm ơn bạn.')}}</p>
                            <div class="gaps-2x"></div>
                            <a href="{{ route('user.token') }}" class="btn btn-primary">{{__('Giao dịch')}}</a>
                        </div>
                        @endif

                    </div>
                </div>{{-- .card --}}
            </div>
        </div>
        {!! UserPanel::kyc_footer_info() !!}
    </div>
</div>
@endsection
