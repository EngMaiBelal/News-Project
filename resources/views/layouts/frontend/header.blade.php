<!-- Top Bar Start -->
<div class="top-bar">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="tb-contact">
                    <p><i class="fas fa-envelope"></i>{{ $settings->email }}</p>
                    <p><i class="fas fa-phone-alt"></i>{{ $settings->phone }}</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="tb-menu">
                    <a href="{{ route('home.about') }}">About</a>
                    <a href="{{ route('home.privacy') }}">Privacy</a>
                    <a href="{{ route('home.terms') }}">Terms</a>
                    <a href="{{ route('home.contact.index') }}">Contact</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Top Bar Start -->

<!-- Brand Start -->
<div class="brand">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-3 col-md-4">
                <div>
                    <a href="index.html" >
                        <img src={{ Storage::url('images/' . $settings->logo) }} alt="Logo" style="width: 5rem; border-radius:2.5rem !important"/>
                    </a>
                </div>
            </div>
            <div class="col-lg-6 col-md-4">
                <div class="b-ads">
                    <a href="" class="m-auto">
                        <img src={{ Storage::url('images/download.jpg') }}
                            alt="Image" width="320px" height="100px"/>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4">
                <form action={{ route('home.search') }} method="POST">
                    @csrf
                    <div class="b-search">
                        <input name="search" type="text" placeholder="Search" />
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Brand End -->

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
                    <a href="{{ route('home.about')}}" class="nav-item nav-link">Single Page</a>
                    <a href="{{ route('dashboard') }}" class="nav-item nav-link">Dashboard</a>
                    <a href="{{ route('home.contact.index') }}" class="nav-item nav-link">Contact Us</a>
                </div>
                <div class="social ml-auto">
                    <a href="{{ $settings->twitter }}" title="twitter"><i class="fab fa-twitter"></i></a>
                    <a href="{{ $settings->facebook }}" title="facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="{{ $settings->youtube }}" title="youtube"><i class="fab fa-youtube"></i></a>
                    {{-- <a href="{{ $settings->phone }}"><i class="fab fa-linkedin-in"></i></a> --}}
                    {{-- <a href="{{ $settings->phone }}"><i class="fab fa-instagram"></i></a> --}}
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Nav Bar End -->
