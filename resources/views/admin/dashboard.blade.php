@extends('layouts.admin')
@section('title', 'Admin Dashboard')
@section('content')
@php
$base_cur = base_currency();
@endphp
<div class="page-content">
	<div class="container">
        @include('vendor.notice')
        @include('layouts.messages')
		<div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="card height-auto">
                    <div class="card-innr">
                        <ul class="tile-nav nav">
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#view-kycs">KYC</a></li>
                        	<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#view-users">User</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="view-users">
                                <div class="tile-header">
                                    <h6 class="tile-title">Total Users</h6>
                                </div>
                                <div class="tile-data">
                                    <span class="tile-data-number">{{ to_num($users->all, 0, ',', false) }}</span>
                                    <span class="tile-data-status tile-data-active" title="Verified" data-toggle="tooltip" data-placement="right">{{ $users->verified }}%</span>
                                </div>
                                <div class="tile-footer">
                                    <div class="tile-recent">
                                        <span class="tile-recent-number">{{ to_num($users->last_week, 0, ',', false) }}</span>
                                        <span class="tile-recent-text">since last week</span>
                                    </div>
                                    <div class="tile-link">
                                        <a href="{{ route('admin.users') }}" class="link link-thin link-ucap link-dim">View</a>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="view-kycs">
                                <div class="tile-header">
                                    <h6 class="tile-title">Total KYC</h6>
                                </div>
                                <div class="tile-data">
                                    <span class="tile-data-number">{{ to_num($users->kyc_submit, 0, ',', false) }}</span>
                                    <span class="tile-data-status tile-data-active" title="Approved" data-toggle="tooltip" data-placement="right">{{ $users->kyc_approved }}%</span>
                                </div>
                                <div class="tile-footer">
                                    <div class="tile-recent">
                                        <span class="tile-recent-number">{{ to_num($users->kyc_last_week, 0, ',', false) }}</span>
                                        <span class="tile-recent-text">since last week</span>
                                    </div>
                                    <div class="tile-link">
                                        <a href="{{ route('admin.kycs') }}" class="link link-thin link-ucap link-dim">View</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>
</div>

@endsection

@push('footer')
<script type="text/javascript">
    user_labels = [<?=$users->chart->days?>], user_data = [<?=$users->chart->data?>],
    theme_color = {base:"<?=theme_color('base')?>", text: "<?=theme_color('text')?>", heading: "<?=theme_color('heading')?>"},
</script>
<script src="{{ asset('assets/js/admin.chart.js') }}"></script>
@endpush
