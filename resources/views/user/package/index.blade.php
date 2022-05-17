@extends('layouts.user-new')
@section('content')
<div class="body-content body-content-lg"> <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
    <div class="container"><img src="https://app.anphuclinh.net/wp-content/themes/apl/images/goidautu/500.png">

<h4 style="padding: 10px;text-align: center;">THÔNG TIN GÓI ĐẦU TƯ</h4>
<table>
<tbody>
<tr>
<td>Giá CP hiện tại</td>
<td>2,778</td>
</tr>

<tr>
<td>Tổng CP nhận được</td>
<td>179,986</td>
</tr>

<tr>
<td>Tổng giá trị</td>
<td>500,000,000</td>
</tr>

</tbody>
</table>

<a href="/mua-goi-dau-tu?id=2&action=confirm" class="btn btn-primary btn-lg" style="text-align: center;margin: auto;display: block;">MUA GÓI ĐẦU TƯ NÀY</a>
<style>
table {
font-family: Arial, Helvetica, sans-serif;
border-collapse: collapse;
width: 100%;
}

table td, table th {
border: 1px solid #f8e748;
padding: 8px;
}

table tr:nth-child(even){background-color: #fffaa0;}
table tr:nth-child(odd){background-color: #fffbb6;}

table tr:hover {background-color: #ddd;}

table th {
padding-top: 12px;
padding-bottom: 12px;
text-align: left;
background-color: #04AA6D;
color: white;
}
</style>
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
            <div class="navbar-content-item" data-bs-toggle="modal" data-bs-target="#ruttien">
                <a href="#">
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