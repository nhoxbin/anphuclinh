@extends('layouts.user')
@section('title', ucfirst($page->title))
@php
($has_sidebar = true);
function refs(string $key, $refs)
{
    foreach ($refs as $keyref => $ref) {
        echo '<tr class="data-item">
                <td class="data-col refferal-stt">'. ($key).'.'.($keyref+1) .'</td>
                <td class="data-col refferal-name">'. $ref->name .'</td>
                <td class="data-col refferal-phone">'. $ref->phone .'</td>
                <td class="data-col refferal-sales">'. number_format($ref->sales()) .'<sup>đ</sup></td>
            </tr>';
        if (!($ref->refs->isEmpty())) {
            $key = ($key).'.'.($keyref+1);
            refs($key, $ref->refs);
        }
    }
}
@endphp

@section('content')
<div class="content-area content-area-mh card user-account-pages page-{{ $page->slug }}">
    <div class="card-innr">
        <div class="card-head">
            <h2 class="card-title card-title-lg">{{__(replace_shortcode($page->title))}}</h2>
            @if($page->meta_description!=null)
            <p class="large">{{ replace_shortcode($page->meta_description) }}</p>
            @endif
        </div>
        @if(!empty($page->description))
        <div class="card-text">
            {!! replace_shortcode(auto_p($page->description)) !!}
        </div>
        @endif

        <div class="gaps-1x"></div>
        <div class="referral-form">
            <h4 class="card-title card-title-sm">{{ __('Referral URL') }}</h4>
            <div class="copy-wrap mgb-1-5x mgt-1-5x">
                <span class="copy-feedback"></span>
                <em class="copy-icon fas fa-link"></em>
                <input type="text" class="copy-address" value="{{ route('public.referral').'?ref='.auth()->user()->phone }}" disabled>
                <button class="copy-trigger copy-clipboard" data-clipboard-text="{{ route('public.referral').'?ref='.auth()->user()->phone }}"><em class="ti ti-files"></em></button>
            </div>
            <p class="text-light mgmt-1x"><em><small>{{ __('Use above link to refer your friend and get referral bonus.') }}</small></em></p>
        </div>
        <div class="sap sap-gap"></div>
        <div class="card-head">
            <h4 class="card-title card-title-sm">{{ __('Referral Lists') }}</h4>
        </div>
        <table class="table table-hover table-striped refferal-table">
            <thead>
                <tr class="data-item data-head">
                    <th class="data-col refferal-name"><span>{{ __('STT') }}</span></th>
                    <th class="data-col refferal-name"><span>{{ __('Full Name') }}</span></th>
                    <th class="data-col refferal-tokens"><span>{{ __('Phone Number') }}</span></th>
                    <th class="data-col refferal-sales"><span>{{ __('Sales') }}</span></th>
                </tr>
            </thead>
            <tbody>
                @forelse($refs as $key => $refer)
                    {{ $refer->show_refs($user, $refer->refs) }}
                @empty
                    <tr class="data-item">
                        <td class="data-col">{{ __('No one join yet!') }}</td>
                        <td class="data-col"></td>
                        <td class="data-col"></td>
                    </tr>
                @endforelse
            </tbody>
        </table>
        {!! $refs->links('vendor.pagination.default') !!}
    </div>
</div>
@endsection
