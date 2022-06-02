<div class="modal fade" id="sidebarDrawer" tabindex="-1" aria-labelledby="sidebarDrawer" aria-hidden="true">
    <div class="modal-dialog side-modal-dialog">
        <div class="modal-content">
            <div class="modal-header sidebar-modal-header">
                <div class="sidebar-profile-info">
                    <div class="sidebar-profile-thumb">
                        <img src="{{asset('assets1/images/profile.jpg')}}" alt="profile">
                    </div>
                    <div class="sidebar-profile-text">
                        <h3>{{ $user->name }}</h3>
                        <p><a href="tel:1545-8880">{{ $user->phone }}</a></p>
                    </div>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="sidebar-nav">
                    <div class="sidebar-nav-item">
                        <h3 style="padding-left: 35px">Menu</h3>
                        <ul class="sidebar-nav-list">
                        <li><a href="{{ route('admin.home') }}"><i class="flaticon-house"></i> Trang chủ</a></li>
                        <li><a href="{{ route('user.kyc') }}"><i class="ikon ikon-coins"></i> KYC</a></li>
                        <li><a href=""><i class="flaticon-invoice"></i> Tin tức</a></li>
                        <li><a href=""><i class="flaticon-call-center-agent"></i> Liên hệ</a></li>
                        <li>
                            <form id="logout-form" action="{{ (is_maintenance() ? route('admin.logout') : route('logout')) }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                            <a type="button" onclick="document.getElementById('logout-form').submit()"><i class="flaticon-logout"></i> Đăng xuất</a>
                        </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
