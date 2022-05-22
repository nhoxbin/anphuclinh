@extends('layouts.user-new')
@section('sidebar')
    @parent
@stop
@section('content')
    <div class="body-content body-content-lg" style="background-image: url({{ asset('images/bg.jpg') }})">
        <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
        <div class="container">
            <main id="primary" class="site-main">
                <article id="post-59" class="post-59 page type-page status-publish hentry">
                    <header class="entry-header">
                        <h1 class="entry-title">Trang thanh toán</h1>
                    </header><!-- .entry-header -->
                    <div class="entry-content">
                        <div class="woocommerce">
                            <div class="woocommerce-notices-wrapper">
                                <form class="checkout_coupon woocommerce-form-coupon" method="post" style="display:none">

                                    <p>Nếu bạn có mã giảm giá, vui lòng điền vào phía bên dưới.</p>

                                    <p class="form-row form-row-first">
                                        <input type="text" name="coupon_code" class="input-text" placeholder="Mã ưu đãi"
                                            id="coupon_code" value="" />
                                    </p>

                                    <p class="form-row form-row-last">
                                        <button type="submit" class="button" name="apply_coupon" value="Áp dụng">Áp
                                            dụng</button>
                                    </p>

                                    <div class="clear"></div>
                                </form>
                                <div class="woocommerce-notices-wrapper"></div>

                                <purchase-component :product="{{ $product }}"
                                                    :provinces="{{ $provinces }}"
                                                    :user="{{ $user }}"
                                                    :bank="{{ $bank }}"
                                                    :transaction="{{ $transaction }}">
                                </purchase-component>
                            </div>
                        </div>
                    </div><!-- .entry-content -->
                </article><!-- #post-59 -->
            </main><!-- #main -->
        </div>
    </div>
    <!-- Body-content -->
@endsection
