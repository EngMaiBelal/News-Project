@extends('layouts.frontend.app')
@section('header')
    @include('layouts.frontend.header')
@endsection

@section('content')
    <!-- Breadcrumb Start -->
    <div class="breadcrumb-wrap">
        <div class="container">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Categories</a></li>
                <li class="breadcrumb-item active">{{ $category_by_slug->name }}</li>
            </ul>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <!-- Main News Start-->
    <div class="main-news">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="row">
                        {{-- // all posts --}}
                        @forelse( $posts as $post)
                            <div class="col-md-4">
                                <div class="mn-img">
                                    <img src="{{ $post->imagePosts->first()->path }}" />
                                    <div class="mn-title">
                                        <a href="{{ route('home.post.show', $post->slug) }}" title="{{ $post->title }}">{{ $post->title }}</a>
                                    </div>
                                </div>
                            </div>
                        @empty
                        <div class="col-md-12">
                            <div class="alert-info text-center p-5">
                                No Posts Yet !!!
                            </div>
                        </div>
                        @endforelse
                        <div class="col-md-12">
                            {{ $posts->links() }}  
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="mn-list">
                        <h2>Other Categories</h2>
                        <!-- Check if there are any posts -->
                        <ul>
                            @forelse ($categories as $category)
                                <li>
                                    <a href="{{ route('home.show.category', $category->slug) }}" title={{ $category->name }}>{{ $category->name }}</a>
                                </li>
                            @empty
                                <li class="alert-info">
                                    No Categories Yet !!!
                                </li>
                            @endforelse
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main News End-->
@endsection
@section('footer')
    @include('layouts.frontend.footer')
@endsection
