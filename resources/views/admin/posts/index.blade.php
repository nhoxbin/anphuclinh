@extends('layouts.admin')
@section('title', 'Posts')
@section('content')
<div class="page-content">
    <div class="container">
        @include('layouts.messages')
        @include('vendor.notice')
        <div class="card content-area content-area-mh">
            <div class="card-innr">
                <div class="card-head has-aside">
                    <h4 class="card-title">{{ __('Posts') }}</h4>
                    <div class="card-opt data-action-list d-none d-md-inline-flex">
                        <ul class="btn-grp btn-grp-block guttar-20px">
                            <li>
                                <a href="{{ route('admin.posts.create') }}" class="btn btn-auto btn-sm btn-primary">
                                    <em class="fas fa-plus-circle"> </em><span>Thêm <span class="d-none d-md-inline-block">{{ __('Posts') }}</span></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="page-nav-wrap">
                    <div class="page-nav-bar justify-content-between bg-lighter">
                        <div class="search flex-grow-1 pl-lg-4 w-100 w-sm-auto">
                            <form action="{{ route('admin.posts.index') }}" method="GET" autocomplete="off">
                                <div class="input-wrap">
                                    <span class="input-icon input-icon-left"><em class="ti ti-search"></em></span>
                                    <input type="search" class="input-solid input-transparent" placeholder="{{ __('Search') }}" value="{{ request()->get('s', '') }}" name="s">
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

                @if($posts->total() > 0)
                <table class="data-table admin-tnx">
                    <thead>
                        <tr class="data-item data-head">
                            <th class="data-col dt-name">{{ __('Title') }}</th>
                            <th class="data-col dt-product-type">{{ __('Content') }}</th>
                            <th class="data-col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($posts as $post)
                        <tr class="data-item" id="tnx-item-{{ $post->id }}">
                            <td class="data-col dt-title">
                                <span class="lead amount-pay">{{ $post->title }}</span>
                                {{-- <span class="sub sub-symbol">{{ $post }}</span> --}}
                            </td>
                            <td class="data-col dt-product-type">
                                <span class="lead amount-pay">{!! substr(strip_tags(htmlspecialchars_decode($post->content)), 0, 100) !!}</span>
                            </td>
                            <td class="data-col text-right">
                                <div class="relative d-inline-block">
                                    <a href="#" class="btn btn-light-alt btn-xs btn-icon toggle-tigger"><em class="ti ti-more-alt"></em></a>
                                    <div class="toggle-class dropdown-content dropdown-content-top-left">
                                        <ul id="more-menu-{{ $post->id }}" class="dropdown-list">
                                            <li><a href="{{ route('admin.posts.edit', $post->id) }}">
                                                <em class="ti ti-eye"></em> {{ __('Edit') }}</a></li>
                                            <li><a href="{{ route('public.posts.show', $post->slug) }}">
                                                <em class="ti ti-eye"></em> {{ __('View Details') }}</a></li>
                                            <li><a href="javascript:void(0)" id="delete_post" data-id="{{ $post->id }}">
                                                <em class="far fa-check-square"></em> {{ __('Delete') }}</a></li>
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
                        <p><em class="ti ti-server fs-24"></em><br>{{ __('No posts found!') }}</p>
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
