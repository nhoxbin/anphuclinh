<div class="app-navbar">
    <div class="container">
        <div class="navbar-content ">
            <div class="navbar-content-item">
                <a href="/" class="active">
                    <i class="flaticon-house"></i>
                    Trang chủ
                </a>
            </div>
            <div class="navbar-content-item">
                <a href="{{ route('user.transactions.index') }}">
                    <i class="flaticon-invoice"></i>
                    Lịch sử
                </a>
            </div>
            <div class="navbar-content-item" data-bs-toggle="modal" data-bs-target="#ruttien">
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
                <a href="{{ route('user.account') }}">
                    <i class="flaticon-settings"></i>
                    Tôi
                </a>
            </div>
        </div>
    </div>
</div>
