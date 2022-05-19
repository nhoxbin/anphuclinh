@extends('layouts.user-new')
@section('content')
<div class="body-content body-content-lg" style="background-image: url({{asset('images/bg.jpg')}})"> <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
    <div class="container"><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<div class="boxbody_tbl ng-scope" ng-app="App" ng-controller="List">
<div class="boxbody_top"><span><h1 class="uppercase">Danh sách đại lý</h1></span></div>
<div class="boxbody_body">
<div class="clear"></div>
<div class="table-responsive text-center">
    <div class="clear"></div>
    <table id="example" class="table table-hover table-bordered dt-responsive nowrap dataTable no-footer dtr-inline" style="width: 100%;" role="grid">
        <thead>
            <tr role="row">
                <th style="border-top: 0;color: #000;border: 1px solid #efefef;" class="sorting_disabled" rowspan="1" colspan="1"><b>STT</b></th>
                <th style="border-top: 0;color: #000;border: 1px solid #efefef;" class="sorting_disabled" rowspan="1" colspan="1"><b>Tên đại lý</b></th>
                <th style="border-top: 0;color: #000;border: 1px solid #efefef;" class="sorting_disabled" rowspan="1" colspan="1"><b>Số điện thoại</b></th>
                <th style="border-top: 0;color: #000;border: 1px solid #efefef;" class="sorting_disabled" rowspan="1" colspan="1"><b>Doanh số</b></th>
            </tr>
        </thead>
        <tbody>
            @foreach($user as $key => $ref)
                <tr role="row">
                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;" class="sorting_disabled" rowspan="1" colspan="1">{{$key+1}}</th>
                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;" class="sorting_disabled" rowspan="1" colspan="1">{{$ref->user->name}}</th>
                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;" class="sorting_disabled" rowspan="1" colspan="1">{{$ref->user->phone}}</th>
                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;" class="sorting_disabled" rowspan="1" colspan="1">Doanh số</th>
                </tr>
                @foreach($ref->refs as $key1 => $ref1)
                    <tr role="row">
                        <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;" class="sorting_disabled" rowspan="1" colspan="1">{{$key+1}}.{{$key1+1}}</th>
                        <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;" class="sorting_disabled" rowspan="1" colspan="1">{{$ref1->user->name}}</th>
                        <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;" class="sorting_disabled" rowspan="1" colspan="1">{{$ref1->user->phone}}</th>
                        <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;" class="sorting_disabled" rowspan="1" colspan="1">Doanh số</th>
                    </tr>
                @endforeach
            @endforeach
        </tbody>
    </table>
    {{$user->links('components.custom-paginate')}}
</div>
</div>
</div>



<div id="addbank" class="modal fade" tabindex="-1">
<div class="modal-dialog modal-lg">
<div class="modal-content">
    <div class="modal-body no-padding" style="height: 450px;">
        <button type="button" class="bootbox-close-button close" data-dismiss="modal" aria-hidden="true" style="margin-top: -10px;">×</button>
        <div class="panel-body">
                        <h1>Tạo mới</h1>
                        <hr />
                        <form action="https://app.anphuclinh.net/user-bank" id="myForm" method="post">

                          <input type="hidden" id="ub_id" name="ub_id">
                        <div class="form-horizontal">
                        <div class="form-group">
                                    <div class="col-sm-3">
                                        <div class="label-wrapper">
                                            <label class="control-label" for="UB_Name">Tên</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-9">
                                        <input class="form-control text-box single-line" id="ub_name" name="ub_name" placeholder="Tên" type="text" value="" required>
                                        <span class="field-validation-valid text-danger" data-valmsg-for="ub_name" data-valmsg-replace="true"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <div class="label-wrapper">
                                            <label class="control-label" for="ub_bankname">Tên ngân hàng</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-9">
                                    <select class="form-control" id="ub_bankname" name="ub_bankname" tabindex="-1" aria-hidden="true" required>
                                        <option value="NGAN HANG TMCP NGOAI THUONG VIET NAM (VIETCOMBANK)">NGAN HANG TMCP NGOAI THUONG VIET NAM (VIETCOMBANK)</option>
                                        <option value="NGAN HANG NONG NGHIEP VA PHAT TRIEN NONG THON (AGRIBANK)">NGAN HANG NONG NGHIEP VA PHAT TRIEN NONG THON (AGRIBANK)</option>
                                        <option value="NGAN HANG TMCP TIEN PHONG (TPBANK)">NGAN HANG TMCP TIEN PHONG (TPBANK)</option>
                                        <option value="NGAN HANG TMCP PHAT TRIEN TP.HCM (HDB)">NGAN HANG TMCP PHAT TRIEN TP.HCM (HDB)</option>
                                        <option value="NGAN HANG TMCP VIET NAM THINH VUONG (VPBANK)">NGAN HANG TMCP VIET NAM THINH VUONG (VPBANK)</option>
                                        <option value="NGAN HANG TMCP DAU KHI TOAN CAU (GPB)">NGAN HANG TMCP DAU KHI TOAN CAU (GPB)</option>
                                        <option value="NGAN HANG TMCP QUAN DOI (MBBANK)">NGAN HANG TMCP QUAN DOI (MBBANK)</option>
                                        <option value="NGAN HANG TMCP DAI DUONG (OCEANBANK)">NGAN HANG TMCP DAI DUONG (OCEANBANK)</option>
                                        <option value="NGAN HANG TNHH MTV HONGLEONG VIET NAM">NGAN HANG TNHH MTV HONGLEONG VIET NAM</option>
                                        <option value="NGAN HANG TMCP BAO VIET (BVB)">NGAN HANG TMCP BAO VIET (BVB)</option>
                                        <option value="NGAN HANG TMCP DAU TU VA PHAT TRIEN VIET NAM (BIDV)">NGAN HANG TMCP DAU TU VA PHAT TRIEN VIET NAM (BIDV)</option>
                                        <option value="NGAN HANG TMCP SAI GON THUONG TIN (SACOMBANK)">NGAN HANG TMCP SAI GON THUONG TIN (SACOMBANK)</option>
                                        <option value="NGAN HANG TMCP BUU DIEN LIEN VIET (LPB)">NGAN HANG TMCP BUU DIEN LIEN VIET (LPB)</option>
                                        <option value="NGAN HANG TNHH INDOVINA">NGAN HANG TNHH INDOVINA</option>
                                        <option value="NGAN HANG TMCP A CHAU (ACB)">NGAN HANG TMCP A CHAU (ACB)</option>
                                        <option value="NGAN HANG TMCP AN BINH (ABBANK)">NGAN HANG TMCP AN BINH (ABBANK)</option>
                                        <option value="NGAN HANG TMCP QUOC DAN (NCB)">NGAN HANG TMCP QUOC DAN (NCB)</option>
                                        <option value="NGAN HANG CONG NGHIEP HAN QUOC (IBK)">NGAN HANG CONG NGHIEP HAN QUOC (IBK)</option>
                                        <option value="NGAN HANG TNHH MTV CIMB (CIMB)">NGAN HANG TNHH MTV CIMB (CIMB)</option>
                                        <option value="NGAN HANG TMCP XUAT NHAP KHAU VIET NAM (EXIMBANK)">NGAN HANG TMCP XUAT NHAP KHAU VIET NAM (EXIMBANK)</option>
                                        <option value="NGAN HANG TMCP DONG NAM A (SEABANK)">NGAN HANG TMCP DONG NAM A (SEABANK)</option>
                                        <option value="NGAN HANG TMCP SAI GON (SCB)">NGAN HANG TMCP SAI GON (SCB)</option>
                                        <option value="NGAN HANG TMCP DONG A (DONGABANK)">NGAN HANG TMCP DONG A (DONGABANK)</option>
                                        <option value="NGAN HANG TMCP VIET A (VAB)">NGAN HANG TMCP VIET A (VAB)</option>
                                        <option value="NGAN HANG TMCP SAI GON CONG THUONG (SAIGONBANK)">NGAN HANG TMCP SAI GON CONG THUONG (SAIGONBANK)</option>
                                        <option value="NGAN HANG TMCP XANG DAU PETROLIMEX (PG BANK)">NGAN HANG TMCP XANG DAU PETROLIMEX (PG BANK)</option>
                                        <option value="NGAN HANG TMCP DAI CHUNG VIET NAM (PVCOMBANK)">NGAN HANG TMCP DAI CHUNG VIET NAM (PVCOMBANK)</option>
                                        <option value="NGAN HANG TMCP KIEN LONG (KIENLONGBANK)">NGAN HANG TMCP KIEN LONG (KIENLONGBANK)</option>
                                        <option value="NGAN HANG TMCP BAN VIET (VIETCAPITAL BANK)">NGAN HANG TMCP BAN VIET (VIETCAPITAL BANK)</option>
                                        <option value="NGAN HANG TNHH MTV PUBLIC VIET NAM (PBVN)">NGAN HANG TNHH MTV PUBLIC VIET NAM (PBVN)</option>
                                        <option value="NGAN HANG TMCP CONG THUONG VIET NAM (VIETINBANK)">NGAN HANG TMCP CONG THUONG VIET NAM (VIETINBANK)</option>
                                        <option value="NGAN HANG TMCP PHUONG DONG (OCB)">NGAN HANG TMCP PHUONG DONG (OCB)</option>
                                        <option value="NGAN HANG TMCP HANG HAI VIET NAM (MSB)">NGAN HANG TMCP HANG HAI VIET NAM (MSB)</option>
                                        <option value="NGAN HANG TMCP SAI GON - HA NOI (SHB)">NGAN HANG TMCP SAI GON - HA NOI (SHB)</option>
                                        <option value="NGAN HANG TMCP VIET NAM THUONG TIN (VIETBANK)">NGAN HANG TMCP VIET NAM THUONG TIN (VIETBANK)</option>
                                        <option value="NGAN HANG LIEN DOANH VIET - NGA (VRB)">NGAN HANG LIEN DOANH VIET - NGA (VRB)</option>
                                        <option value="NGAN HANG TMCP NAM A (NAMABANK)">NGAN HANG TMCP NAM A (NAMABANK)</option>
                                        <option value="NGAN HANG TNHH MTV SHINHAN VIET NAM (SHBVN)">NGAN HANG TNHH MTV SHINHAN VIET NAM (SHBVN)</option>
                                        <option value="NGAN HANG TMCP QUOC TE VIB">NGAN HANG TMCP QUOC TE VIB</option>
                                        <option value="Ngân hàng TMCP Kỹ thương Việt Nam (TECHCOMBANK)">Ngân hàng TMCP Kỹ thương Việt Nam (TECHCOMBANK)</option>
                                        <option value="Ví Điện t">Ví Điện tử</option>
                                    </select>
                                        <span class="field-validation-valid text-danger" data-valmsg-for="ub_bankname" data-valmsg-replace="true"></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <div class="label-wrapper">
                                            <label class="control-label" for="ub_bankownname">Chủ tài khoản</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-9">
                                        <input class="form-control text-box single-line" id="ub_ownname" name="ub_ownname" placeholder="Chủ tài khoản" type="text" value="" required>
                                        <span class="field-validation-valid text-danger" data-valmsg-for="ub_ownname" data-valmsg-replace="true"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <div class="label-wrapper">
                                            <label class="control-label" for="ub_number">Số tài khoản</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-9">
                                        <input class="form-control text-box single-line" data-val="true" id="ub_number" name="ub_number" placeholder="Số tài khoản" type="text" value="" required>
                                        <span class="field-validation-valid text-danger" data-valmsg-for="ub_number" data-valmsg-replace="true"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <div class="label-wrapper">
                                            <label class="control-label" for="ub_branch">Chi nhánh</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-9">
                                        <input class="form-control text-box single-line" data-val="true" id="ub_branch" name="ub_branch" placeholder="Chi nhánh" type="text" value="" required>
                                        <span class="field-validation-valid text-danger" data-valmsg-for="ub_branch" data-valmsg-replace="true"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <button type="submit" class="button taomoi">Tạo mới</button>
                                    </div>
                                </div>
                            </div>
                          </form>
                        </div>
                      </div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div>

    <script type="text/javascript">
(function($){


$(document).ready(function(){

    $('.taomoi').click(function(){
        var username = $('#username').val();
        var ct = $('#chungtu').val();
        var refid = $('#refid').val();
        if(username == ''){
            var msg = 'nhập tên';
            $('#modal_content').text(msg);
            $('#alertModal').modal('show');
            return false;
        }
        if(ct == ''){
            var msg = 'nhập chứng từ';
            $('#modal_content').text(msg);
            $('#alertModal').modal('show');
            return false;
        }
        //var fdata = {};
        //fdata['uname']= username;fdata['ct']= ct;fdata['refid']= refid;
        $.ajax({
            type : "post",
            dataType : "json",
            url : 'https://app.anphuclinh.net/wp-admin/admin-ajax.php?action=addbank',
             data: $('form#myForm').serialize(),
            context: this,
            beforeSend: function(){

            },
            success: function(response) {
                //Làm gì đó khi d liu ã được x lý
                if(response.success) {
                    $('#modal_content').text(response.data);
                    $('#alertModal').modal('show');
                        location.reload();
                }
                else {
                    $('#modal_content').text(response.data);
                    $('#alertModal').modal('show');
                }
            },
            error: function( jqXHR, textStatus, errorThrown ){
                //Lm gì đó khi có li xảy ra
                console.log( 'The following error occured: ' + textStatus, errorThrown );
            }
        })
        return false;
    })




    $('.btn-xoa').click(function(){

        var id = $(this).data("id");
        var data = {
            'id': id
        }
        //var fdata = {};
        //fdata['uname']= username;fdata['ct']= ct;fdata['refid']= refid;
        $.ajax({
            type : "post",
            dataType : "json",
            url : 'https://app.anphuclinh.net/wp-admin/admin-ajax.php?action=removebank',
             data: data,
            context: this,
            beforeSend: function(){

            },
            success: function(response) {
                //Làm gì đó khi d liu ã được x lý
                if(response.success) {
                    $('#modal_content').text(response.data);
                    $('#alertModal').modal('show');
                        location.reload();
                }
                else {
                    $('#modal_content').text(response.data);
                    $('#alertModal').modal('show');
                }
            },
            error: function( jqXHR, textStatus, errorThrown ){
                //Lm gì đó khi có li xảy ra
                console.log( 'The following error occured: ' + textStatus, errorThrown );
            }
        })
        return false;
    })
})
})(jQuery)
</script>
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
@endsection
