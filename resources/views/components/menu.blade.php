<div class="modal fade" id="sidebarDrawer" tabindex="-1" aria-labelledby="sidebarDrawer" aria-hidden="true">
    <div class="modal-dialog side-modal-dialog">
        <div class="modal-content">
            <div class="modal-header sidebar-modal-header">
                <div class="sidebar-profile-info">
                    <div class="sidebar-profile-thumb">
                        <img src="{{asset('assets1/images/profile.jpg')}}" alt="profile">
                    </div>
                    <div class="sidebar-profile-text">
                        <h3>Brenda Davis</h3>
                        <p><a href="tel:1545-8880">1545 8880</a></p>
                    </div>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="sidebar-profile-wallet">
                <div class="add-card-info">
                    <p>Ví hoa hồng</p>
                    <h3>0 VNĐ</h3>
                </div>
            </div>
            <div class="modal-body">
                <div class="sidebar-nav">
                    <div class="sidebar-nav-item">
                        <h3>Menu</h3>
                        <ul class="sidebar-nav-list">
                            <li><a href="{{ route('admin.home') }}"><i class="ikon ikon-dashboard"></i> Dashboard</a></li>
                        @if(gup('tranx')||gup('view_tranx'))
                        <li {!! ((is_page('transactions')||is_page('transactions.pending')||is_page('transactions.approved')||is_page('transactions.bonuses'))? ' class="active"' : '') !!}>
                            <a href="{{ route('admin.transactions', 'pending') }}"><i class="ikon ikon-transactions"></i> Transactions</a>
                        </li>
                        @endif
                        @if(nio_module()->has('Withdraw') && has_route('withdraw:admin.index') && gup('withdraw'))
                        <li {!! ((is_page('withdraw'))? ' class="active"' : '') !!}>
                            <a href="{{ route('withdraw:admin.index') }}"><i class="ikon ikon-wallet"></i> Withdraw</a>
                        </li>
                        @endif
                        @if(gup('kyc')||gup('view_kyc'))
                        <li {!! ((is_page('kyc-list')||is_page('kyc-list.pending')||is_page('kyc-list.approved')||is_page('kyc-list.missing'))? ' class="active"' : '') !!}>
                            <a href="{{ route('admin.kycs', 'pending') }}"><i class="ikon ikon-docs"></i> KYC List</a>
                        </li>
                        @endif
                        @if(gup('user')||gup('view_user'))
                        <li {!! ((is_page('users')||is_page('users.user')||is_page('users.admin'))? ' class="active"' : '') !!}>
                            <a href="{{ route('admin.users', 'user') }}"><i class="ikon ikon-user-list"></i> Users List</a>
                        </li>
                        @endif
                        @if(gup('stage'))
                        <li {!! ((is_page('stages'))? ' class="active"' : '') !!}>
                            <a href="{{ route('admin.stages') }}"><i class="ikon ikon-coins"></i> ICO/STO Stage</a>
                        </li>
                        @endif
                        @if(gup('setting'))
                        <li class="has-dropdown"><a class="drop-toggle" href=""><i class="ikon ikon-settings"></i> Settings</a>
                            <ul class="navbar-dropdown d-none">
                                <li><a href="{{ route('admin.stages.settings') }}">ICO/STO Setting</a></li>
                                <li><a href="{{ route('admin.settings') }}">Website Setting</a></li>
                                <li><a href="{{ route('admin.settings.referral') }}">Referral Setting</a></li>
                                <li><a href="{{ route('admin.settings.email') }}">Mailing Setting</a></li>
                                <li><a href="{{ route('admin.payments.setup') }}">Payment Methods</a></li>
                                <li><a href="{{ route('admin.pages') }}">Manage Pages</a></li>
                                <li><a href="{{ route('admin.settings.api') }}">Application API</a></li>
                                <li><a href="{{ route('admin.lang.manage') }}">Manage Languages</a></li>
                                <li><a href="{{ route('admin.system') }}">System Status</a></li>
                                @if(has_route('manage_access:admin.index'))
                                <li><a href="{{ route('manage_access:admin.index') }}">Manage Admin</a></li>
                                @endif
                            </ul>
                        </li>
                        @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>