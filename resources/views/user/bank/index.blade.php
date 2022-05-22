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
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div>
        </div>
    </div>
@endsection
