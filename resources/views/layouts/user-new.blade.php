<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="js">
<html lang="zxx">
    <head>
    <meta charset="utf-8">
    <meta name="apps" content="{{ site_whitelabel('apps') }}">
    <meta name="author" content="{{ site_whitelabel('author') }}">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="site-token" content="{{ site_token() }}">
    <link rel="shortcut icon" href="{{ site_favicon() }}">
    <title>@yield('title') | {{ site_whitelabel('title') }}</title>
    <link rel="stylesheet" href="{{ asset(style_theme('vendor')) }}">
    <link rel="stylesheet" href="{{ asset(style_theme('admin')) }}">

        <!-- bootstrap css -->
        <link rel="stylesheet" href="{{asset('assets1/css/bootstrap.min.css')}}" type="text/css" media="all" />
        <!-- animate css -->
        <link rel="stylesheet" href="{{asset('assets1/css/animate.min.css')}}" type="text/css" media="all" />
        <!-- owl carousel css -->
        <link rel="stylesheet" href="{{asset('assets1/css/owl.carousel.min.css')}}"  type="text/css" media="all" />
        <link rel="stylesheet" href="{{asset('assets1/css/owl.theme.default.min.css')}}"  type="text/css" media="all" />
        <!-- boxicons css -->
        <link rel='stylesheet' href='{{asset('assets1/css/icofont.min.css')}}' type="text/css" media="all" />
        <!-- flaticon css -->
        <link rel='stylesheet' href='{{asset('assets1/css/flaticon.css')}}' type="text/css" media="all" />
        <!-- style css -->
        <link rel="stylesheet" href="{{asset('assets1/css/style.css')}}" type="text/css" media="all" />
        <!-- responsive css -->
        <link rel="stylesheet" href="{{asset('assets1/css/responsive.css')}}" type="text/css" media="all" />
        <link rel="stylesheet" href="{{asset('assets1/css/style_1.css?ver=15')}}" type="text/css" media="all" />
        <!--[if IE]>
            <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        @section('add-link')
        <link rel='stylesheet' id='wp-block-library-css'  href='https://app.anphuclinh.net/wp-includes/css/dist/block-library/style.min.css?ver=5.7.6' media='all' />
        <link rel='stylesheet' id='wc-block-vendors-style-css'  href='https://app.anphuclinh.net/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/vendors-style.css?ver=4.4.3' media='all' />
        <link rel='stylesheet' id='wc-block-style-css'  href='https://app.anphuclinh.net/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/style.css?ver=4.4.3' media='all' />
        <link rel='stylesheet' id='contact-form-7-css'  href='https://app.anphuclinh.net/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.4' media='all' />
        <link rel='stylesheet' id='uap_font_awesome-css'  href='https://app.anphuclinh.net/wp-content/plugins/indeed-affiliate-pro/assets/css/font-awesome.css?ver=5.7.6' media='all' />
        <link rel='stylesheet' id='uap_public_style-css'  href='https://app.anphuclinh.net/wp-content/plugins/indeed-affiliate-pro/assets/css/main_public.css?ver=5.7.6' media='all' />
        <link rel='stylesheet' id='uap_templates-css'  href='https://app.anphuclinh.net/wp-content/plugins/indeed-affiliate-pro/assets/css/templates.css?ver=5.7.6' media='all' />
        <link rel='stylesheet' id='uap_jquery-ui.min.css-css'  href='https://app.anphuclinh.net/wp-content/plugins/indeed-affiliate-pro/assets/css/jquery-ui.min.css?ver=5.7.6' media='all' />
        <link rel='stylesheet' id='uap_select2_style-css'  href='https://app.anphuclinh.net/wp-content/plugins/indeed-affiliate-pro/assets/css/select2.min.css?ver=5.7.6' media='all' />
        <link rel='stylesheet' id='tpb-mh-css'  href='https://app.anphuclinh.net/wp-content/plugins/tpb-mh/public/css/tpb-mh-public.css?ver=1.1' media='all' />
        <link rel='stylesheet' id='thwcfd-checkout-style-css'  href='https://app.anphuclinh.net/wp-content/plugins/woo-checkout-field-editor-pro/public/assets/css/thwcfd-public.min.css?ver=5.7.6' media='all' />
        <link rel='stylesheet' id='select2-css'  href='https://app.anphuclinh.net/wp-content/plugins/woocommerce/assets/css/select2.css?ver=5.1.0' media='all' />
        <link rel='stylesheet' id='woocommerce-layout-css'  href='https://app.anphuclinh.net/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=5.1.0' media='all' />
        <link rel='stylesheet' id='woocommerce-smallscreen-css'  href='https://app.anphuclinh.net/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=5.1.0' media='only screen and (max-width: 768px)' />
        <link rel='stylesheet' id='woocommerce-general-css'  href='https://app.anphuclinh.net/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=5.1.0' media='all' />
        <style id='woocommerce-inline-inline-css'>
        .woocommerce form .form-row .required { visibility: visible; }
        </style>

        <link rel="https://api.w.org/" href="https://app.anphuclinh.net/wp-json/" /><link rel="alternate" type="application/json" href="https://app.anphuclinh.net/wp-json/wp/v2/pages/59" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://app.anphuclinh.net/xmlrpc.php?rsd" />
        <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://app.anphuclinh.net/wp-includes/wlwmanifest.xml" /> 
        <link rel='stylesheet' id='apl-style-css'  href='https://app.anphuclinh.net/wp-content/themes/apl/style.css?ver=1.0.0' media='all' />

        <link rel="canonical" href="https://app.anphuclinh.net/trang-thanh-toan/" />
        <link rel='shortlink' href='https://app.anphuclinh.net/?p=59' />
        <link rel="alternate" type="application/json+oembed" href="https://app.anphuclinh.net/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fapp.anphuclinh.net%2Ftrang-thanh-toan%2F" />
        <link rel="alternate" type="text/xml+oembed" href="https://app.anphuclinh.net/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fapp.anphuclinh.net%2Ftrang-thanh-toan%2F&#038;format=xml" />
        <noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
        <style>.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style><link rel="icon" href="https://app.anphuclinh.net/wp-content/uploads/2021/03/cropped-logos-e1633948530220-32x32.png" sizes="32x32" />
        <link rel="icon" href="https://app.anphuclinh.net/wp-content/uploads/2021/03/cropped-logos-e1633948530220-192x192.png" sizes="192x192" />
        <link rel="apple-touch-icon" href="https://app.anphuclinh.net/wp-content/uploads/2021/03/cropped-logos-e1633948530220-180x180.png" />
        @show
        @routes
    </head>
    <body  style="background-image: url({{asset('images/bg.jpg')}})">
        <!-- Preloader -->
        <style>
            #main-logo{
                max-width: 60px;
            }
            @media(max-width:995px){
                #main-logo{
                    max-width:30px;
                }
                .body-content{
                    margin-top: 0;                }
            }
        </style>
        <div class="preloader">
            <div class="preloader-wrapper">
                <div class="preloader-content">
                    <img src="{{asset('images/logo-new.png')}}" alt="logo">
                    <h3>An Phúc Linh<br>An tâm gia đình Việt</h3>
                </div>
            </div>
        </div>
        <!-- Preloader -->

        <!-- Header-bg -->
        <div class="header-bg header-bg-1" style="background-image: url({{asset('images/header-bg.jpg')}})"></div>
        <!-- Header-bg -->

        <!-- Appbar -->
        <div class="fixed-top">
            <div class="appbar-area sticky-black">
                <div class="container">
                    <div class="appbar-container">
                        <div class="appbar-item appbar-actions">
                            <div class="appbar-action-item">
                                <a href="#" class="appbar-action-bar" data-bs-toggle="modal" data-bs-target="#sidebarDrawer"><i class="flaticon-menu"></i></a>
                            </div>
                        </div>
                        <div class="appbar-item appbar-brand me-auto" style="margin: 0 auto;padding-left: 30px;">
                            <a href="index.html">
                                <img src="{{asset('images/logo-new.png')}}" alt="" id="main-logo">
                                {{-- <img src="{{asset('assets1/images/logo.png')}}" alt="logo" class="main-logo">
                                <img src="{{asset('assets1/images/logo-hover.png')}}" alt="logo" class="hover-logo"> --}}
                            </a>
                        </div>
                        <div class="appbar-item appbar-options">
                            <div class="appbar-option-item appbar-option-notification">
                                <a href="notifications.html"><i class="flaticon-bell"></i></a>
                                <span class="option-badge">5</span>
                            </div>
                            <div class="appbar-option-item appbar-option-profile">
                                <a href="settings.html"><img src="{{asset('assets1/images/profile.jpg')}}" alt="profile"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Appbar -->

        <!-- Body-content -->
        <!-- Body-content -->

        <!-- Footer -->
        <footer class="footer-bg">
            <div class="container">
                <p>Copyright © 2021 Oban. Designed & Developed By <a href="https://envytheme.com/" target="_blank">EnvyTheme</a></p>
            </div>
        </footer>
        <!-- Footer -->

        <!-- Navbar -->
        <div class="app-navbar">
            <div class="container">
                <div class="navbar-content ">
                    <div class="navbar-content-item">
                        <a href="" class="active">
                            <i class="flaticon-house"></i>
                            Trang chủ
                        </a>
                    </div>
                    <div class="navbar-content-item">
                        <a href="{{route('user.transactions.index')}}">
                            <i class="flaticon-invoice"></i>
                            Lịch sử
                        </a>
                    </div>
                    <div class="navbar-content-item"  data-bs-toggle="modal" data-bs-target="#addBalance">
                        <a href="javascript:;" >
                            <i class="flaticon-menu-1"></i>
                            Rút tiền
                        </a>
                    </div>
                        <div class="navbar-content-item">
                        <a href="">
                            <i class="flaticon-bell"></i>
                            Thông báo
                        </a>
                    </div>
                    <div class="navbar-content-item">
                        <a href="#">
                            <i class="flaticon-settings"></i>
                            Thiết lập
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar -->

        <!-- Add-balance-modal -->
        <div class="modal fade" id="addBalance" tabindex="-1" aria-labelledby="addBalance" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container">
                        <div class="modal-header">
                            <div class="modal-header-title">
                                <i class="flaticon-plus color-blue"></i>
                                <h5 class="modal-title">Nạp tiền vào tài khoản</h5>
                            </div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group mb-15">
                                    <label for="input1" class="form-label">From</label>
                                    <input type="email" class="form-control" id="input1" placeholder="Payoneer Account">
                                </div>
                                <div class="form-group mb-15">
                                    <label for="input2" class="form-label">Enter Amount</label>
                                    <input type="email" class="form-control" id="input2" placeholder="$ 458.00">
                                </div>
                                <button type="submit" class="btn main-btn main-btn-lg full-width">Deposit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Add-balance-modal -->

        <!-- Withdraw-modal -->
        <div class="modal fade" id="withdraw" tabindex="-1" aria-labelledby="withdraw" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container">
                        <div class="modal-header">
                            <div class="modal-header-title">
                                <i class="flaticon-plus color-blue"></i>
                                <h5 class="modal-title">Nạp tiền</h5>
                            </div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body d-flex flex-column" style="max-height:unset">
                            <a href=""><img src="{{asset('images/1sao.png')}}" alt="" style="max-width:400px;width:100%;height:111px;margin-bottom:10px"></a>
                            <a href=""><img src="{{asset('images/1sao.png')}}" alt="" style="max-width:400px;width:100%;height:111px;margin-bottom:10px"></a>
                            <a href=""><img src="{{asset('images/1sao.png')}}" alt="" style="max-width:400px;width:100%;height:111px;margin-bottom:10px"></a>
                            <a href=""><img src="{{asset('images/1sao.png')}}" alt="" style="max-width:400px;width:100%;height:111px;margin-bottom:10px"></a>
                            <a href=""><img src="{{asset('images/1sao.png')}}" alt="" style="max-width:400px;width:100%;height:111px;margin-bottom:10px"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Withdraw-modal -->

        <!-- Send-money-modal -->
        <div class="modal fade" id="sendMoney" tabindex="-1" aria-labelledby="sendMoney" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container">
                        <div class="modal-header">
                            <div class="modal-header-title">
                                <i class="flaticon-right-arrow color-yellow"></i>
                                <h5 class="modal-title">Send Money</h5>
                            </div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group mb-15">
                                    <label for="input6" class="form-label">From</label>
                                    <input type="email" class="form-control" id="input6" placeholder="Saving(***1580)">
                                </div>
                                <div class="form-group mb-15">
                                    <label for="input7" class="form-label">To</label>
                                    <input type="email" class="form-control" id="input7" placeholder="Bank ID">
                                </div>
                                <div class="form-group mb-15">
                                    <label for="input8" class="form-label">Enter Amount</label>
                                    <input type="email" class="form-control" id="input8" placeholder="$ 458.00">
                                </div>
                                <button type="submit" class="btn main-btn main-btn-lg full-width">Send</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Send-money-modal -->

        <!-- Exchange-modal -->
        <div class="modal fade" id="exchange" tabindex="-1" aria-labelledby="exchange" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container">
                        <div class="modal-header">
                            <div class="modal-header-title">
                                <i class="flaticon-exchange-arrows color-red"></i>
                                <h5 class="modal-title">Exchange</h5>
                            </div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group mb-15">
                                    <label for="input9" class="form-label">From</label>
                                    <input type="email" class="form-control" id="input9" placeholder="EUR">
                                </div>
                                <div class="form-group mb-15">
                                    <label for="input10" class="form-label">To</label>
                                    <input type="email" class="form-control" id="input10" placeholder="USD">
                                </div>
                                <div class="form-group mb-15">
                                    <label for="input11" class="form-label">Enter Amount</label>
                                    <input type="email" class="form-control" id="input11" placeholder="$ 458.00">
                                </div>
                                <button type="submit" class="btn main-btn main-btn-lg full-width">Send</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Exchange-modal -->

        <!-- AddCard-modal -->
        <div class="modal fade" id="addCard" tabindex="-1" aria-labelledby="addCard" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container">
                        <div class="modal-header">
                            <div class="modal-header-title">
                                <h5 class="modal-title">Add A New Card</h5>
                            </div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group mb-15">
                                    <div class="form-card-upload">
                                        <label class="card-upload-thumb" for="uploadCard">
                                            <i class="flaticon-camera"></i>
                                        </label>
                                        <input type="file" id="uploadCard" class="d-none">
                                    </div>
                                </div>
                                <div class="form-group mb-15">
                                    <label class="form-label">Card Type</label>
                                    <input type="email" class="form-control" placeholder="Mastercard">
                                </div>
                                <div class="form-group mb-15">
                                    <label class="form-label">Card Number</label>
                                    <input type="email" class="form-control" placeholder="****  ****  ****  ****">
                                </div>
                                <div class="form-group mb-15 overflow-hidden">
                                    <div class="row gx-2">
                                        <div class="col-6">
                                            <label class="form-label">Expiry Date</label>
                                            <div class="row gx-2">
                                                <div class="col-6">
                                                    <select class="form-control">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                    </select>
                                                </div>
                                                <div class="col-6">
                                                    <select class="form-control">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <label class="form-label">CVV</label>
                                            <input type="email" class="form-control" placeholder="453">
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn main-btn full-width">Add Card</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- AddCard-modal -->

        <!-- View-card-modal -->
        <div class="modal fade" id="viewCard" tabindex="-1" aria-labelledby="viewCard" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container">
                        <div class="modal-header">
                            <div class="modal-header-title">
                                <h5 class="modal-title">Edit Card</h5>
                            </div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group mb-15">
                                    <div class="form-card-uploaded"> <!-- "form-card-uploaded" class is used for already uploaded card. -->
                                        <img src="{{asset('assets1/images/card-1.png')}}" alt="card">
                                        <label class="form-card-uploaded-edit" for="editUploadCard">
                                            <i class="flaticon-camera"></i>
                                        </label>
                                        <input type="file" id="editUploadCard" class="d-none">
                                    </div>
                                </div>
                                <div class="form-group mb-15">
                                    <label class="form-label">Card Type</label>
                                    <input type="email" class="form-control" placeholder="Mastercard" value="Credit Card">
                                </div>
                                <div class="form-group mb-15">
                                    <label class="form-label">Card Number</label>
                                    <input type="email" class="form-control" placeholder="****  ****  ****  ****" value="0123 4567 8901 2345">
                                </div>
                                <div class="form-group mb-15 overflow-hidden">
                                    <div class="row gx-2">
                                        <div class="col-6">
                                            <label class="form-label">Expiry Date</label>
                                            <div class="row gx-2">
                                                <div class="col-6">
                                                    <select class="form-control">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                    </select>
                                                </div>
                                                <div class="col-6">
                                                    <select class="form-control">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <label class="form-label">CVV</label>
                                            <input type="email" class="form-control" placeholder="453" value="3334">
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn main-btn full-width">Save Changes</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- View-card-modal -->

        <!-- Delete-card-modal -->
        <div class="modal fade" id="deleteCard" tabindex="-1" aria-labelledby="deleteCard" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-dialog-animatezoom">
                <div class="modal-content">
                    <div class="container">
                        <div class="modal-header">
                            <div class="modal-header-title">
                                <h5 class="modal-title">Delete Card</h5>
                            </div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body modal-body-center">
                            <form class="text-center">
                                <h3>Are You Sure You Want To Delete This Card?</h3>
                                <button type="submit" class="btn main-btn main-btn-red main-btn-lg full-width">Delete</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Delete-card-modal -->

        <!-- Menu-modal -->
        @include('components.menu')
        @yield('content')
        <!-- Menu-modal -->

        <!-- Scroll-top -->
        <div class="scroll-top" id="scrolltop">
            <div class="scroll-top-inner">
                <i class="icofont-long-arrow-up"></i>
            </div>
        </div>
        <!-- Scroll-top -->


        <!-- essential js -->
        <script src="{{asset('assets1/js/jquery-3.5.1.min.js')}}"></script>
        <script src="{{asset('assets1/js/bootstrap.bundle.min.js')}}"></script>
        <!-- owl carousel js -->
        <script src="{{asset('assets1/js/owl.carousel.min.js')}}"></script>
        <!-- form ajazchimp js -->
        <script src="{{asset('assets1/js/jquery.ajaxchimp.min.js')}}"></script>
        <!-- form validator js  -->
        <script src="{{asset('assets1/js/form-validator.min.js')}}"></script>
        <!-- contact form js -->
        <script src="{{asset('assets1/js/contact-form-script.js')}}"></script>
        <!-- main js -->
        <script src="{{asset('assets1/js/script.js')}}"></script>
        <script>
            $(document).ready(function(){
                $('.drop-toggle').click(function(e){
                    e.preventDefault();
                    console.log($(this).next());
                    $(this).next().toggleClass('active');
                })
                $('#ship-to-different-address-checkbox').change(function(){
                    $('.shipping_address').slideToggle();
                })
            })
        </script>
    </body>
</html>
