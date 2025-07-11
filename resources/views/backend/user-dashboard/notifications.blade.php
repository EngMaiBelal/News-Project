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
<aside class="col-md-3 nav-sticky dashboard-sidebar">
  <!-- User Info Section -->
  <div class="user-info text-center p-3">
      <img src="{{ auth()->user()->image}}" alt="User Image" class="rounded-circle mb-2"
          style="width: 80px; height: 80px; object-fit: cover" />
      <h5 class="mb-0" style="color: #ff6f61">
          {{ ucfirst(Auth::user()->name) }}
      </h5>
  </div>

  <!-- Sidebar Menu -->
  <div class="list-group profile-sidebar-menu">
      <a href="{{ route('home.user.dashboard.profile') }}" class="list-group-item list-group-item-action active menu-item"
          data-section="profile">
          <i class="fas fa-user"></i> {{__('Profile')}}
      </a>
      <a href="{{ route('home.user.dashboard.notifications.index') }}" class="list-group-item list-group-item-action menu-item"
          data-section="notifications">
          <i class="fas fa-bell"></i> {{__('Notifications')}}
      </a>
      <a href="{{ route('home.user.dashboard.settings.index') }}" class="list-group-item list-group-item-action menu-item" data-section="settings">
          <i class="fas fa-cog"></i> {{__('Settings')}}
      </a>
  </div>
</aside>

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
