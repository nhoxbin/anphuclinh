@extends('layouts.user-new')
@section('title', 'User Dashboard')
@section('content')
<div class="body-content body-content-lg" style="background-image: url({{ asset('images/bg.jpg') }})"> <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
    <div class="container">
        <!-- Add-card -->
        <div class="add-card section-to-header mb-30" style="background-image: url({{ asset('images/button.png') }})">
            <div class="add-card-inner">
                <div class="add-card-item add-card-info">
                    <p>Ví hoa hồng</p>
                    <h3 style="color: #fff">{{ number_format($user->balance) }}<sup>đ</sup></h3>
                </div>
                <div class="add-card-item withdraw" data-bs-toggle="modal" data-bs-target="#ruttien">
                    <a href="javscript:;"><i class="flaticon-left-arrow-1"></i></a>
                    <p>Rút tiền</p>
                </div>
            </div>
        </div>
        @if ($user->hasRole('member') && (empty($user->kyc_info) || !($user->kyc_info->status == 'approved')))
        <div class="alert alert-warning" role="alert">
            Vui lòng xác thực thông tin cá nhân (KYC), <a href="{{route('user.kyc')}}">nhấn vào đây</a> để xác thực
        </div>
        @endif
        <!-- Add-card -->
        <!-- Option-section -->
        <div class="option-section mb-15">
            <div class="row gx-3">
                <div class="col-md-6 col-sm-12 pb-15 ">
                    <div class="option-card option-card-violet" style="background-image: url({{ asset('images/button.png')}});padding: 0;
                        max-height: 136px;
                        display: flex;
                        align-items: center;">
                        <a href="#" data-bs-toggle="modal" data-bs-target="#goidautu" style="padding: 14px 0">
                            <img src="{{ asset('images/dautu1-1.png') }}" alt="" style="width:90%;max-width:500px">
                        </a>
                    </div>
                </div>
                <div class="col-md-3 col-6 pb-15">
                    <div class="option-card option-card-blue" style="background-image: url({{ asset('images/button.png') }})">
                        <a href="https://anphuclinh.net">
                            <div class="option-card-icon">
                                <i class="flaticon-full-signal"></i>
                            </div>
                            <p>Mạng xã hội</p>
                        </a>
                    </div>
                </div>
                <div class="col-md-3 col-6 pb-15">
                    <div class="option-card option-card-red" style="background-image: url({{ asset('images/button.png') }})">
                        <a href="#" data-bs-toggle="modal" data-bs-target="#exchange">
                            <div class="option-card-icon">
                                <i class="flaticon-exchange-arrows"></i>
                            </div>
                            <p>Sàn TMĐT EVI-SHOP</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Option-section -->
        <!-- Feature-section -->
        <div class="feature-section mb-15">
            <div class="row gx-3">
                {{-- @if (!$user->hasRole('member'))
                <div class="col-6 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{ asset('images/button.png') }})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-income"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Hoa hồng</p>
                            <h3>{{ $user->commission }}</h3>
                        </div>
                    </div>
                </div>
                @endif --}}
                <div class="col-6 pb-15">
                    <div class="feature-card feature-card-green pd" style="background-image: url({{ asset('images/button.png') }})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-expenses"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Tỉ giá chuyển đổi / điểm</p>
                            <h3>{{ $rate }}</h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{ asset('images/button.png') }})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-savings"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Điểm</p>
                            <h3>{{ $user->currentPoints() }}</h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{ asset('images/button.png') }})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-credit-card"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Cấp</p>
                            <h3>{!! $user->current_level !!}</h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 pb-15" >
                    <a href="{{ route('user.referral') }}" class="feature-card feature-card-green" style="background-image: url({{ asset('images/button.png') }});cursor:pointer">
                        <div class="feature-card-thumb">
                            <i class="flaticon-menu-1"></i>
                        </div>
                        <div class="feature-card-details">
                            <p style="height: 45px;display: flex;align-items: center;">Xem danh sách đại lý</p>
                        </div>
                    </a>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{ asset('images/button.png') }})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-invoice"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Doanh số Combo</p>
                            <h3>{{ number_format($user->sales()) }}<sup>đ</sup></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{ asset('images/button.png') }})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-invoice"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Doanh số tái đơn</p>
                            <h3>{{ number_format($user->sales('reorder')) }}<sup>đ</sup></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{ asset('images/button.png') }})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-invoice"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Doanh số tái đơn không dùng điểm</p>
                            <h3>{{ number_format($user->sales('reorder', false)) }}<sup>đ</sup></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{ asset('images/button.png') }})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-invoice"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Doanh số cá nhân</p>
                            <h3>{{ $user->box_sale() }}</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{ asset('images/button.png') }})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-invoice"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Doanh số nhóm</p>
                            <h3>{{ $user->box_sale('group') }}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Feature-section -->
        <!-- Send-money-section -->
        <div class="payment-method">
            <div class="section-header">
                <h2>Thông tin ngân hàng</h2>
            </div>
            <div class="payment-method-button text-center">
                <a href="{{ route('user.banks.index') }}" class="btn btn-secondary d-block mx-auto mb-2" style="width:max-content;min-width:unset">
                    <i class="flaticon-plus"></i>
                </a>
                <span>Thêm tài khoản ngân hàng</span>
            </div>
        </div>
        <div class="send-money-section pb-15">
            <div class="section-header">
                <h2>Sản phẩm</h2>
            </div>
            <div class="row gx-3">
                @foreach ($products as $product)
                    <div class="col-md-3 col-sm-6 col-xs-12 pb-15">
                        <div class="user-card first" style="background-image: url({{ asset('images/button.png') }})">
                            <div class="user-card-thumb" style="background: unset">
                                <img src="/{{ $product->image }}" alt="user">
                            </div>
                            <h3 style="font-size: 16px" class="text-white mt-2">{{ $product->name }}</h3>
                            @if ($user->has_combo)
                            <span class="price d-block mt-1 text-white" >{{ number_format($product->combo_price) }}<sup>đ</sup></span>
                            @else
                            <span class="price d-block mt-1 text-white" >{{ number_format($product->price) }}<sup>đ</sup></span>
                            @endif
                            <a class="d-block text-white mt-1" style="background: url({{ asset('images/btn.png') }}) 3px 5px no-repeat;
                                background-position: center;
                                background-size: cover;
                                border: none;
                                width:max-content;
                                margin:0 auto;
                                padding: 2px 10px;" href="{{ route('user.products.show', $product->id) }}">Mua ngay</a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

        <div class="modal fade" id="goidautu" tabindex="-1" aria-labelledby="addBalance" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container">
                        <div class="modal-header">
                            <div class="modal-header-title">
                                <h5 class="modal-title">Gói đại lý</h5>
                            </div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body" style="max-height: 100%">
                            <ul class="apl_goidautu" style="margin: 0;padding: 0;list-style: none;">
                                @foreach ($packages as $package)
                                <li><a href="{{ route('user.packages.show', $package->id) }}"><img src="{{ asset('images/packages/' . round($package->amount) . '.png') }}"></a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Latest-news-section -->
        <div class="latest-news-section pb-15">
            <div class="section-header">
                <h2>Tin tức</h2>
                <div class="view-all">
                    <a href="#">View All</a>
                </div>
            </div>
            <div class="row gx-3">
                @foreach ($posts as $key => $post)
                @if ($key+1 > 8)
                    @break
                @endif
                <div class="col-md-3 col-sm-4 col-xs-2 pb-15">
                    <div class="blog-card">
                        <div class="blog-card-thumb">
                            <a href="/posts/{{ $post->slug }}">
                                <img src="{{ asset('storage/' . $post->image) }}" alt="Bài viết">
                            </a>
                        </div>
                        <div class="blog-card-details">
                            <ul class="blog-entry">
                                <li>{{ $post->user->name }}</li>
                                <li>{{ $post->created_at->diffForHumans() }}</li>
                            </ul>
                            <h3><a href="/posts/{{ $post->slug }}">{{ $post->title }}</a></h3>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        <!-- Latest-news-section -->
    </div>
</div>
@endsection
