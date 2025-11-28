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
        @include('layouts.backend.sidebar')

        <!-- Main Content -->
          <div class="main-content">
            <!-- Settings Section -->
            <section id="settings" class="content-section">
              <h2>Settings</h2>
              <form action="{{ route('home.user.dashboard.settings.update') }}" class="settings-form" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                  <label for="name">Name:</label>
                  <input name="name" type="text" id="name" value="{{ ucfirst(auth()->user()->name) }}" />
                  @error('name') 
                    <div class="alert alert-danger">
                      {{ $message }}
                    </div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="username">Username:</label>
                  <input name="user_name" type="text" id="username" value="{{ ucfirst(auth()->user()->user_name) }}" />
                  @error('user_name') 
                    <div class="alert alert-danger">
                      {{ $message }}
                    </div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="email">Email:</label>
                  <input name="email" type="email" id="email" value="{{ auth()->user()->email }}" />
                  @error('email') 
                    <div class="alert alert-danger">
                      {{ $message }}
                    </div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="phone">Phone:</label>
                  <input name="phone" type="text" id="phone" value="{{ auth()->user()->phone }}" />
                  @error('phone') 
                    <div class="alert alert-danger">
                      {{ $message }}
                    </div>
                  @enderror
                </div>
                <div class="form-group">
                    <label for="profile-image">Profile Image:</label>
                    <div class="d-flex justify-content-between w-100">

                        @if(auth()->user()->image)
                            <img src="{{ asset(auth()->user()->image) }}" id="preview-image" alt="Profile Image" style="width: 100px; height: 100px; object-fit: cover; border-radius: 5px;">
                        @endif
    
                      {{-- change image --}}
                      <input name="image" type="file" id="profile-image" accept="image/*" class="flex-grow-1"/>
                      
                    </div>
                    {{-- Current Image --}}
                  @error('image') 
                      <div class="alert alert-danger">
                          {{ $message }}
                      </div>
                  @enderror
              </div>
                <div class="form-group">
                  <label for="country">Country:</label>
                  <input name="country" type="text" id="country" value="{{ auth()->user()->country }}" />
                  @error('country') 
                    <div class="alert alert-danger">
                      {{ $message }}
                    </div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="city">City:</label>
                  <input name="city" type="text" id="city" value="{{ auth()->user()->city }}">
                  @error('city') 
                    <div class="alert alert-danger">
                      {{ $message }}
                    </div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="street">Street:</label>
                  <input name="street" type="text" id="street" value="{{ auth()->user()->street }}"/>
                  @error('street') 
                    <div class="alert alert-danger">
                      {{ $message }}
                    </div>
                  @enderror
                </div>
                <div class="form-group">
                  <label for="bio">Bio:</label>
                  <textarea name="bio" id="bio" placeholder="Tell us about yourself..."></textarea>
                  @error('bio') 
                    <div class="alert alert-danger">
                      {{ $message }}
                    </div>
                  @enderror
                </div>
                <button type="submit" class="save-settings-btn">
                  Save Changes
                </button>
              </form>

              <!-- Form to change the password -->
              <form action="{{ route('home.user.dashboard.settings.update.password') }}" class="change-password-form" method="post">
                @csrf
                <h2>Change Password</h2>
                <div class="form-group">
                  <label for="currentPassword">Current Password:</label>
                  <input name="current_password" type="password" id="currentPassword" placeholder="Enter Current Password"/>
                </div>
                  @error('current_password') 
                    <div class="alert alert-danger">
                      {{ $message }}
                    </div>
                  @enderror
                <div class="form-group mb-3">
                  <label for="newPassword">New Password:</label>
                  <input name="password" type="password" id="newPassword" placeholder="Enter New Password"/>
                  <span class="password-hint">Password must be at least 8 characters long and include letters, numbers, and special characters.</span>
                </div>
                @error('password') 
                  <div class="alert alert-danger">
                    {{ $message }}
                  </div>
                @enderror
                <div class="form-group">
                  <label for="confirm-password">Confirm New Password:</label>
                  <input name="password_confirmation" type="password" id="confirm-password" placeholder="Enter Confirm New"/>
                </div>
                @error('confirm_password') 
                  <div class="alert alert-danger">
                    {{ $message }}
                  </div>
                @enderror
                <button type="submit" class="w-100 save-settings-btn">
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
@push('js')
        <script>
            const input = document.getElementById('profile-image');
            const preview = document.getElementById('preview-image');
    
            input.addEventListener('change', function(e) {
                const file = e.target.files[0];
                if(file) {
                    preview.src = URL.createObjectURL(file);
                }
            });
        </script>
@endpush