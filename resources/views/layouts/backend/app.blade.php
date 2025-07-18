<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title> {{ config('app.name', 'News') }} | @yield('title')</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <!-- Favicon -->
    <link href={{ Storage::url('images/' . $settings->favicon) }} rel="icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" rel="stylesheet" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- CSS Libraries -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    
    <!-- Template Stylesheet -->
    <link href="{{ asset('assets/frontend/lib/slick/slick.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/frontend/lib/slick/slick-theme.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/frontend/css/style.css') }}" rel="stylesheet" />

    <!-- FileInput CSS -->
    <link href="{{ asset('assets/vendor/file-input/css/fileinput.min.css') }}" rel="stylesheet">
    
    <!-- Summer Note CSS -->
    <link href="{{ asset('assets/vendor/summer-note/summernote-bs4.min.css') }}" rel="stylesheet">
    
    @yield('css')
</head>

<body>
    <div id="app">

        @yield('header')
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container">
                <div class="row align-items-center brand">
                    <div class="col-md-8">

                        <ul class="breadcrumb">
                            @section('breadcrumb')
                                <li class="breadcrumb-item"><a href="{{ route('home.index') }}">Home</a></li>
                            @show
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <main class="py-4">
            @yield('content')
        </main>

        @yield('footer')
        @stack('js')
    </div>
</body>

</html>
