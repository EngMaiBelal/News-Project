@extends('layouts.frontend.app')
@section('header')
    @include('layouts.frontend.header')
@endsection
@section('breadcrumb')
@parent
<li class="breadcrumb-item active">{{ __('Rest Password') }}</li>
@endsection

@section('content')
<div class="container mt-4 w-50">
    <form method="POST" action="{{ route('password.store') }}">
        @csrf

        <!-- Password Reset Token -->
        <input type="hidden" name="token" value="{{ $request->route('token') }}">

        <!-- Email Address -->
        <div class="form-group">
            <label for="email">{{ __('Email') }}</label>
            <input id="email" type="email"
                   class="form-control @error('email') is-invalid @enderror"
                   name="email"
                   value="{{ old('email', $request->email) }}"
                   required autofocus autocomplete="username">
            @error('email')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <!-- Password -->
        <div class="form-group">
            <label for="password">{{ __('Password') }}</label>
            <input id="password" type="password"
                   class="form-control @error('password') is-invalid @enderror"
                   name="password"
                   required autocomplete="new-password">
            @error('password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <!-- Confirm Password -->
        <div class="form-group">
            <label for="password_confirmation">{{ __('Confirm Password') }}</label>
            <input id="password_confirmation" type="password"
                   class="form-control @error('password_confirmation') is-invalid @enderror"
                   name="password_confirmation"
                   required autocomplete="new-password">
            @error('password_confirmation')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="form-group text-right mt-4">
            <button type="submit" class="btn btn-primary">
                {{ __('Reset Password') }}
            </button>
        </div>
    </form>
</div>
@endsection
@section('footer')
    @include('layouts.frontend.footer')
@endsection