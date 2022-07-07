@extends('layouts.admin')
@section('title', ucfirst($is_page).' Transactions')

@section('content')
<div class="page-content">
    <div class="container">
        @include('layouts.messages')
        @include('vendor.notice')
        <div class="card content-area content-area-mh">
            <div class="card-innr">
                <div class="card-head has-aside">
                    <h4 class="card-title">{{ ucfirst($is_page) }} Transactions</h4>
                </div>

                <div class="page-nav-wrap">
                    <div class="page-nav-bar justify-content-between bg-lighter">
                        <div class="page-nav w-100 w-lg-auto">
                            <ul class="nav">
                                <li class="nav-item {{ (request()->route('state') == 'pending' ? 'active' : '') }}"><a class="nav-link" href="{{ route('admin.transactions', 'pending') }}">{{ __('Pending') }}</a></li>
                                <li class="nav-item {{ (request()->route('state') == 'approved' ? 'active' : '') }}"><a class="nav-link" href="{{ route('admin.transactions', 'approved') }}">{{ __('Approved') }}</a></li>
                                <li class="nav-item {{ (empty(request()->route('state')) ? 'active' : '') }}"><a class="nav-link" href="{{ route('admin.transactions') }}">{{ __('All') }}</a></li>
                                <li class="nav-item"><a class="nav-link" href="{{ route('admin.gift_transactions.index', 'pending') }}">{{ __('Gift') }}</a></li>
                            </ul>
                        </div>
                        <div class="search flex-grow-1 pl-lg-4 w-100 w-sm-auto">
                            <form action="{{ route('admin.transactions') }}" method="GET" autocomplete="off">
                                <div class="input-wrap">
                                    <span class="input-icon input-icon-left"><em class="ti ti-search"></em></span>
                                    <input type="search" class="input-solid input-transparent" placeholder="Tranx ID to quick search" value="{{ request()->get('s', '') }}" name="s">
                                </div>
                            </form>
                        </div>
                        <div class="tools w-100 w-sm-auto">
                            <ul class="btn-grp guttar-8px">
                                <li><a href="#" class="btn btn-light btn-sm btn-icon btn-outline bg-white advsearch-opt"> <em class="ti ti-panel"></em> </a></li>
                                @if(is_super_admin())
                                <li>
                                    <div class="relative">
                                        <a href="#" class="btn btn-light bg-white btn-sm btn-icon toggle-tigger btn-outline"><em class="ti ti-server"></em> </a>
                                        <div class="toggle-class dropdown-content dropdown-content-sm dropdown-content-center shadow-soft">
                                            <ul class="dropdown-list">
                                                <li><h6 class="dropdown-title">Export</h6></li>
                                                <li><a href="{{ route('admin.export', array_merge([ 'table' => 'transactions', 'format' => 'entire'], request()->all())) }}">Entire</a></li>
                                                <li><a href="{{ route('admin.export', array_merge([ 'table' => 'transactions', 'format' => 'minimal'], request()->all())) }}">Minimal</a></li>
                                                <li><a href="{{ route('admin.export', array_merge([ 'table' => 'transactions', 'format' => 'compact'], request()->all())) }}">Compact</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                @endif
                                <li>
                                    <div class="relative">
                                        <a href="#" class="btn btn-light bg-white btn-sm btn-icon toggle-tigger btn-outline"><em class="ti ti-settings"></em> </a>
                                        <div class="toggle-class dropdown-content dropdown-content-sm dropdown-content-center shadow-soft">
                                            <form class="update-meta" action="#" data-type="tnx_page_meta">
                                                <ul class="dropdown-list">
                                                    <li><h6 class="dropdown-title">Show</h6></li>
                                                    <li class="active">
                                                        <a href="#" data-meta="perpage=10">10</a></li>
                                                </ul>
                                                <ul class="dropdown-list">
                                                    <li><h6 class="dropdown-title">Order</h6></li>
                                                    <li class="active">
                                                        <a href="#" data-meta="ordered=DESC">DESC</a></li>
                                                </ul>
                                            </form>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="search-adv-wrap hide">
                        <form class="adv-search" id="adv-search" action="{{ route('admin.transactions') }}" method="GET" autocomplete="off">
                            <div class="row align-items-end guttar-20px guttar-vr-15px">
                                <div class="col-lg-6">
                                    <div class="input-grp-wrap">
                                        <span class="input-item-label input-item-label-s2 text-exlight">Advanced Search</span>
                                        <div class="input-grp align-items-center bg-white">
                                            <div class="input-wrap flex-grow-1">
                                                <input value="{{ request()->get('search') }}" class="input-solid input-solid-sm input-transparent" type="text" placeholder="Search by ID" name="search">
                                            </div>
                                            <ul class="search-type">
                                                <li class="input-wrap input-radio-wrap">
                                                    <input name="by" class="input-radio-select" id="advs-by-tnx" value="" type="radio"{{ (empty(request()->by) || request()->by!='usr') ? ' checked' : '' }}>
                                                    <label for="advs-by-tnx">TRANX</label>
                                                </li>
                                                <li class="input-wrap input-radio-wrap">
                                                    <input name="by" class="input-radio-select" id="advs-by-user" value="usr" type="radio"{{ (isset(request()->by) && request()->by=='usr') ? ' checked' : '' }}>
                                                    <label for="advs-by-user">User</label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-sm-4 col-mb-6">
                                    <div class="input-wrap input-with-label">
                                        <label class="input-item-label input-item-label-s2 text-exlight">Tranx Type</label>
                                        <select  name="type" class="select select-sm select-block select-bordered" data-dd-class="search-off">
                                            <option value="">Any Type</option>
                                            <option {{ request()->get('type') == 'purchase' ? 'selected' : '' }} value="purchase">Purchase</option>
                                            <option {{ request()->get('type') == 'bonus' ? 'selected' : '' }} value="bonus">Bonus</option>
                                            <option {{ request()->get('type') == 'referral' ? 'selected' : '' }} value="referral">Referral</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-sm-4 col-mb-6">
                                    <div class="input-wrap input-with-label">
                                        <label class="input-item-label input-item-label-s2 text-exlight">Status</label>
                                        <select name="state" class="select select-sm select-block select-bordered" data-dd-class="search-off">
                                            <option value="">Show All</option>
                                            <option {{ request()->get('state') == 'pending' ? 'selected' : '' }} value="pending">Pending</option>
                                            <option {{ request()->get('state') == 'approved' ? 'selected' : '' }} value="approved">Approved</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-lg-2 col-mb-6">
                                    <div class="input-wrap input-with-label">
                                        <label class="input-item-label input-item-label-s2 text-exlight">Date Within</label>
                                        <select name="date" class="select select-sm select-block select-bordered date-opt" data-dd-class="search-off">
                                            <option value="">All Time</option>
                                            <option {{ request()->get('date') == 'today' ? 'selected' : '' }} value="today">Today</option>
                                            <option {{ request()->get('date') == 'this-month' ? 'selected' : '' }} value="this-month">This Month</option>
                                            <option {{ request()->get('date') == 'last-month' ? 'selected' : '' }} value="last-month">Last Month</option>
                                            <option {{ request()->get('date') == '90day' ? 'selected' : '' }} value="90day">Last 90 Days</option>
                                            <option {{ request()->get('date') == 'custom' ? 'selected' : '' }} value="custom">Custom Range</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-lg-2 col-mb-6 date-hide-show">
                                    <div class="input-wrap input-with-label">
                                        <label class="input-item-label input-item-label-s2 text-exlight">From</label>
                                        <div class="relative">
                                            <input class="input-bordered input-solid-sm date-picker bg-white" value="{{ (request()->get('date') == 'custom') ? request()->get('from') : '' }}" type="text" id="date-from" name="from" data-format="alt">
                                            <span class="input-icon input-icon-right date-picker-icon"><em class="ti ti-calendar"></em></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-lg-2 col-mb-6 date-hide-show">
                                    <div class="input-wrap input-with-label">
                                        <label class="input-item-label input-item-label-s2 text-exlight">To</label>
                                        <div class="relative">
                                            <input class="input-bordered input-solid-sm date-picker bg-white" value="{{ (request()->get('date') == 'custom') ? request()->get('to') : '' }}" type="text" id="date-to" name="to" data-format="alt">
                                            <span class="input-icon input-icon-right date-picker-icon"><em class="ti ti-calendar"></em></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-lg-2 col-mb-6">
                                    <div class="input-wrap">
                                        <input type="hidden" name="filter" value="1">
                                        <button class="btn btn-sm btn-sm-s2 btn-auto btn-primary">
                                            <em class="ti ti-search width-auto"></em><span>Search</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>

                    @if (request()->get('filter') || request()->s)
                    <div class="search-adv-result">
                        <div class="search-info">
                            Found <span class="search-count">{{ $trnxs->total() }}</span> Transactions{{ (request()->get('date') != 'custom') ? '.' : '' }}
                            @if (request()->get('date') == 'custom')
                            between <span>{{ _date(request()->get('from'), '', true) }}</span> to <span>{{ _date(request()->get('to'), '', true) }}</span>.
                            @endif
                        </div>
                        <ul class="search-opt">
                            @if(request()->get('search'))
                            <li><a href="{{ qs_url(qs_filter('search')) }}">Search <span>'{{ request()->get('search') }}'</span>{{ (request()->by=='usr') ? ' (User)' : '' }}</a></li>
                            @endif

                            @if(request()->get('type'))
                                <li><a href="{{ qs_url( qs_filter('type')) }}">Type: <span>{{ ucfirst(request()->get('type')) }}</span></a></li>
                            @endif

                            @if(request()->get('state'))
                                <li><a href="{{ qs_url( qs_filter('state')) }}">Status: <span>{{ ucfirst(request()->get('state')) }}</span></a></li>
                            @endif

                            @if(request()->get('stg'))
                                <li><a href="{{ qs_url( qs_filter('stg')) }}">Stage: <span>{{ ucfirst(request()->get('stg')) }}</span></a></li>
                            @endif

                            @if(request()->get('pmg'))
                                <li><a href="{{ qs_url( qs_filter('pmg')) }}">Pay Method: <span>{{ ucfirst(request()->get('pmg')) }}</span></a></li>
                            @endif

                            @if(request()->get('pmc'))
                                <li><a href="{{ qs_url( qs_filter('pmc')) }}">Currency: <span>{{ strtoupper(request()->get('pmc')) }}</span></a></li>
                            @endif

                            @if (request()->get('date') == 'today')
                                <li><a href="{{ qs_url( qs_filter('date')) }}">In today</span></a></li>
                            @endif

                            @if (request()->get('date') == 'this-month')
                                <li><a href="{{ qs_url( qs_filter('date')) }}"><span>In this month</span></a></li>
                            @endif

                            @if (request()->get('date') == 'last-month')
                                <li><a href="{{ qs_url( qs_filter('date')) }}"><span>In last month</span></a></li>
                            @endif

                            @if (request()->get('date') == '90day')
                                <li><a href="{{ qs_url( qs_filter('date')) }}"><span>In last 90 days</span></a></li>
                            @endif
                            <li><a href="{{ route('admin.transactions') }}" class="link link-underline">Clear All</a></li>
                        </ul>
                    </div>
                    @endif
                </div>

                @if($trnxs->total() > 0)
                <table class="data-table admin-tnx">
                    <thead>
                        <tr class="data-item data-head">
                            <th class="data-col tnx-status dt-tnxno">{{ __('Tranx ID') }}</th>
                            <th class="data-col dt-name">{{ __('Name') }}</th>
                            <th class="data-col dt-product-type">{{ __('Product Type') }}</th>
                            <th class="data-col dt-amount">{{ __('Amount') }}</th>
                            {{-- <th class="data-col dt-type tnx-type">{{ __('Type') }}</th> --}}
                            <th class="data-col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($trnxs as $trnx)
                        @php
                            $status = !$trnx->confirmed ? 'pending' : 'approved';
                            $text_danger = ( $status == 'pending') ? ' text-danger' : '';
                        @endphp
                        <tr class="data-item" id="tnx-item-{{ $trnx->id }}">
                            <td class="data-col dt-tnxno">
                                <div class="d-flex align-items-center">
                                    <div id="ds-{{ $trnx->id }}" data-toggle="tooltip" data-placement="top" title="{{ __status($status, 'text') }}" class="data-state data-state-{{ __status($status, 'icon') }}">
                                        <span class="d-none">{{ ucfirst($status) }}</span>
                                    </div>
                                    <div class="fake-class">
                                        <span class="lead tnx-id">{{ $trnx->id }}</span>
                                        <span class="sub sub-date">{{ _date($trnx->updated_at) }}</span>
                                    </div>
                                </div>
                            </td>
                            <td class="data-col dt-name">
                                <span class="lead amount-pay{{ $text_danger }}">{{ $trnx->payable->name }}</span>
                                <span class="sub sub-symbol">{{ $trnx->payable->phone }}</span>
                            </td>
                            <td class="data-col dt-product-type">
                                @if ($trnx->type == 'withdraw' && $trnx->meta['type'] == 'withdraw')
                                    @php
                                        $type = App\Models\UserBank::find($trnx->meta['ubank_id']);
                                    @endphp
                                    <span class="lead token-amount{{ $text_danger }}">{{ $type->user->name }}</span>
                                    <span class="sub sub-symbol">{!! 'Bank: ' . $type->bank->name . "<br /> Chủ tk: " . $type->host . ', STK: ' . $type->number . ', Chi nhánh: ' . $type->branch !!}</span>
                                @else
                                    @php
                                    $type = null;
                                    if ($trnx->meta['type'] == 'combo' || $trnx->meta['type'] == 'reorder') {
                                        $type = App\Models\Product::find($trnx->meta['product_id']);
                                    } elseif ($trnx->meta['type'] == 'package') {
                                        $type = App\Models\Package::find($trnx->meta['package_id']);
                                    } elseif ($trnx->meta['type'] == 'bonus') {
                                        $product_id = App\Models\Transaction::find($trnx->meta['transaction_id'])->meta['product_id'];
                                        $type = App\Models\Product::find($product_id);
                                    } elseif ($trnx->meta['type'] == 'income') {
                                        $type = App\Models\Level::find($trnx->meta['level']);
                                    }

                                    @endphp
                                    <span class="lead token-amount{{ $text_danger }}">{!! $type->name ?? $trnx->meta['title'] . '<sup>đ</sup>' !!}</span>
                                    @if ($trnx->meta['type'] != 'bonus')
                                    <span class="sub sub-symbol">{{ __('Quantity') . ': ' . ($trnx->meta['qty'] ?? 1) . (isset($trnx->meta['address']) ? ', Địa chỉ: ' . $trnx->meta['address'] : null) }}</span>
                                    @endif
                                @endif
                            </td>
                            <td class="data-col dt-amount">
                                <span class="lead amount-pay{{ $text_danger }}">{{ number_format($trnx->amount) }}<sup>đ</sup></span>
                                <span class="sub sub-symbol">{{ __(ucfirst($trnx->meta['status'] == 'refunded' ? $trnx->meta['status'] : $trnx->meta['type'])) }}</span>
                            </td>
                            {{-- <td class="data-col dt-account">
                                <span class="sub sub-s2 pay-with">
                                    @if ($trnx->tnx_type=='bonus' && $trnx->added_by!=set_added_by('0'))
                                        {{ 'Added by '.transaction_by($trnx->added_by) }}
                                    @elseif($trnx->tnx_type == 'refund')
                                        {{ $trnx->details }}
                                    @elseif($trnx->tnx_type == 'transfer')
                                        {{ $trnx->details }}
                                    @else
                                        {{ (is_gateway($trnx->payment_method, 'internal') ? gateway_type($trnx->payment_method, 'name') : ( (is_gateway($trnx->payment_method, 'online') || $trnx->payment_method=='bank') ? 'Pay via '.ucfirst($trnx->payment_method) : 'Pay with '.strtoupper($trnx->currency) ) ) }}
                                    @endif
                                    @if ($trnx->meta['type'] != 'bonus')
                                        <em class="fas fa-info-circle" data-toggle="tooltip" data-placement="bottom" title="{{ $trnx->wallet_address }}"></em>
                                    @endif
                                </span>
                                @if($trnx->tnx_type == 'refund')
                                    @php
                                    $extra = (is_json($trnx->extra, true) ?? $trnx->extra);
                                    @endphp
                                    <span class="sub sub-email"><a href="{{ route('admin.transactions.view', ($extra->trnx ?? $trnx->id)) }}">View Transaction</a></span>
                                @else
                                    <span class="sub sub-email">{{ set_id($trnx->user) }} <em class="fas fa-info-circle" data-toggle="tooltip" data-placement="bottom" title="{{ isset($trnx->tnxUser) ? explode_user_for_demo($trnx->tnxUser->email, auth()->user()->type) : '' }}"></em></span>
                                @endif
                            </td> --}}
                            {{-- <td class="data-col data-type">
                                <span class="dt-type-md badge badge-outline badge-md badge-{{$trnx->id}} badge-{{__status($trnx->tnx_type,'status')}}">{{ ucfirst($trnx->tnx_type) }}</span>
                                <span class="dt-type-sm badge badge-sq badge-outline badge-md badge-{{$trnx->id}} badge-{{__status($trnx->tnx_type,'status')}}">{{ ucfirst(substr($trnx->tnx_type, 0, 1)) }}</span>
                            </td> --}}
                            <td class="data-col text-right">
                                <div class="relative d-inline-block">
                                    <a href="#" class="btn btn-light-alt btn-xs btn-icon toggle-tigger"><em class="ti ti-more-alt"></em></a>
                                    <div class="toggle-class dropdown-content dropdown-content-top-left">
                                        <ul id="more-menu-{{ $trnx->id }}" class="dropdown-list">
                                            <li><a href="{{ route('admin.transactions.view', $trnx->id) }}">
                                                <em class="ti ti-eye"></em> View Details</a></li>
                                            @if (!$trnx->confirmed)
                                                <li><a href="javascript:void(0)" class="tnx-transfer-action" data-status="approved" data-tnx_id="{{ $trnx->id }}">
                                                    <em class="far fa-check-square"></em> {{ __('Approve') }}</a></li>
                                                <li><a href="javascript:void(0)" class="tnx-transfer-action" data-status="rejected" data-tnx_id="{{ $trnx->id }}">
                                                    <em class="fas fa-ban"></em> {{ __('Reject') }}</a></li>
                                            @else
                                                @if ($trnx->meta['status'] == 'purchased')
                                                <li><a href="javascript:void(0)" class="tnx-action" data-type="refund" data-id="{{ $trnx->id }}">
                                                    <em class="fas fa-reply"></em> {{ __('Refund') }}</a></li>
                                                @endif
                                                <li><a href="javascript:void(0)" class="tnx-action" data-type="delete" data-id="{{ $trnx->id }}">
                                                    <em class="far fa-check-square"></em> {{ __('Delete') }}</a></li>
                                            @endif
                                            {{-- @if($trnx->status == 'pending' || $trnx->status == 'onhold')
                                                @if($trnx->payment_method == 'bank' || $trnx->payment_method == 'manual')
                                                <li><a href="javascript:void(0)" id="adjust_token" data-id="{{ $trnx->id }}">
                                                    <em class="far fa-check-square"></em>Approve</a></li>
                                                @endif
                                                @if($trnx->tnx_type != 'transfer')
                                                <li id="canceled"><a href="javascript:void(0)" class="tnx-action" data-type="canceled" data-id="{{ $trnx->id }}">
                                                    <em class="fas fa-ban"></em>Cancel</a></li>
                                                @endif
                                            @endif
                                            @if($trnx->status == 'canceled')
                                                @if( !empty($trnx->checked_by) && ($trnx->payment_method == 'bank' || $trnx->payment_method == 'manual'))
                                                <li><a href="javascript:void(0)" id="adjust_token" data-id="{{ $trnx->id }}">
                                                    <em class="far fa-check-square"></em>Approve</a></li>
                                                @endif
                                            @endif --}}
                                            {{-- @if( !empty($trnx->checked_by) && ($trnx->payment_method == 'bank' || $trnx->payment_method == 'manual'))
                                            <li><a href="javascript:void(0)" id="adjust_token" data-id="{{ $trnx->id }}">
                                                <em class="far fa-check-square"></em>Delete</a></li>
                                            @endif --}}
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>{{-- .data-item --}}
                        @endforeach
                    </tbody>
                </table>
                @else
                    <div class="bg-light text-center rounded pdt-5x pdb-5x">
                        <p><em class="ti ti-server fs-24"></em><br>{{ ($is_page=='all') ? __('No transaction found!') : 'No '.$is_page.' transaction here!' }}</p>
                        <p><a class="btn btn-primary btn-auto" href="{{ route('admin.transactions') }}">{{ __('View All Transactions') }}</a></p>
                    </div>
                @endif

                @if ($pagi->hasPages())
                <div class="pagination-bar">
                    <div class="d-flex flex-wrap justify-content-between guttar-vr-20px guttar-20px">
                        <div class="fake-class">
                            <ul class="btn-grp guttar-10px pagination-btn">
                                @if($pagi->previousPageUrl())
                                <li><a href="{{ $pagi->previousPageUrl() }}" class="btn ucap btn-auto btn-sm btn-light-alt">Prev</a></li>
                                @endif
                                @if($pagi->nextPageUrl())
                                <li><a href="{{ $pagi->nextPageUrl() }}" class="btn ucap btn-auto btn-sm btn-light-alt">Next</a></li>
                                @endif
                            </ul>
                        </div>
                        <div class="fake-class">
                            <div class="pagination-info guttar-10px justify-content-sm-end justify-content-mb-end">
                                <div class="pagination-info-text ucap">Page </div>
                                <div class="input-wrap w-80px">
                                    <select class="select select-xs select-bordered goto-page" data-dd-class="search-{{ ($pagi->lastPage() > 7) ? 'on' : 'off' }}">
                                        @for ($i = 1; $i <= $pagi->lastPage(); $i++)
                                        <option value="{{ $pagi->url($i) }}"{{ ($pagi->currentPage() ==$i) ? ' selected' : '' }}>{{ $i }}</option>
                                        @endfor
                                    </select>
                                </div>
                            <div class="pagination-info-text ucap">of {{ $pagi->lastPage() }}</div>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
            </div>{{-- .card-innr --}}
        </div>{{-- .card --}}
    </div>{{-- .container --}}
</div>{{-- .page-content --}}
@endsection
