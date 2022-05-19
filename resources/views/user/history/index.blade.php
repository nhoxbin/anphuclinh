@extends('layouts.user-new')
@section('content')
<div class="body-content body-content-lg" style="background-image: url({{asset('images/bg.jpg')}})"> <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
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
</style>
<script>

</script>
<!-- ResetPassword -->
<div class="body-content body-content-lg" style="background: transparent;margin-top:0"> <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
<div class="container"><style>
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
</style>
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
            <li data-tab-list="2" class="">
                <button style="background: url({{asset('images/btn.png')}}) 3px 5px no-repeat;
                background-position: center;
                background-size: cover;
                border: none;
                width:max-content;
                margin:0 auto;
                padding: 2px 10px;">Nạp tiền</button>
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
             <li data-tab-list="4" class="">
                <button style="background: url({{asset('images/btn.png')}}) 3px 5px no-repeat;
                background-position: center;
                background-size: cover;
                border: none;
                width:max-content;
                margin:0 auto;
                padding: 2px 10px;">Chuyển điểm</button>
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
<!-- Footer -->
<footer class="footer-bg" style="display: none;">
<div class="container">
    <p>Copyright © 2021 <a href="https://anphuclinh.net" target="_blank">An Phúc Linh</a></p>
</div>
</footer>
<!-- Footer -->

<!-- Navbar -->
<div class="app-navbar">
<div class="container" style="padding: 0 10px;">
    <div class="navbar-content ">
        <div class="navbar-content-item">
            <a href="https://app.anphuclinh.net" class="active">
                <i class="flaticon-house"></i>
                Trang Chủ
            </a>
        </div>
        <div class="navbar-content-item">
            <a href="https://app.anphuclinh.net/lich-su">
                <i class="flaticon-invoice"></i>
                Lịch Sử
            </a>
        </div>
        <div class="navbar-content-item" data-bs-toggle="modal" data-bs-target="#addBalance">
            <a href="javscript:;">
                <i class="flaticon-menu-1"></i>
                Rút Tiền
            </a>
        </div>
        <div class="appbar-item appbar-options navbar-content-item">
                <div class="appbar-option-item appbar-option-notification">
                    <a href="https://app.anphuclinh.net/log-thong-bao"><i class="flaticon-bell"></i>Thông báo</a>
                                                                                    <span class="option-badge">31</span>
                                                </div>
        </div>
        <!--
        <div class="navbar-content-item">
            <a href="https://app.anphuclinh.net/qrcode-scan">
                <i class="flaticon-credit-card"></i>
                Quét Mã
            </a>
        </div> -->
        <div class="navbar-content-item">
            <a href="https://app.anphuclinh.net/settings">
                <i class="flaticon-settings"></i>
                Thiết Lập
            </a>
        </div>
    </div>
</div>
</div>
<!-- Navbar -->

<!-- Add-balance-modal -->
<div class="modal fade" id="addBalance" tabindex="-1" aria-labelledby="addBalance" aria-hidden="true">
<div class="modal-dialog">
    <div class="modal-content">
        <div class="container">
            <div class="modal-header">
                <div class="modal-header-title">
                    <i class="flaticon-plus color-blue"></i>
                    <h5 class="modal-title">Nạp tiền vào tài khoản</h5>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form name="add-balance">
                    <div class="form-group mb-15">
                        <label for="input1" class="form-label">Số tiền cần nạp</label>
                        <!--<input type="text" class="form-control" id="deposit_amount" name="deposit_amount" placeholder="Số tiền cần nạp">
                        -->
                        <select class="form-control ng-pristine ng-valid ng-empty ng-touched bankselect" id="deposit_amount" name="deposit_amount">
                            <option value="500000" class="">500.000đ</option>
                            <option value="1000000" class="">1.000.000đ</option>
                            <option value="1500000" class="">1.500.000đ</option>
                            <option value="2000000" class="">2.000.000đ</option>
                            <option value="2500000" class="">2.500.000đ</option>
                            <option value="3000000" class="" selected="selected">3.000.000đ</option>
                            <option value="3500000" class="">3.500.000đ</option>
                            <option value="4000000" class="">4.000.000đ</option>
                            <option value="4500000" class="">4.500.000đ</option>
                            <option value="5000000" class="">5.000.000đ</option>
                            <option value="10000000" class="">10.000.000đ</option>
                            <option value="20000000" class="">20.000.000đ</option>
                         ?>
                        </select>
                    </div>
                    <button type="submit" id="add-balance-btn" class="btn main-btn main-btn-lg full-width deposit-btn">Nạp</button>
                </form>
            </div>
        </div>
    </div>
</div>
</div>

<div class="modal fade" id="goidautu" tabindex="-1" aria-labelledby="addBalance" aria-hidden="true">
<div class="modal-dialog">
    <div class="modal-content">
        <div class="container">
            <div class="modal-header">
                <div class="modal-header-title">
                    <i class="flaticon-plus color-blue"></i>
                    <h5 class="modal-title">Nạp tiền vào tài khoản</h5>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" style="max-height: 100%">
                <ul class="apl_goidautu" style="margin: 0;padding: 0;list-style: none;">
                  <li><a href="mua-goi-dau-tu/?id=1"><img src="https://app.anphuclinh.net/wp-content/themes/apl/images/goidautu/1000.png"></a></li>
                  <li><a href="mua-goi-dau-tu/?id=2"><img src="https://app.anphuclinh.net/wp-content/themes/apl/images/goidautu/500.png"></a></li>
                  <li><a href="mua-goi-dau-tu/?id=3"><img src="https://app.anphuclinh.net/wp-content/themes/apl/images/goidautu/200.png"></a></li>
                  <li><a href="mua-goi-dau-tu/?id=4"><img src="https://app.anphuclinh.net/wp-content/themes/apl/images/goidautu/100.png"></a></li>
                  <li><a href="mua-goi-dau-tu/?id=5"><img src="https://app.anphuclinh.net/wp-content/themes/apl/images/goidautu/50.png"></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</div>
<!-- Add-balance-modal -->
<script type="text/javascript">
        $('#add-balance-btn').click(function()
        {
            $(this).attr('disabled',true);
    // 		setTimeout(function(){
    // 			$('#add-balance-btn').removeAttr('disabled');
    // 		},2000);
            return false;
        });
</script>

<script>

var databank1 = '[]';
var databank = JSON.parse(databank1);
//console.log(databank[0]);
</script>
<!-- rut-tien-modal -->
<div class="modal fade" id="ruttien" tabindex="-1" aria-labelledby="ruttien" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered modal-dialog-animatezoom">
    <div class="modal-content">
        <div class="container">
            <div class="modal-header">
                <div class="modal-header-title">
                    <i class="flaticon-plus color-blue"></i>
                    <h5 class="modal-title">Rút tiền vào tài khoản</h5>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" style="max-height:100%;">
                <form id="form-bank" class="ng-pristine ng-valid">

            <input id="wd_bankname" name="wd_bankname"  type="hidden" value="" class="">
            <input id="wd_username" name="wd_username" type="hidden" value="" class="">
            <input id="wd_ownname" name="wd_ownname" type="hidden" value="" class="">
            <input id="wd_number" name="wd_number" type="hidden" value="" class="">
            <input id="wd_branch" name="wd_branch" type="hidden" value="" class="">
            <input id="wd_bankid" name="wd_branch" type="hidden" value="" class="">
            <input id="wd_type" name="wd_type" style="display:none" type="text" value="bank" class="ng-pristine ng-untouched ng-valid ng-empty">

            <div class="form-horizontal">
                <div class="form-group row">
                    <label class="col-sm-4 control-label text-sm-right">Ngân hàng nhận tiền </label>
                    <div class="col-md-6 col-sm-8">
                        <select class="form-control ng-pristine ng-valid ng-empty ng-touched bankselect" name="bank_id">
                          <option value="-1" class="" selected="selected">Chọn ngân hàng</option>
                                                              </select>

                        <div class="ng-hide">
                            <br><p class="text-primary"> <b class="ng-binding"></b></p>
                            <p>Chủ tài khoản: <b class="ng-binding ctk"></b></p>
                            <p>Số tài khoản: <b class="ng-binding stk"></b></p>
                            <p>Chi Nhánh: <b class="ng-binding cn"></b></p>
                        </div>
                    </div>
                </div>

                <div class="form-group row mb-2">
                    <label class="col-sm-4 control-label text-sm-right">Số tiền yêu cầu rút <code>*</code> </label>
                    <div class="col-md-6 col-sm-8">
                        <input type="number" class="form-control" id="wd_money" name="wd_money" maxlength="10" placeholder="Nhập số tiền yêu cầu rút">
                    </div>
                </div>
                <!--<div class="form-group row mb-2">
                    <label class="control-label text-sm-right">Mã OTP <code>*</code> </label>
                    <div class="" style="position: relative;">
                        <input type="text" class="form-control" style="padding-right: 115px;" name="otp" placeholder="Nhập mã OTP">
                        <button class="btn btn-buy1 btn-outline-secondary send_otp" style="width: 115px;position: absolute;right: 13px;height: 100%;top: 0;border: 0;    line-height: 100%;background: #0dcaf0  ;color: #fff;" type="button">Nhận OTP</button>
                    </div>
                </div>-->

                <div class="form-group row">
                    <div class="col-sm-8 offset-sm-4">
                         <button type="submit" id="ruttien-btn" class="btn main-btn main-btn-lg full-width withdraw-btn">Rút</button>
                    </div>
                </div>
            </div>
        </form>



            </div>
        </div>
    </div>
</div>
</div>
<div class="modal fade" id="ruttien2" tabindex="-1" aria-labelledby="ruttien2" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered modal-dialog-animatezoom">
    <div class="modal-content">
        <div class="container">
            <div class="modal-header">
                <div class="modal-header-title">
                    <i class="flaticon-plus color-blue"></i>
                    <h5 class="modal-title">Rút tiền vào tài khoản</h5>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="form-bank2" class="ng-pristine ng-valid">

            <input id="wd_bankname" name="wd_bankname"  type="hidden" value="" class="">
            <input id="wd_username" name="wd_username" type="hidden" value="" class="">
            <input id="wd_ownname" name="wd_ownname" type="hidden" value="" class="">
            <input id="wd_number" name="wd_number" type="hidden" value="" class="">
            <input id="wd_branch" name="wd_branch" type="hidden" value="" class="">
            <input id="wd_bankid" name="wd_branch" type="hidden" value="" class="">
            <input id="wd_type" name="wd_type" style="display:none" type="text" value="bank" class="ng-pristine ng-untouched ng-valid ng-empty">

            <div class="form-horizontal">
                <div class="form-group row">
                    <label class="col-sm-4 control-label text-sm-right">Ngân hàng nhận tiền </label>
                    <div class="col-md-6 col-sm-8">
                        <select class="form-control ng-pristine ng-valid ng-empty ng-touched bankselect" name="bank_id">
                          <option value="-1" class="" selected="selected">Chọn ngân hàng</option>
                                                              </select>

                        <div class="ng-hide">
                            <br><p class="text-primary"> <b class="ng-binding"></b></p>
                            <p>Chủ tài khoản: <b class="ng-binding ctk"></b></p>
                            <p>Số tài khoản: <b class="ng-binding stk"></b></p>
                            <p>Chi Nhánh: <b class="ng-binding cn"></b></p>
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 control-label text-sm-right">Số tiền yêu cầu rút <code>*</code> </label>
                    <div class="col-md-6 col-sm-8">
                        <input type="number" class="form-control" id="wd_money2" name="wd_money2" maxlength="10" placeholder="Nhập số tiền yêu cầu rút">
                    </div>
                </div>


                <div class="form-group row">
                    <div class="col-sm-8 offset-sm-4">
                         <button type="button" id="ruttien-btn2" class="btn main-btn main-btn-lg full-width withdraw-btn2">Rút</button>
                    </div>
                </div>
            </div>
        </form>



            </div>
        </div>
    </div>
</div>
</div>
<script>
$('#ruttien-btn').click(function(){
    $(this).attr('disabled',true);
    setTimeout(function(){
            $('#ruttien-btn').removeAttr('disabled');
        },2000);

    return false;
});

    $('.bankselect').change(function() {
        var bankid = $(this).val();
        var databank1 =  databank.filter(function(hero) {
            return hero.id == bankid;
        });
        $('.ctk').text(databank1[0].ub_ownname);
        $('.stk').text(databank1[0].ub_number);
        $('.cn').text(databank1[0].ub_branch);

        $('#wd_bankname').val(databank1[0].ub_bankname);
        $('#wd_username').val(databank1[0].ub_name);
        $('#wd_ownname').val(databank1[0].ub_ownname);
        $('#wd_number').val(databank1[0].ub_number);
        $('#wd_branch').val(databank1[0].ub_branch);
        $('#wd_bankid').val(databank1[0].id);
});

</script>
@endsection