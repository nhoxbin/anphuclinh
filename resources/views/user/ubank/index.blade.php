@extends('layouts.user-new')
@section('content')
    <div class="body-content body-content-lg">
        <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
        <user-bank-component :banks="{{ $banks }}"></user-bank-component>
    </div>
@endsection
