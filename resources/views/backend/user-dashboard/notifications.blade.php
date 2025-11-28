@section('title')
    {{__('Notifications')}}
@endsection
@extends('layouts.backend.app')
@section('header')
    @include('layouts.backend.header')
@endsection
@section('breadcrumb')
    @parent
    <li class="breadcrumb-item active">{{ __('Notifications') }}</li>
@endsection

@section('content')      
<!-- Dashboard Start-->
    <div class="dashboard container">
        <!-- Sidebar -->
        @include('layouts.backend.sidebar')
        <!-- Main Content -->
        <div class="main-content">
            <div class="container">
                <h2 class="mb-4">Notifications</h2>
                <a href="">
                <div class="notification alert alert-info">
                    <strong>Info!</strong> This is an informational notification.
                    <div class="float-right">
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </div>
                </div>
                </a>
                <a href="">
                <div class="notification alert alert-warning">
                    <strong>Warning!</strong> This is a warning notification.
                    <div class="float-right">
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </div>
                </div>
                </a>
                <a href="">
                <div class="notification alert alert-success">
                    <strong>Success!</strong> This is a success notification.
                    <div class="float-right">
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </div>
                </div>
                </a>
            </div>
        </div>
    </div>
<!-- Dashboard End-->
@endsection
@section('footer')
    @include('layouts.backend.footer')
@endsection
