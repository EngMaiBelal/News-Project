@section('title')
    {{__('Confirm-Password')}}
@endsection
@extends('layouts.frontend.app')
@section('header')
    @include('layouts.frontend.header')
@endsection
@section('breadcrumb')
@parent
<li class="breadcrumb-item active">{{ __('Confirm Password') }}</li>
@endsection
@section('content')
<div class="container mt-4">
    <div class="alert alert-warning text-sm">
        {{ __('This is a secure area of the application. Please confirm your password before continuing.') }}
    </div>

    <form method="POST" action="{{ route('password.confirm') }}">
        @csrf

        <div class="form-group">
            <label for="password">{{ __('Password') }}</label>
            <input id="password" type="password"
                   class="form-control @error('password') is-invalid @enderror"
                   name="password" required autocomplete="current-password">
            @error('password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="form-group text-right mt-4">
            <button type="submit" class="btn btn-primary">
                {{ __('Confirm') }}
            </button>
        </div>
    </form>
</div>
@endsection
@section('footer')
    @include('layouts.frontend.footer')
@endsection