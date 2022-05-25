@extends('layouts.user-new')
@section('content')
{{-- <div class="body-content body-content-lg" style="background-image: url({{asset('images/bg.jpg')}})"> <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
            <div class="container"><style>
.body-content-lg1 {
	border-radius: 10px 10px;
	background-color: #f2f6ff;
    background-position: 2% 100%;
	background-size: cover;
    min-height: 100vh;
    position: relative;
}
.container-page {
border-radius: 10px;
    background-color: transparent;
	background-position: -6px -646%;

    background-size: cover;
	background-repeat: none;
    min-height: 50vh;
}
</style>
<div id="overlay" style="display: none;">
  <div class="cv-spinner">
    <span class="spinner"></span>
  </div>
</div>
<style>
#overlay{
  position: fixed;
  top: 0;
  z-index: 100;
  width: 100%;
  height:100%;
  display: none;
  background: rgba(0,0,0,0.2);
}
.cv-spinner {
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}
.spinner {
  width: 40px;
  height: 40px;
  border: 4px #ddd solid;
  border-top: 4px #2e93e6 solid;
  border-radius: 50%;
  animation: sp-anime 0.8s infinite linear;
}
@keyframes sp-anime {
  100% {
    transform: rotate(360deg);
  }
}
.is-hide{
  display:none;
}
</style> --}}
<!-- ResetPassword -->
<div class="body-content body-content-lg" style="background: transparent;margin-top:0"> <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
<div class="container">
    {{-- <style>
    .body-content-lg1 {
        border-radius: 10px 10px;
        background-color: #f2f6ff;
        background-image: url(https://app.anphuclinh.net/wp-content/themes/apl/assets/images/lichsu-bg.png);
        background-position: 2% 100%;
        background-size: cover;
        min-height: 100vh;
        position: relative;
    }

    .container-page {
        border-radius: 10px;
        background-color: transparent;
        background-image: url(https://app.anphuclinh.net/wp-content/themes/apl/assets/images/cart1.png);
        background-position: -6px -646%;

        background-size: cover;
        background-repeat: none;
        min-height: 50vh;
    }
</style> --}}
<div class="container-page">
<!-- Page-header -->
    <div class="page-header">
        <div class="page-header-title page-header-item">
            <h3  style="color: #fff;">Lịch sử giao dịch</h3>
        </div>
    </div>
    <!-- Page-header -->
    <div class="tab-selector">
        <!-- Tab-selector-list -->
        <ul class="tab-selector-list mb-3">
            <li class="active" data-tab-list="1">
                <button style="background: url({{asset('images/btn.png')}}) 3px 5px no-repeat;
                background-position: center;
                background-size: cover;
                border: none;
                width:max-content;
                margin:0 auto;
                padding: 2px 10px;">Mua hàng</button>
            </li>
            <li data-tab-list="3" class="">
                <button style="background: url({{asset('images/btn.png')}}) 3px 5px no-repeat;
                background-position: center;
                background-size: cover;
                border: none;
                width:max-content;
                margin:0 auto;
                padding: 2px 10px;">Rút tiền</button>
            </li>
            <li data-tab-list="5" class="">
                <button style="background: url({{asset('images/btn.png')}}) 3px 5px no-repeat;
                background-position: center;
                background-size: cover;
                border: none;
                width:max-content;
                margin:0 auto;
                padding: 2px 10px;">Nhận điểm</button>
            </li>
        </ul>
        <!-- Tab-selector-list -->

        <!-- Tab-selector-details -->
        <div class="tab-selector-details">
            <div class="tab-selector-details-item active" data-tab-details="1">
            <p>Chưa có lịch sử mua hàng !</p>                        </div>
            <div class="tab-selector-details-item" data-tab-details="2">
            <p>Chưa có lịch sử nạp tiền !</p>                        </div>
            <div class="tab-selector-details-item" data-tab-details="3">
                <p>Chưa có lịch sử rút tiền !</p>                        </div>
            <div class="tab-selector-details-item" data-tab-details="4">
                <p>Chưa có lịch sử chuyển điểm !</p>                        </div>
            <div class="tab-selector-details-item" data-tab-details="5">
                <p>Chưa có lịch sử nhận điểm !</p>                        </div>
        </div>
    </div>
        <!-- Tab-selector-details -->
</div>
</div>
</div>
<!-- Body-content -->
@endsection
