@extends('layouts.user')
@section('title', __('User Transactions'))

@push('header')
<script type="text/javascript">
    var view_transaction_url = "{{ route('user.ajax.transactions.view') }}";
</script>
@endpush

@section('content')
@include('layouts.messages')
<div class="card content-area content-area-mh">
    <div class="card-innr">
        <div class="card-head">
            <h4 class="card-title">{{__('Transactions list')}}</h4>
        </div>
        <div class="page-nav-wrap">
            <div class="page-nav-bar justify-content-between bg-lighter">
                <div class="page-nav w-100 w-lg-auto">
                    <ul class="nav">
                        <li class="nav-item {{ (\Route::currentRouteName() == 'user.transactions' ? 'active' : '') }}""><a class="nav-link" href="{{ route('user.transactions') }}">{{ __('Transactions') }}</a></li>
                        <li class="nav-item {{ (\Route::currentRouteName() == 'user.gift_transactions' ? 'active' : '') }}""><a class="nav-link" href="{{ route('user.gift_transactions') }}">{{ __('Gift Transactions') }}</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="gaps-1x"></div>
        <div class="row">
            <div class="col-md-12">
                <div class="float-right position-relative">
                    <a href="#" class="btn btn-light-alt btn-xs dt-filter-text btn-icon toggle-tigger"> <em class="ti ti-settings"></em> </a>
                    <div class="toggle-class toggle-datatable-filter dropdown-content dropdown-dt-filter-text dropdown-content-top-left text-left">
                        <ul class="dropdown-list dropdown-list-s2">
                            <li><h6 class="dropdown-title">{{ __('Types') }}</h6></li>
                            <li>
                                <input class="data-filter input-checkbox input-checkbox-sm" type="radio" name="tnx-type" id="type-all" checked value="">
                                <label for="type-all">{{ __('Any Type') }}</label>
                            </li>
                            <li>
                                <input class="data-filter input-checkbox input-checkbox-sm" type="radio" name="tnx-type" id="type-purchase" value="Purchase">
                                <label for="type-purchase">{{ __('Purchase') }}</label>
                            </li>
                            {{-- @foreach($has_trnxs as $name => $has)
                            @if($has==1)
                            <li>
                                <input class="data-filter input-checkbox input-checkbox-sm" type="radio" name="tnx-type" id="type-{{ $name }}" value="{{ ucfirst($name) }}">
                                <label for="type-{{ $name }}">{{ ucfirst($name) }}</label>
                            </li>
                            @endif
                            @endforeach --}}
                        </ul>
                        <ul class="dropdown-list dropdown-list-s2">
                            <li><h6 class="dropdown-title">{{ __('Status') }}</h6></li>
                            <li>
                                <input class="data-filter input-checkbox input-checkbox-sm" type="radio" name="tnx-status" id="status-all" checked value="">
                                <label for="status-all">{{ __('Show All') }}</label>
                            </li>
                            <li>
                                <input class="data-filter input-checkbox input-checkbox-sm" type="radio" name="tnx-status" id="status-approved" value="approved">
                                <label for="status-approved">{{ __('Approved') }}</label>
                            </li>
                            <li>
                                <input class="data-filter input-checkbox input-checkbox-sm" type="radio" name="tnx-status" value="pending" id="status-pending">
                                <label for="status-pending">{{ __('Pending') }}</label>
                            </li>
                            <li>
                                <input class="data-filter input-checkbox input-checkbox-sm" type="radio" name="tnx-status" value="canceled" id="status-canceled">
                                <label for="status-canceled">{{ __('Canceled') }}</label>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <table class="data-table dt-filter-init user-tnx">
            <thead>
                <tr class="data-item data-head">
                    <th class="data-col tnx-status dt-tnxno">{{ __('Tranx ID') }}</th>
                    <th class="data-col dt-product">{{ __('Product Type') }}</th>
                    <th class="data-col dt-amount">{{ __('Amount') }}</th>
                    {{-- <th class="data-col dt-type tnx-type"><div class="dt-type-text">{{ __('Type') }}</div></th> --}}
                    <th class="data-col"></th>
                </tr>
            </thead>
            <tbody>
                @foreach($trnxs as $trnx)
                @php
                    $text_danger = $trnx->tnx_type == 'pending' ? ' text-danger' : '';
                @endphp
                <tr class="data-item tnx-item-{{ $trnx->id }}">
                    <td class="data-col dt-tnxno">
                        <div class="d-flex align-items-center">
                            <div class="data-state data-state-{{ __status((!$trnx->confirmed ? 'pending' : 'approved'), 'icon') }}">
                                <span class="d-none">{{ (!$trnx->confirmed ? ucfirst('pending') : ucfirst('Approved') ) }}</span>
                            </div>
                            <div class="fake-class">
                                <span class="lead tnx-id">{{ $trnx->id }}</span>
                                <span class="sub sub-date">{{ _date($trnx->created_at) }}</span>
                            </div>
                        </div>
                    </td>
                    <td class="data-col dt-token">
                        @php
                            $type = null;
                            if ($trnx->meta['type'] == 'combo' || $trnx->meta['type'] == 'reorder') {
                                $type = App\Models\Product::find($trnx->meta['product_id']);
                            } elseif ($trnx->meta['type'] == 'withdraw') {
                                // $type = App\Models\Package::find($trnx->meta['package_id']);
                            } elseif ($trnx->meta['type'] == 'package') {
                                $type = App\Models\Package::find($trnx->meta['package_id']);
                            } elseif ($trnx->meta['type'] == 'income') {
                                $type = App\Models\Level::find($trnx->meta['level']);
                            }

                        @endphp
                        <span class="lead token-amount{{ $text_danger }}">{{ $type->name ?? 'Thưởng' }}</span>
                        @if ($trnx->meta['type'] == 'combo' || $trnx->meta['type'] == 'reorder')
                        <span class="sub sub-symbol">{{ __('Quantity') . ': ' . $trnx->meta['qty'] . (isset($trnx->meta['address']) ? ', Địa chỉ: ' . $trnx->meta['address'] : null) }}</span>
                        @endif
                    </td>
                    <td class="data-col dt-amount{{ $text_danger }}">
                        {{-- @if ($trnx->tnx_type=='referral'||$trnx->tnx_type=='bonus')
                            <span class="lead amount-pay">{{ '~' }}</span>
                        @else --}}
                        <span class="lead amount-pay{{ $text_danger }}">{{ number_format($trnx->amount) }}<sup>đ</sup></span>
                        <span class="sub sub-symbol">{{ __(ucfirst($trnx->meta['type'])) }}</span>
                        {{-- @endif --}}
                    </td>
                    {{-- <td class="data-col dt-usd-amount">
                        @if ($trnx->meta['type'] == 'bonus')
                            <span class="lead amount-pay">{{ '~' }}</span>
                        @else
                        <span class="lead amount-pay{{ $text_danger }}">{{ to_num($trnx->base_amount, 'auto') }}</span>
                        <span class="sub sub-symbol">{{ base_currency(true) }} <em class="fas fa-info-circle" data-toggle="tooltip" data-placement="bottom" title="1 {{ token('symbol') }} = {{ to_num($trnx->base_currency_rate, 'max').' '.base_currency(true) }}"></em></span>
                        @endif
                    </td> --}}
                    {{-- <td class="data-col dt-account">
                        @php
                        $pay_to = ($trnx->payment_method=='system') ? '~' : ( ($trnx->payment_method=='bank') ? explode(',', $trnx->payment_to) : show_str($trnx->payment_to) );
                        $extra = ($trnx->tnx_type == 'refund') ? (is_json($trnx->extra, true) ?? $trnx->extra) : '';
                        @endphp
                        @if($trnx->tnx_type == 'refund')
                            <span class="sub sub-info">{{ $trnx->details }}</span>
                            @if($extra->trnx)
                            <span class="sub sub-view"><a href="javascript:void(0)" class="view-transaction" data-id="{{ $extra->trnx }}">View Transaction</a></span>
                            @endif
                        @else
                            @if($trnx->refund != null)
                            <span class="sub sub-info text-danger">{{ __('Refunded #:orderid', ['orderid' => set_id($trnx->refund, 'refund')]) }}</span>
                            @else
                            <span class="lead user-info">{{ ($trnx->payment_method=='bank') ? $pay_to[0] : ( ($pay_to) ? $pay_to : '~' ) }}</span>
                            @endif
                            <span class="sub sub-date">{{ ($trnx->checked_time) ? _date($trnx->checked_time) : _date($trnx->created_at) }}</span>
                        @endif
                    </td> --}}
                    {{-- <td class="data-col dt-type">
                        <span class="dt-type-md badge badge-outline badge-md badge-{{ __(__status($trnx->tnx_type,'status')) }}">{{ ucfirst($trnx->tnx_type) }}</span>
                        <span class="dt-type-sm badge badge-sq badge-outline badge-md badge-{{ __(__status($trnx->tnx_type, 'status')) }}">{{ ucfirst(substr($trnx->tnx_type, 0,1)) }}</span>
                    </td> --}}
                    <td class="data-col text-right">
                        {{-- @if($trnx->meta['type'] == 'combo' || $trnx->meta['type'] == 'reorder')
                            @if ($trnx->confirmed)
                            <a href="javascript:void(0)" class="view-transaction btn btn-light-alt btn-xs btn-icon" data-id="{{ $trnx->id }}"><em class="ti ti-eye"></em></a>
                            @else
                            <div class="relative d-inline-block d-md-none">
                                <a href="#" class="btn btn-light-alt btn-xs btn-icon toggle-tigger"><em class="ti ti-more-alt"></em></a>
                                <div class="toggle-class dropdown-content dropdown-content-center-left pd-2x">
                                    <ul class="data-action-list">
                                        <li><a href="javascript:void(0)" class="btn btn-auto btn-primary btn-xs view-transaction" data-id="{{ $trnx->id }}"><span>{{__('Pay')}}</span><em class="ti ti-wallet"></em></a></li>
                                        <li><a href="{{ route('user.ajax.transactions.delete', $trnx->id) }}" class="btn btn-danger-alt btn-xs btn-icon user_tnx_trash" data-tnx_id="{{ $trnx->id }}"><em class="ti ti-trash"></em></a></li>
                                    </ul>
                                </div>
                            </div>

                            <ul class="data-action-list d-none d-md-inline-flex">
                                <li><a href="javascript:void(0)" class="btn btn-auto btn-primary btn-xs view-transaction" data-id="{{ $trnx->id }}"><span>{{__('Pay')}}</span><em class="ti ti-wallet"></em></a></li>
                                <li><a href="{{ route('user.ajax.transactions.delete', $trnx->id) }}" class="btn btn-danger-alt btn-xs btn-icon user_tnx_trash" data-tnx_id="{{ $trnx->id }}"><em class="ti ti-trash"></em></a></li>
                            </ul>
                            @endif
                        @else
                            @if($trnx->meta['type'] == 'bonus')
                            <a href="javascript:void(0)" class="view-transaction btn btn-light-alt btn-xs btn-icon" data-id="{{ $trnx->id }}"><em class="ti ti-eye"></em></a>
                            @endif
                            @if($trnx->checked_time == NUll && ($trnx->status == 'rejected' || $trnx->status == 'canceled'))
                            <a href="{{ route('user.ajax.transactions.delete', $trnx->id) }}" class="btn btn-danger-alt btn-xs btn-icon user_tnx_trash" data-tnx_id="{{ $trnx->id }}"><em class="ti ti-trash"></em></a>
                            @endif
                        @endif --}}
                    </td>
                </tr>{{-- .data-item --}}
                @endforeach
            </tbody>
        </table>
    </div>{{-- .card-innr --}}
</div>{{-- .card --}}
@endsection
