@extends('layouts.user-new')
@section('content')
<div class="body-content body-content-lg">
    <package-component :transaction="{{ $transaction }}" :rate="{{ $rate }}" :package="{{ $package }}" :bank="{{ json_encode(config('bank')) }}"></package-component>
</div>
@endsection
