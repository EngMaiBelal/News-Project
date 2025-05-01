@extends('layouts.frontend.app')
@section('header')
    @include('layouts.frontend.header')
@endsection
@section('breadcrumb')
@parent
<li class="breadcrumb-item active">{{ __('Forgot Password') }}</li>
@endsection
@section('content')
<div class="container mt-4 w-50">
    <div class="alert alert-info text-sm">
        {{ __('Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.') }}
    </div>

    @if (session('status'))
        <div class="alert alert-success mb-4">
            {{ session('status') }}
        </div>
    @endif

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <div class="form-group">
            <label for="email">{{ __('Email') }}</label>
            <input type="email" class="form-control @error('email') is-invalid @enderror"
                   id="email" name="email" value="{{ old('email') }}" required autofocus>
            @error('email')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="form-group text-right mt-4">
            <button type="submit" class="btn btn-primary">
                {{ __('Email Password Reset Link') }}
            </button>
        </div>
    </form>
</div>
@endsection
@section('footer')
    @include('layouts.frontend.footer')
@endsection