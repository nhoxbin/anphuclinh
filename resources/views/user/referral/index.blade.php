@extends('layouts.user-new')
@section('content')
    <div class="body-content body-content-lg" style="background-image: url({{ asset('images/bg.jpg') }})">
        <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
        <div class="container">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
            <div class="boxbody_tbl ng-scope" ng-app="App" ng-controller="List">
                <div class="boxbody_top"><span>
                        <h1 class="uppercase">Danh sách đại lý</h1>
                    </span></div>
                <div class="boxbody_body">
                    <div class="clear"></div>
                    <div class="table-responsive text-center">
                        <div class="clear"></div>
                        <table id="example"
                            class="table table-hover table-bordered dt-responsive nowrap dataTable no-footer dtr-inline"
                            style="width: 100%;" role="grid">
                            <thead>
                                <tr role="row">
                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1"><b>STT</b></th>
                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1"><b>Tên đại lý</b></th>
                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1"><b>Số điện thoại</b></th>
                                    <th style="border-top: 0;color: #000;border: 1px solid #efefef;"
                                        class="sorting_disabled" rowspan="1" colspan="1"><b>Doanh số</b></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($user as $key => $ref)
                                    <tr role="row">
                                        <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;"
                                            class="sorting_disabled" rowspan="1" colspan="1">{{ $key + 1 }}</th>
                                        <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;"
                                            class="sorting_disabled" rowspan="1" colspan="1">{{ $ref->user->name }}</th>
                                        <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;"
                                            class="sorting_disabled" rowspan="1" colspan="1">{{ $ref->user->phone }}</th>
                                        <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;"
                                            class="sorting_disabled" rowspan="1" colspan="1">Doanh số</th>
                                    </tr>
                                    @foreach ($ref->refs as $key1 => $ref1)
                                        <tr role="row">
                                            <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;"
                                                class="sorting_disabled" rowspan="1" colspan="1">
                                                {{ $key + 1 }}.{{ $key1 + 1 }}</th>
                                            <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;"
                                                class="sorting_disabled" rowspan="1" colspan="1">{{ $ref1->user->name }}
                                            </th>
                                            <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;"
                                                class="sorting_disabled" rowspan="1" colspan="1">{{ $ref1->user->phone }}
                                            </th>
                                            <th style="border-top: 0;color: #000;border: 1px solid #efefef;font-weight:unset;"
                                                class="sorting_disabled" rowspan="1" colspan="1">Doanh số</th>
                                        </tr>
                                    @endforeach
                                @endforeach
                            </tbody>
                        </table>
                        {{ $user->links('components.custom-paginate') }}
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- Body-content -->
@endsection
