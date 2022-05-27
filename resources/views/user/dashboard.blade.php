@extends('layouts.user-new')
@section('title', 'User Dashboard')
@section('content')
<div class="body-content body-content-lg" style="background-image: url({{asset('images/bg.jpg')}})"> <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
    <div class="container">
        <!-- Add-card -->
        <div class="add-card section-to-header mb-30" style="background-image: url({{asset('images/button.png')}})">
            <div class="add-card-inner">
                <div class="add-card-item add-card-info">
                    <p>Ví hoa hồng</p>
                    <h3 style="color: #fff">{{ number_format($user->balance) }}<sup>đ</sup></h3>
                </div>
                <div class="add-card-item add-balance" data-bs-toggle="modal" data-bs-target="#addBalance">
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
                <div class="col-6 pb-15 ">
                    <div class="option-card option-card-violet" style="background-image: url({{asset('images/button.png')}});padding: 0;
                    max-height: 136px;
                    display: flex;
                    align-items: center;">
                        <a href="#" data-bs-toggle="modal" data-bs-target="#withdraw" style="padding: 14px 0">
                            {{-- <div class="option-card-icon">
                                <i class="flaticon-right-arrow"></i>
                            </div>
                            <p>Chuyển điểm</p> --}}
                            <img src="{{asset('images/dautu1-1.png')}}" alt="" style="width:90%;max-width:500px">
                        </a>
                    </div>
                </div>
                <div class="col-3 pb-15">
                    <div class="option-card option-card-blue" style="background-image: url({{asset('images/button.png')}})">
                        <a href="my-cards.html">
                            <div class="option-card-icon">
                                <i class="flaticon-full-signal"></i>
                            </div>
                            <p>Mạng xã hội</p>
                        </a>
                    </div>
                </div>
                <div class="col-3 pb-15">
                    <div class="option-card option-card-red" style="background-image: url({{asset('images/button.png')}})">
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
                <div class="col-6 col-sm-6 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{asset('images/button.png')}})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-income"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Hoa hồng</p>
                            <h3>0 VNĐ</h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-6 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{asset('images/button.png')}})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-savings"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Điểm</p>
                            <h3>{{ $user->currentPoints() }}</h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-6 pb-15">
                    <div class="feature-card feature-card-green pd" style="background-image: url({{asset('images/button.png')}})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-expenses"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Tỉ giá chuyển đổi / điểm</p>
                            <h3>{{ $current_point }}</h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-6 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{asset('images/button.png')}})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-invoice"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Doanh số</p>
                            <h3>{{ number_format($user->sales) }}<sup>đ</sup></h3>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 pb-15">
                    <div class="feature-card feature-card-green" style="background-image: url({{asset('images/button.png')}})">
                        <div class="feature-card-thumb">
                            <i class="flaticon-credit-card"></i>
                        </div>
                        <div class="feature-card-details">
                            <p>Cấp</p>
                            <h3>{{ $user->lv->name }}</h3>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 pb-15" >
                    <a href="{{route('user.referrals.index')}}" class="feature-card feature-card-green" style="background-image: url({{asset('images/button.png')}});cursor:pointer">
                        <div class="feature-card-thumb">
                            <i class="flaticon-menu-1"></i>
                        </div>
                        <div class="feature-card-details">
                            <p style="height: 45px;display: flex;align-items: center;">Xem danh sách đại lý</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <!-- Feature-section -->
        <!-- Transaction-section -->
        {{-- <div class="transaction-section pb-15">
            <div class="section-header">
                <h2>Transactions</h2>
                <div class="view-all">
                    <a href="transactions.html">View All</a>
                </div>
            </div>
            <div class="transaction-card mb-15">
                <a href="transaction-details.html">
                    <div class="transaction-card-info">
                        <div class="transaction-info-thumb">
                            <img src="{{asset('assets1/images/user-2.jpg')}}" alt="user">
                        </div>
                        <div class="transaction-info-text">
                            <h3>Brenda Davis</h3>
                            <p>Transfer</p>
                        </div>
                    </div>
                    <div class="transaction-card-det negative-number">
                        -$185.00
                    </div>
                </a>
            </div>
            <div class="transaction-card mb-15">
                <a href="transaction-details.html">
                    <div class="transaction-card-info">
                        <div class="transaction-info-thumb">
                            <img src="{{asset('assets1/images/user-cm-logo-1.png')}}" alt="user">
                        </div>
                        <div class="transaction-info-text">
                            <h3>Appstore Purchase</h3>
                            <p>App Purchase</p>
                        </div>
                    </div>
                    <div class="transaction-card-det">
                        -$159.99
                    </div>
                </a>
            </div>
            <div class="transaction-card mb-15">
                <a href="transaction-details.html">
                    <div class="transaction-card-info">
                        <div class="transaction-info-thumb">
                            <img src="{{asset('assets1/images/user-1.jpg')}}" alt="user">
                        </div>
                        <div class="transaction-info-text">
                            <h3>Martin Neely</h3>
                            <p>Transfer</p>
                        </div>
                    </div>
                    <div class="transaction-card-det">
                        +$170.00
                    </div>
                </a>
            </div>
            <div class="transaction-card mb-15">
                <a href="transaction-details.html">
                    <div class="transaction-card-info">
                        <div class="transaction-info-thumb">
                            <img src="{{asset('assets1/images/user-3.jpg')}}" alt="user">
                        </div>
                        <div class="transaction-info-text">
                            <h3>Mary McMillian</h3>
                            <p>Transfer</p>
                        </div>
                    </div>
                    <div class="transaction-card-det">
                        +$2573.00
                    </div>
                </a>
            </div>
        </div> --}}
        <!-- Transaction-section -->
        <!-- Monthly-bill-section -->
        {{-- <div class="monthly-bill-section pb-15">
            <div class="section-header">
                <h2>Monthly Bills</h2>
                <div class="view-all">
                    <a href="monthly-bills.html">View All</a>
                </div>
            </div>
            <div class="row gx-3">
                <div class="col-6 pb-15">
                    <div class="monthly-bill-card monthly-bill-card-green">
                        <div class="monthly-bill-thumb">
                            <img src="{{asset('assets1/images/cm-logo-1.png')}}" alt="logo">
                        </div>
                        <div class="monthly-bill-body">
                            <h3><a href="#">Envato.com</a></h3>
                            <p>Debit Services Subscribtion</p>
                        </div>
                        <div class="monthly-bill-footer monthly-bill-action">
                            <a href="#" class="btn main-btn">Pay Now</a>
                            <p class="monthly-bill-price">$99.99</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 pb-15">
                    <div class="monthly-bill-card monthly-bill-card-green">
                        <div class="monthly-bill-thumb">
                            <img src="{{asset('assets1/images/cm-logo-2.png')}}" alt="logo">
                        </div>
                        <div class="monthly-bill-body">
                            <h3><a href="#">Oban.com</a></h3>
                            <p>Credit Services Subscribtion</p>
                        </div>
                        <div class="monthly-bill-footer monthly-bill-action">
                            <a href="#" class="btn main-btn">Pay Now</a>
                            <p class="monthly-bill-price">$75.00</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 pb-15">
                    <div class="monthly-bill-card monthly-bill-card-green">
                        <div class="monthly-bill-thumb">
                            <img src="{{asset('assets1/images/cm-logo-3.png')}}" alt="logo">
                        </div>
                        <div class="monthly-bill-body">
                            <h3><a href="#">Nezox.com</a></h3>
                            <p>Internet Monthly Subscribtion</p>
                        </div>
                        <div class="monthly-bill-footer monthly-bill-action">
                            <a href="#" class="btn main-btn">Pay Now</a>
                            <p class="monthly-bill-price">$50.50</p>
                        </div>
                    </div>
                </div>
                <div class="col-6 pb-15">
                    <div class="monthly-bill-card monthly-bill-card-green">
                        <div class="monthly-bill-thumb">
                            <img src="{{asset('assets1/images/cm-logo-4.png')}}" alt="logo">
                        </div>
                        <div class="monthly-bill-body">
                            <h3><a href="#">Depan.com</a></h3>
                            <p>Depan Monthly Subscribtion</p>
                        </div>
                        <div class="monthly-bill-footer monthly-bill-action">
                            <a href="#" class="btn main-btn">Pay Now</a>
                            <p class="monthly-bill-price">$100.99</p>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}
        <!-- Monthly-bill-section -->
        <!-- Card-section -->
        {{-- <div class="card-section pb-15">
            <div class="section-header">
                <h2>My Cards</h2>
                <div class="view-all">
                    <a href="my-cards.html">View All</a>
                </div>
            </div>
            <div class="payment-image-card pb-15">
                <img src="{{asset('assets1/images/card-1.png')}}" alt="card">
                <ul class="payment-uploaded-action">
                    <li>
                        <a href="#" data-bs-toggle="modal" data-bs-target="#viewCard">
                            <i class="icofont-ui-edit"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#" data-bs-toggle="modal" data-bs-target="#deleteCard">
                            <i class="flaticon-trash"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div> --}}
        <!-- Card-section -->
        <!-- Send-money-section -->
        <div class="payment-method">
            <div class="section-header">
                <h2>Thông tin ngân hàng</h2>
            </div>
            <div class="payment-method-button text-center">
                <a href="{{route('user.banks.index')}}" class="btn btn-secondary d-block mx-auto mb-2" style="width:max-content;min-width:unset">
                    <i class="flaticon-plus"></i>
                </a>
                <span>Thêm tài khoản ngân hàng</span>
            </div>
        </div>
        <div class="send-money-section pb-15">
            <div class="section-header">
                <h2>Sản phẩm</h2>
                {{-- <div class="view-all">
                    <a href="#">Add New</a>
                </div> --}}
            </div>
            <div class="row gx-3">
                @foreach ($products as $product)
                    <div class="col-12 col-sm-6 pb-15">
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
        <!-- Latest-news-section -->
        <div class="latest-news-section pb-15">
            <div class="section-header">
                <h2>Tin tức</h2>
                <div class="view-all">
                    <a href="blogs.html">View All</a>
                </div>
            </div>
            <div class="row gx-3">
                <div class="col-6 col-sm-3 pb-15">
                    <div class="blog-card">
                        <div class="blog-card-thumb">
                            <a href="#">
                                <img src="{{asset('assets1/images/blogs/blog-1.jpg')}}" alt="blog">
                            </a>
                        </div>
                        <div class="blog-card-details">
                            <ul class="blog-entry">
                                <li>Smith Rob</li>
                                <li>15 Jan, 2021</li>
                            </ul>
                            <h3><a href="#">Financing Loans Available To Small Businesses</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-3 pb-15">
                    <div class="blog-card">
                        <div class="blog-card-thumb">
                            <a href="#">
                                <img src="{{asset('assets1/images/blogs/blog-2.jpg')}}" alt="blog">
                            </a>
                        </div>
                        <div class="blog-card-details">
                            <ul class="blog-entry">
                                <li>John Doe</li>
                                <li>13 Jan, 2021</li>
                            </ul>
                            <h3><a href="#">Need Financial Help To Open Your New Business</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-3 pb-15">
                    <div class="blog-card">
                        <div class="blog-card-thumb">
                            <a href="#">
                                <img src="{{asset('assets1/images/blogs/blog-2.jpg')}}" alt="blog">
                            </a>
                        </div>
                        <div class="blog-card-details">
                            <ul class="blog-entry">
                                <li>John Doe</li>
                                <li>13 Jan, 2021</li>
                            </ul>
                            <h3><a href="#">Need Financial Help To Open Your New Business</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-3 pb-15">
                    <div class="blog-card">
                        <div class="blog-card-thumb">
                            <a href="#">
                                <img src="{{asset('assets1/images/blogs/blog-2.jpg')}}" alt="blog">
                            </a>
                        </div>
                        <div class="blog-card-details">
                            <ul class="blog-entry">
                                <li>John Doe</li>
                                <li>13 Jan, 2021</li>
                            </ul>
                            <h3><a href="#">Need Financial Help To Open Your New Business</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-3 pb-15">
                    <div class="blog-card">
                        <div class="blog-card-thumb">
                            <a href="#">
                                <img src="{{asset('assets1/images/blogs/blog-2.jpg')}}" alt="blog">
                            </a>
                        </div>
                        <div class="blog-card-details">
                            <ul class="blog-entry">
                                <li>John Doe</li>
                                <li>13 Jan, 2021</li>
                            </ul>
                            <h3><a href="#">Need Financial Help To Open Your New Business</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-3 pb-15">
                    <div class="blog-card">
                        <div class="blog-card-thumb">
                            <a href="#">
                                <img src="{{asset('assets1/images/blogs/blog-2.jpg')}}" alt="blog">
                            </a>
                        </div>
                        <div class="blog-card-details">
                            <ul class="blog-entry">
                                <li>John Doe</li>
                                <li>13 Jan, 2021</li>
                            </ul>
                            <h3><a href="#">Need Financial Help To Open Your New Business</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-3 pb-15">
                    <div class="blog-card">
                        <div class="blog-card-thumb">
                            <a href="#">
                                <img src="{{asset('assets1/images/blogs/blog-2.jpg')}}" alt="blog">
                            </a>
                        </div>
                        <div class="blog-card-details">
                            <ul class="blog-entry">
                                <li>John Doe</li>
                                <li>13 Jan, 2021</li>
                            </ul>
                            <h3><a href="#">Need Financial Help To Open Your New Business</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-sm-3 pb-15">
                    <div class="blog-card">
                        <div class="blog-card-thumb">
                            <a href="#">
                                <img src="{{asset('assets1/images/blogs/blog-2.jpg')}}" alt="blog">
                            </a>
                        </div>
                        <div class="blog-card-details">
                            <ul class="blog-entry">
                                <li>John Doe</li>
                                <li>13 Jan, 2021</li>
                            </ul>
                            <h3><a href="#">Need Financial Help To Open Your New Business</a></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Latest-news-section -->
    </div>
</div>
@endsection
