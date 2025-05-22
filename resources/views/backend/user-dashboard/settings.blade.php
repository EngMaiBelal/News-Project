@section('title')
    {{__('Settings')}}
@endsection
@extends('layouts.backend.app')
@section('header')
    @include('layouts.backend.header')
@endsection
@section('breadcrumb')
    @parent
    <li class="breadcrumb-item active">{{ __('Settings') }}</li>
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
        <!-- Settings Section -->
        <section id="settings" class="content-section">
          <h2>Settings</h2>
          <form class="settings-form">
            <div class="form-group">
              <label for="username">Username:</label>
              <input type="text" id="username" value="{{ ucfirst(auth()->user()->name) }}" />
            </div>
            <div class="form-group">
              <label for="email">Email:</label>
              <input type="email" id="email" value="{{ auth()->user()->email }}" />
            </div>
            <div class="form-group">
              <label for="profile-image">Profile Image:</label>
              <input type="file" id="profile-image" accept="image/*" />
            </div>
            <div class="form-group">
              <label for="country">Country:</label>
              <input
                type="text"
                id="country"
                placeholder="Enter your country"
              />
            </div>
            <div class="form-group">
              <label for="city">City:</label>
              <input type="text" id="city" placeholder="Enter your city" />
            </div>
            <div class="form-group">
              <label for="street">Street:</label>
              <input type="text" id="street" placeholder="Enter your street" />
            </div>
            <div class="form-group">
              <label for="bio">Bio:</label>
              <textarea
                id="bio"
                placeholder="Tell us about yourself..."
              ></textarea>
            </div>
            <button type="submit" class="save-settings-btn">
              Save Changes
            </button>
          </form>

          <!-- Form to change the password -->
          <form class="change-password-form">
            <h2>Change Password</h2>
            <div class="form-group">
              <label for="current-password">Current Password:</label>
              <input
                type="password"
                id="current-password"
                placeholder="Enter Current Password"
              />
            </div>
            <div class="form-group">
              <label for="new-password">New Password:</label>
              <input
                type="password"
                id="new-password"
                placeholder="Enter New Password"
              />
            </div>
            <div class="form-group">
              <label for="confirm-password">Confirm New Password:</label>
              <input
                type="password"
                id="confirm-password"
                placeholder="Enter Confirm New "
              />
            </div>
            <button type="submit" class="change-password-btn">
              Change Password
            </button>
          </form>
        </section>
      </div>
    </div>
    <!-- Dashboard End-->
@endsection
@section('footer')
    @include('layouts.backend.footer')
@endsection