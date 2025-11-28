@section('title')
    {{__('Register')}}
@endsection
@extends('layouts.frontend.app')
@section('header')
    @include('layouts.frontend.header')
@endsection
@section('breadcrumb')
@parent
<li class="breadcrumb-item active">{{ __('Register') }}</li>
@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>
                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}" id="user_register" enctype="multipart/form-data">
                        @csrf
                        {{-- Name --}}
                        <div class="mb-3">
                            <label for="name" class="form-label">{{ __('Name') }}</label>
                            <input id="name" type="text"
                                   class="form-control @error('name') is-invalid @enderror"
                                   name="name" value="{{ old('name') }}" required autofocus autocomplete="name">
                            @error('name')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        {{-- Username --}}
                        <div class="mb-3">
                            <label for="user_name" class="form-label">{{ __('User Name') }}</label>
                            <input id="user_name" type="text"
                                   class="form-control @error('user_name') is-invalid @enderror"
                                   name="user_name" value="{{ old('user_name') }}" required autocomplete="user_name">
                            @error('user_name')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        {{-- Phone --}}
                        <div class="mb-3">
                            <label for="phone" class="form-label">{{ __('Phone') }}</label>
                            <input id="phone" type="tel"
                                   class="form-control @error('phone') is-invalid @enderror"
                                   name="phone" value="{{ old('phone') }}" required autocomplete="phone">
                            @error('phone')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        {{-- Email --}}
                        <div class="mb-3">
                            <label for="email" class="form-label">{{ __('Email') }}</label>
                            <input id="email" type="email"
                                   class="form-control @error('email') is-invalid @enderror"
                                   name="email" value="{{ old('email') }}" required autocomplete="username">
                            @error('email')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        {{-- Country --}}
                        <div class="mb-3">
                            <label for="country" class="form-label">{{ __('Country') }}</label>
                            <input id="country" type="text"
                                class="form-control @error('country') is-invalid @enderror"
                                name="country" value="{{ old('country') }}" required autocomplete="country">
                            @error('country')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        {{-- City --}}
                        <div class="mb-3">
                            <label for="city" class="form-label">{{ __('City') }}</label>
                            <input id="city" type="text"
                                class="form-control @error('city') is-invalid @enderror"
                                name="city" value="{{ old('city') }}" required autocomplete="city">
                            @error('city')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        {{-- Street --}}
                        <div class="mb-3">
                            <label for="street" class="form-label">{{ __('Street') }}</label>
                            <input id="street" type="text"
                                class="form-control @error('street') is-invalid @enderror"
                                name="street" value="{{ old('street') }}" required autocomplete="street">
                            @error('street')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        {{-- Image --}}
                        <div class="mb-3">
                            <label for="image" class="form-label">{{ __('Image') }}</label>
                            <input id="image" type="file"
                                class="form-control @error('image') is-invalid @enderror"
                                name="image" value="{{ old('image') }}" required autocomplete="image">
                            @error('image')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        {{-- Password --}}
                        <div class="mb-3">
                            <label for="password" class="form-label">{{ __('Password') }}</label>
                            <input id="password" type="password"
                                   class="form-control @error('password') is-invalid @enderror"
                                   name="password" required autocomplete="new-password">
                            <span class="password-hint">Password must be at least 8 characters long and include letters, numbers, and special characters.</span>
                            @error('password')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        {{-- Confirm Password --}}
                        <div class="mb-3">
                            <label for="password_confirmation" class="form-label">{{ __('Confirm Password') }}</label>
                            <input id="password_confirmation" type="password"
                                   class="form-control @error('password_confirmation') is-invalid @enderror"
                                   name="password_confirmation" required autocomplete="new-password">
                            @error('password_confirmation')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="d-flex justify-content-between align-items-center mt-4">
                            <a class="text-decoration-none" href="{{ route('login') }}">
                                {{ __('Already registered?') }}
                            </a>
                            {{-- Bio --}}
                            <div class="mb-3">
                                <label for="bio" class="form-label">{{ __('bio') }}</label>
                                <input id="bio" type="text"
                                    class="form-control @error('bio') is-invalid @enderror"
                                    name="bio" value="{{ old('bio') }}" required autocomplete="bio">
                                @error('bio')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                            <button type="submit" class="btn btn-primary">
                                {{ __('Register') }}
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer')
    @include('layouts.frontend.footer')
@endsection