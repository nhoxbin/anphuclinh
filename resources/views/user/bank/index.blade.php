@extends('layouts.user-new')
@section('content')
    <div class="body-content body-content-lg">
        <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
        <div class="container">
            {{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> --}}
            {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> --}}
            {{-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> --}}
            <div class="boxbody_tbl ng-scope" ng-app="App" ng-controller="List">
                <div class="boxbody_top">
                    <span>
                        <h1 class="uppercase">Thêm khoản ngân hàng</h1>
                    </span>
                </div>
                <div class="boxbody_body">
                    <button class="button pull-right" data-toggle="modal" data-target="#addbank" style="margin-bottom:10px;">
                        <i class="fa fa-plus"></i> Thêm mới
                    </button>
                    <div class="clear"></div>
                    <div class="table-responsive">
                        <div class="clear"></div>
                        <table id="example"
                            class="table table-hover table-bordered dt-responsive nowrap dataTable no-footer dtr-inline"
                            style="width: 100%;" role="grid">
                            <thead>
                                <tr role="row">
                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1">
                                        <b>Id</b>
                                    </th>
                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1"><b>Tên</b></th>
                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1"><b>Tên ngân hàng</b></th>
                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1"><b>Chủ tài khoản</b></th>
                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1"><b>Số tài khoản</b></th>
                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1"><b>Chi nhánh</b></th>

                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1"><b>Action</b></th>
                                </tr>

                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div id="addbank" class="modal fade" tabindex="-1">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content" style="height: 500px">
                        <div class="modal-body no-padding" style="overflow:unset">
                            <button type="button" class="bootbox-close-button close" data-dismiss="modal" aria-hidden="true"
                                style="margin-top: -10px;">×</button>
                            <div class="panel-body">
                                <h1>Tạo mới</h1>
                                <hr />
                                <form action="{{ route('user.banks.store') }}" id="myForm" method="post">

                                    <input type="hidden" id="ub_id" name="ub_id">
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-sm-3">
                                                <div class="label-wrapper">
                                                    <label class="control-label" for="UB_Name">Tên</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-9">
                                                <input class="form-control text-box single-line" id="ub_name" name="alias"
                                                    placeholder="Tên" type="text" value="" required>
                                                <span class="field-validation-valid text-danger" data-valmsg-for="ub_name"
                                                    data-valmsg-replace="true"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-3">
                                                <div class="label-wrapper">
                                                    <label class="control-label" for="ub_bankname">Tên ngân hàng</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-9">
                                                <select class="form-control" id="ub_bankname" name="bank_id" tabindex="-1"
                                                    aria-hidden="true" required>
                                                    @foreach ($banks as $bank)
                                                        <option value="{{ $bank->id }}">{{ $bank->name }}</option>
                                                    @endforeach
                                                </select>
                                                <span class="field-validation-valid text-danger"
                                                    data-valmsg-for="ub_bankname" data-valmsg-replace="true"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-sm-3">
                                                <div class="label-wrapper">
                                                    <label class="control-label" for="ub_bankownname">Chủ tài khoản</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-9">
                                                <input class="form-control text-box single-line" id="ub_ownname" name="host"
                                                    placeholder="Chủ tài khoản" type="text" value="" required>
                                                <span class="field-validation-valid text-danger"
                                                    data-valmsg-for="ub_ownname" data-valmsg-replace="true"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-3">
                                                <div class="label-wrapper">
                                                    <label class="control-label" for="ub_number">Số tài khoản</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-9">
                                                <input class="form-control text-box single-line" data-val="true"
                                                    id="ub_number" name="number" placeholder="Số tài khoản" type="text"
                                                    value="" required>
                                                <span class="field-validation-valid text-danger" data-valmsg-for="ub_number"
                                                    data-valmsg-replace="true"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-3">
                                                <div class="label-wrapper">
                                                    <label class="control-label" for="ub_branch">Chi nhánh</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-9">
                                                <input class="form-control text-box single-line" data-val="true"
                                                    id="ub_branch" name="branch" placeholder="Chi nhánh" type="text"
                                                    value="" required>
                                                <span class="field-validation-valid text-danger" data-valmsg-for="ub_branch"
                                                    data-valmsg-replace="true"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-3 col-sm-9">
                                                <button type="submit" class="button taomoi btn btn-success">Tạo mới</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
<<<<<<< HEAD
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div>
        </div>
    </div>
@endsection
=======
                          </form>
                        </div>
                      </div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div>

    <script type="text/javascript">
// (function($){


// $(document).ready(function(){

//     $('.taomoi').click(function(){
//         var username = $('#username').val();
//         var ct = $('#chungtu').val();
//         var refid = $('#refid').val();
//         if(username == ''){
//             var msg = 'nhập tên';
//             $('#modal_content').text(msg);
//             $('#alertModal').modal('show');
//             return false;
//         }
//         if(ct == ''){
//             var msg = 'nhập chứng từ';
//             $('#modal_content').text(msg);
//             $('#alertModal').modal('show');
//             return false;
//         }
//         //var fdata = {};
//         //fdata['uname']= username;fdata['ct']= ct;fdata['refid']= refid;
//         $.ajax({
//             type : "post",
//             dataType : "json",
//             url : 'https://app.anphuclinh.net/wp-admin/admin-ajax.php?action=addbank',
//              data: $('form#myForm').serialize(),
//             context: this,
//             beforeSend: function(){

//             },
//             success: function(response) {
//                 //Làm gì đó khi d liu ã được x lý
//                 if(response.success) {
//                     $('#modal_content').text(response.data);
//                     $('#alertModal').modal('show');
//                         location.reload();
//                 }
//                 else {
//                     $('#modal_content').text(response.data);
//                     $('#alertModal').modal('show');
//                 }
//             },
//             error: function( jqXHR, textStatus, errorThrown ){
//                 //Lm gì đó khi có li xảy ra
//                 console.log( 'The following error occured: ' + textStatus, errorThrown );
//             }
//         })
//         return false;
//     })




//     $('.btn-xoa').click(function(){

//         var id = $(this).data("id");
//         var data = {
//             'id': id
//         }
//         //var fdata = {};
//         //fdata['uname']= username;fdata['ct']= ct;fdata['refid']= refid;
//         $.ajax({
//             type : "post",
//             dataType : "json",
//             url : 'https://app.anphuclinh.net/wp-admin/admin-ajax.php?action=removebank',
//              data: data,
//             context: this,
//             beforeSend: function(){

//             },
//             success: function(response) {
//                 //Làm gì đó khi d liu ã được x lý
//                 if(response.success) {
//                     $('#modal_content').text(response.data);
//                     $('#alertModal').modal('show');
//                         location.reload();
//                 }
//                 else {
//                     $('#modal_content').text(response.data);
//                     $('#alertModal').modal('show');
//                 }
//             },
//             error: function( jqXHR, textStatus, errorThrown ){
//                 //Lm gì đó khi có li xảy ra
//                 console.log( 'The following error occured: ' + textStatus, errorThrown );
//             }
//         })
//         return false;
//     })
// })
// })(jQuery)
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
{{-- <script type="text/javascript">
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
    <div class="modal-dialog modal-dialog-centered modal-dialog-animatezoom" style="left:0">
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
</div>     --}}
@endsection
>>>>>>> a0840ff831bd6865cdb2c1f3adc17e93b55b0f8c
