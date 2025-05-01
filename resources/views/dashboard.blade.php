@extends('layouts.frontend.app')
@section('header')
    @include('layouts.frontend.header')
@endsection
@section('breadcrumb')
@parent
<li class="breadcrumb-item active">{{ __('Dashboard') }}</li>
@endsection

@section('content')
<div class="container mt-4">

    <div class="mb-4">
        <h2 class="h4 font-weight-semibold text-dark">
            {{ __('Dashboard') }}
        </h2>
    </div>

    <div class="py-4">
        <div class="card shadow-sm">
            <div class="card-body text-dark">
                {{ __("You're logged in!") }}
            </div>
        </div>
    </div>

</div>
@endsection
@section('footer')
    @include('layouts.frontend.footer')
@endsection