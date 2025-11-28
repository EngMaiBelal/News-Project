
<nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
    <div class="container">
        <div class="d-flex justify-content-center w-100">
            <div>
                <a href="{{ route('home.index') }}" class="mr-2">
                    <img src={{ Storage::url('images/' . $settings->logo) }} alt="Logo" style="width: 5rem; border-radius:2.5rem !important"/>
                </a>
                <a class="navbar-brand" href="{{ route('home.index') }}">
                    {{ config('app.name', 'News') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
  
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav m-auto">
                        <div class="b-ads">
                            <a href="" class="m-auto">
                                <img src={{ Storage::url('images/hero.jpg') }}
                                    alt="Image" width="320px" height="100px"/>
                            </a>
                        </div>
                </ul>
                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ml-auto">
                    <!-- Authentication Links -->
                    @guest
                        @if (Route::has('login'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                        @endif
    
                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @endif
                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ ucfirst(Auth::user()->name) }}
                            </a>
    
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('home.user.dashboard.profile.post.index') }}">
                                    {{ __('Profile') }}
                                </a>
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                                if(confirm('Are You Sure')){ document.getElementById('logout-form').submit();}">
                                    {{ __('Logout') }}
                                </a>
                
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </div>
</nav>

<!-- Nav Bar Start -->
<div class="nav-bar">
    <div class="container">
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a href="#" class="navbar-brand">MENU</a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav mr-auto">
                    <a href="{{route('home.index')}}" class="nav-item nav-link active">Home</a>
                    <div class="nav-item dropdown">
                        <a href="" class="nav-link dropdown-toggle" data-toggle="dropdown">Categories</a>
                        <div class="dropdown-menu">
                            @foreach ( $categories as $category)
                                <a href="{{route('home.category.show', $category->slug)}}" class="dropdown-item" title="{{  $category->name }}">{{ $category->name }}</a>
                            @endforeach
                        </div>
                    </div>
                    {{-- <a href="{{ route('home.about')}}" class="nav-item nav-link">Single Page</a> --}}
                    <a href="{{ route('home.contact.index') }}" class="nav-item nav-link">Contact Us</a>
                    <a href="{{ route('home.user.dashboard.profile.post.index') }}" class="nav-item nav-link">Dashboard</a>
                </div>
                <div class="social ml-auto">
                    @auth<a href="{{ route('home.user.dashboard.notifications.index') }}" title="notification"><i class="fas fa-bell"></i></a>@endauth
                    <a href="{{ $settings->twitter }}" title="twitter"><i class="fab fa-twitter"></i></a>
                    <a href="{{ $settings->facebook }}" title="facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="{{ $settings->youtube }}" title="youtube"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Nav Bar End -->
