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
                        <div class="search flex-grow-1 pl-lg-4 w-100 w-sm-auto">
                            <form action="{{ route('admin.posts.index') }}" method="GET" autocomplete="off">
                                <div class="input-wrap">
                                    <span class="input-icon input-icon-left"><em class="ti ti-search"></em></span>
                                    <input type="search" class="input-solid input-transparent" placeholder="Tranx ID to quick search" value="{{ request()->get('s', '') }}" name="s">
                                </div>
                            </form>
                        </div>
                        <div class="tools w-100 w-sm-auto">
                            <ul class="btn-grp guttar-8px">
                                <li><a href="#" class="btn btn-light btn-sm btn-icon btn-outline bg-white advsearch-opt"> <em class="ti ti-panel"></em> </a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                @if($trnxs->total() > 0)
                <table class="data-table admin-tnx">
                    <thead>
                        <tr class="data-item data-head">
                            <th class="data-col tnx-status dt-tnxno">{{ __('Tranx ID') }}</th>
                            <th class="data-col dt-name">{{ __('Name') }}</th>
                            <th class="data-col dt-product-type">{{ __('Product Type') }}</th>
                            <th class="data-col dt-amount">{{ __('Amount') }}</th>
                            <th class="data-col dt-type tnx-type">{{ __('Type') }}</th>
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
                                @if ($trnx->type == 'withdraw')
                                    @php
                                        $type = App\Models\UserBank::find($trnx->meta['ubank_id']);
                                    @endphp
                                    <span class="lead token-amount{{ $text_danger }}">{{ $type->user->name }}</span>
                                    <span class="sub sub-symbol">{!! 'Bank: ' . $type->bank->name . "<br /> Chủ tk: " . $type->host . ', STK: ' . $type->number . ', Chi nhánh: ' . $type->branch !!}</span>
                                @else
                                    @php
                                    $type = null;
                                    if ($trnx->meta['type'] == 'purchase') {
                                        if (isset($trnx->meta['product_id'])) {
                                            $type = App\Models\Product::find($trnx->meta['product_id']);
                                        } elseif (isset($trnx->meta['package_id'])) {
                                            $type = App\Models\Package::find($trnx->meta['package_id']);
                                        }
                                    } elseif ($trnx->meta['type'] == 'bonus') {
                                        $product_id = App\Models\Transaction::find($trnx->meta['transaction_id'])->meta['product_id'];
                                        $type = App\Models\Product::find($product_id);
                                    }
                                    @endphp
                                    <span class="lead token-amount{{ $text_danger }}">{{ $type->name }}</span>
                                    @if ($trnx->meta['type'] != 'bonus')
                                    <span class="sub sub-symbol">{{ __('Quantity') . ': ' . $trnx->meta['qty'] }}</span>
                                    @endif
                                @endif
                            </td>
                            <td class="data-col dt-amount">
                                <span class="lead amount-pay{{ $text_danger }}">{{ number_format($trnx->amount) }}<sup>đ</sup></span>
                                @if ($trnx->type != 'withdraw')
                                <span class="sub sub-symbol">{{ isset($trnx->meta['status']) ? __($trnx->meta['status']) : ($trnx->meta['type'] == 'bonus' ? __('Bonus') : __('Purchase')) }}</span>
                                @endif
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
                            <td class="data-col data-type">
                                <span class="dt-type-md badge badge-outline badge-md badge-{{$trnx->id}} badge-{{__status($trnx->tnx_type,'status')}}">{{ ucfirst($trnx->tnx_type) }}</span>
                                <span class="dt-type-sm badge badge-sq badge-outline badge-md badge-{{$trnx->id}} badge-{{__status($trnx->tnx_type,'status')}}">{{ ucfirst(substr($trnx->tnx_type, 0, 1)) }}</span>
                            </td>
                            <td class="data-col text-right">
                                <div class="relative d-inline-block">
                                    <a href="#" class="btn btn-light-alt btn-xs btn-icon toggle-tigger"><em class="ti ti-more-alt"></em></a>
                                    <div class="toggle-class dropdown-content dropdown-content-top-left">
                                        <ul id="more-menu-{{ $trnx->id }}" class="dropdown-list">
                                            {{-- <li><a href="{{ route('admin.transactions.view', $trnx->id) }}">
                                                <em class="ti ti-eye"></em> View Details</a></li> --}}
                                            @if (!$trnx->confirmed)
                                                <li><a href="javascript:void(0)" class="tnx-transfer-action" data-status="approved" data-tnx_id="{{ $trnx->id }}">
                                                    <em class="far fa-check-square"></em> {{ __('Approve') }}</a></li>
                                                <li><a href="javascript:void(0)" class="tnx-transfer-action" data-status="rejected" data-tnx_id="{{ $trnx->id }}">
                                                    <em class="fas fa-ban"></em> {{ __('Reject') }}</a></li>
                                            @else
                                                @if (!isset($trnx->meta['status']))
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
            </div>
        </div>
    </div>
</div>
@endsection
