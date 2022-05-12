<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="js">
<html>
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
    {{-- <link rel="stylesheet" href="{{ asset(style_theme('admin')) }}"> --}}

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
        <!--[if IE]>
            <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>

    <body>
        <!-- Preloader -->
        <div class="preloader">
            <div class="preloader-wrapper">
                <div class="preloader-content">
                    <img src="{{asset('assets1/images/preloader-logo.png')}}" alt="logo">
                    <h3>Online Banking</h3>
                </div>
            </div>
        </div>
        <style>
            /* .header-bg:before{
                background-color: #18aa43 !important;
            } */
            .feature-card{
                -webkit-box-shadow: 0 3px 0 0 #ffcf84;
                box-shadow: 0 3px 0 0 #ffcf84;
            }
            .body-content{
                padding-top: 20px;
                background-color: #f2f6ff;
                background-position: 50% -500%;
                min-height: 100vh;
                position: relative;
                border-radius: 10px 10px 0 0;
            }
            .preloader:before,.sidebar-profile-wallet{
                background: #26b24c;
            }
            .add-card,.option-card,.feature-card{
                padding: 30px 15px;
                background-position: center;
                background-size: cover;
                border-radius: 8px;
                opacity: 0.9 !important;
            }
            .header-bg-1{
                background-size:cover;
                background-position: top; 
            }
            .add-card,.option-card,.feature-card h3,p{
                color: #fff !important;
            }
            .header-bg:before{
                background: unset !important;
            }
        </style>
        <!-- Preloader -->

        <!-- Header-bg -->
        <div class="header-bg header-bg-1" style="background-image: url({{asset('images/header.jpg')}})"></div>
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
                        <div class="appbar-item appbar-brand me-auto">
                            <img src="{{asset('assets1/images/logo-new.png')}}" alt="">
                            <a href="index.html">
                                <img src="{{asset('assets1/images/logo.png')}}" alt="logo" class="main-logo">
                                <img src="{{asset('assets1/images/logo-hover.png')}}" alt="logo" class="hover-logo">
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
                    @if(gup('tranx')||gup('view_tranx'))
                    <div class="navbar-content-item">
                        <a href="{{ route('admin.home') }}" class="active">
                            <i class="flaticon-house"></i>
                            Dashboard
                        </a>
                    </div>
                    @endif
                    @if(gup('tranx')||gup('view_tranx'))
                    <div class="navbar-content-item">
                        <a href="{{ route('admin.transactions', 'pending') }}">
                            <i class="flaticon-invoice"></i>
                            Transactions
                        </a>
                    </div>
                    @endif
                    @if(nio_module()->has('Withdraw') && has_route('withdraw:admin.index') && gup('withdraw'))
                    <div class="navbar-content-item">
                        <a href="{{ route('admin.transactions', 'pending') }}">
                            <i class="ikon ikon-wallet"></i>
                            Withdraw
                        </a>
                    </div>
                    @endif
                    @if(gup('kyc')||gup('view_kyc'))
                        <div class="navbar-content-item">
                        <a href="{{ route('admin.kycs', 'pending') }}">
                            <i class="flaticon-menu-1"></i>
                            KYC List
                        </a>
                    </div>
                    @endif
                    @if(gup('user')||gup('view_user'))
                    <div class="navbar-content-item">
                        <a href="{{ route('admin.users', 'user') }}">
                            <i class="flaticon-credit-card"></i>
                            Users List
                        </a>
                    </div>
                    @endif
                    @if(gup('stage'))
                    <div class="navbar-content-item">
                        <a href="{{ route('admin.stages') }}">
                            <i class="flaticon-settings"></i>
                            ICO/STO Stage
                        </a>
                    </div>
                    @endif
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
                                <h5 class="modal-title">Add Balance</h5>
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
                                <i class="flaticon-down-arrow color-blue"></i>
                                <h5 class="modal-title">Withdraw</h5>
                            </div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group mb-15">
                                    <label for="input3" class="form-label">From</label>
                                    <input type="email" class="form-control" id="input3" placeholder="Saving(***1580)">
                                </div>
                                <div class="form-group mb-15">
                                    <label for="input4" class="form-label">To</label>
                                    <input type="email" class="form-control" id="input4" placeholder="Alicia Williams">
                                </div>
                                <div class="form-group mb-15">
                                    <label for="input5" class="form-label">Enter Amount</label>
                                    <input type="email" class="form-control" id="input5" placeholder="$ 458.00">
                                </div>
                                <button type="submit" class="btn main-btn main-btn-lg full-width">Send</button>
                            </form>
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
                    $(this).next().toggleClass('d-none');
                })
            })
        </script>
    </body>
</html>