<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Profile') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
            <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg">
                <div class="max-w-xl">
                    @include('profile.partials.update-profile-information-form')
                </div>
            </div>

            <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg">
                <div class="max-w-xl">
                    @include('profile.partials.update-password-form')
                </div>
            </div>

            <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg">
                <div class="max-w-xl">
                    @include('profile.partials.delete-user-form')
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

{{-- 
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

    <!-- Header Section -->
    <div class="mb-4">
        <h2 class="h4 font-weight-semibold text-dark">
            {{ __('Profile') }}
        </h2>
    </div>

    <!-- Main Content Section -->
    <div class="row">
        <div class="col-lg-8">

            <!-- Update Profile Information Card -->
            <div class="card mb-4 shadow-sm">
                <div class="card-body">
                    @include('profile.partials.update-profile-information-form')
                </div>
            </div>

            <!-- Update Password Card -->
            <div class="card mb-4 shadow-sm">
                <div class="card-body">
                    @include('profile.partials.update-password-form')
                </div>
            </div>

            <!-- Delete User Card -->
            <div class="card mb-4 shadow-sm">
                <div class="card-body">
                    @include('profile.partials.delete-user-form')
                </div>
            </div>

        </div>
    </div>

</div>
@endsection

@section('footer')
    @include('layouts.frontend.footer')
@endsection --}}

