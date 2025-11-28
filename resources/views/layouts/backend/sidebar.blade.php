<!-- Sidebar -->
<aside class="col-md-3 nav-sticky dashboard-sidebar">
    <!-- User Info Section -->
    <div class="user-info text-center p-3">
        <img src="{{ asset(auth()->user()->image) }}" alt="User Image" class="rounded-circle mb-2"
            style="width: 80px; height: 80px; object-fit: cover" />
        <h5 class="mb-0" style="color: #63B59F">
            {{ ucfirst(Auth::user()->name) }}
        </h5>
    </div>

    <!-- Sidebar Menu -->
    <div class="list-group profile-sidebar-menu">
        <a href="{{ route('home.user.dashboard.profile.post.index') }}" class="list-group-item list-group-item-action {{ request()->routeIs('home.user.dashboard.profile') ? 'active' : '' }} menu-item"
            data-section="profile">
            <i class="fas fa-user"></i> {{__('Profile')}}
        </a>
        <a href="{{ route('home.user.dashboard.notifications.index') }}" class="list-group-item list-group-item-action {{ request()->routeIs('home.user.dashboard.notifications.index') ? 'active' : '' }} menu-item"
            data-section="notifications">
            <i class="fas fa-bell"></i> {{__('Notifications')}}
        </a>
        <a href="{{ route('home.user.dashboard.settings.index') }}" class="list-group-item list-group-item-action menu-item" {{ request()->routeIs('home.user.dashboard.settings.index') ? 'active' : '' }} data-section="settings">
            <i class="fas fa-cog"></i> {{__('Settings')}}
        </a>
    </div>
</aside>