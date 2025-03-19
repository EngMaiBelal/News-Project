@extends('layouts.frontend.app')
@section('header')
    @include('layouts.frontend.header')
@endsection
@section('breadcrumb')
    @parent
@endsection

@section('content')
    @php
        $main_posts = $posts->take(4);
    @endphp
    <!-- Top News Start-->
    <div class="top-news">
        <div class="container">
            <div class="row">
                <div class="col-md-6 tn-left">
                    <div class="row tn-slider">
                        @foreach ($latest_posts as $post)
                            <div class="col-md-6">
                                <div class="tn-img">
                                    <img src={{ $post->imagePosts->first()->path }} />
                                    <div class="tn-title">
                                        <a href="{{ route('home.posts.show', $post->slug) }}" title="{{ $post->title }}">{{ $post->title }}</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="col-md-6 tn-right">
                    <div class="row">
                        @foreach($main_posts as $post)
                            <div class="col-md-6">
                                <div class="tn-img">
                                    <img src={{ $post->imagePosts->first()->path }} />
                                    <div class="tn-title">
                                        <a href="{{ route('home.posts.show', $post->slug) }}" title="{{ $post->title }}">{{ $post->title }}</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Top News End-->

    <!-- Category News Start-->
    <div class="cat-news">
        <div class="container">
            <div class="row">
                @foreach ( $categories as $category )
                    <div class="col-md-6">
                        <h2>{{ $category->name }}</h2>
                        <div class="row cn-slider">
                            @foreach ( $category->posts as $post)
                                <div class="col-md-6">
                                    <div class="cn-img">
                                        <img src="{{ $post->imagePosts->first()->path }}" />
                                        <div class="cn-title">
                                            <a href="{{ route('home.posts.show', $post->slug) }}" title="{{ $post->title }}">{{ $post->title }}</a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- Category News End-->

    <!-- Tab News Start-->
    <div class="tab-news">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <ul class="nav nav-pills nav-justified">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="pill" href="#popular">Popular News</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#oldest">Oldest News</a>
                        </li>
                    </ul>

                    <div class="tab-content">

                        <!-- Popular News -->
                        <div id="popular" class="container tab-pane active">
                            @foreach ($popular_posts as $post)
                                <div class="tn-news">
                                    <div class="tn-img">
                                        <img src={{ $post->imagePosts->first()->path }} />
                                    </div>
                                    <div class="tn-title">
                                        <a href="{{ route('home.posts.show', $post->slug) }}" title="{{ $post->title }}">{{ $post->title }}</a>
                                        <p class="" style="color:#63b59f">Comments Number: ( {{ $post->comments_count }} )</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>

                        <!-- Oldest News -->
                        <div id="oldest" class="container tab-pane fade">
                            @foreach ($oldest_news as $post)
                                <div class="tn-news">
                                    <div class="tn-img">
                                        <img src={{ $post->imagePosts->first()->path }} />
                                    </div>
                                    <div class="tn-title">
                                        <a href="{{ route('home.posts.show', $post->slug) }}" title="{{ $post->title }}">{{ $post->title }}</a>
                                        <p class="pt-2" style="color: #63b59f">{{ $post->created_at }}</p>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <ul class="nav nav-pills nav-justified">
                        <!-- latest Views -->
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="pill" href="#l-news">Latest News</a>
                        </li>

                        <!-- Most Read -->
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#m-read">Most Read</a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <!-- Latest News -->
                        <div id="l-news" class="container tab-pane active">
                            @foreach ($latest_posts as $post)
                                <div class="tn-news">
                                    <div class="tn-img">
                                        <img src={{ $post->imagePosts->first()->path }} />
                                    </div>
                                    <div class="tn-title">
                                        <a href="{{ route('home.posts.show', $post->slug) }}" title="{{ $post->title }}">{{ $post->title }}</a>
                                        <p class="pt-2" style="color: #63b59f">{{ $post->created_at }}</p>
                                    </div>
                                </div>
                            @endforeach
                        </div>

                        <!-- Most Read -->
                        <div id="m-read" class="container tab-pane fade">
                            @foreach ($most_views as $post)
                                <div class="tn-news">
                                    <div class="tn-img">
                                        <img src="{{ $post->imagePosts->first()->path }}" />
                                    </div>
                                    <div class="tn-title">
                                        <a href="{{ route('home.posts.show', $post->slug) }}" title="{{ $post->title }}">{{ $post->title }}</a>
                                        <p class="" style="color: #63b59f">Views Number: ( {{ $post->views_num }} )</p>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Tab News Start-->

    <!-- Main News Start-->
    <div class="main-news">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="row">
                        {{-- // all posts --}}
                        @foreach ($posts as $post)
                            <div class="col-md-4">
                                <div class="mn-img">
                                    <img src="{{ $post->imagePosts->first()->path }}" />
                                    {{-- <img src="{{ Storage::url('images/' . $post->imagePosts->first()->name)}}" /> --}}
                                    <div class="mn-title">
                                        <a href="{{ route('home.posts.show', $post->slug) }}" title="{{ $post->title }}">{{ $post->title }}</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        {{ $posts->links() }}
                    </div>
                </div>

                <div class="col-lg-3">
                    <div class="mn-list">
                        <h2>Read More</h2>
                        <!-- Check if there are any posts -->
                        <ul>
                            @if($read_more_posts && $read_more_posts->isNotEmpty())
                            @foreach($read_more_posts as $post)
                                <li>
                                    <a href="{{ route('home.posts.show', $post->slug) }}" title="{{ $post->title }}">{{ $post->title }}</a>
                                    <p class="pt-2" style="color: #63b59f">{{ $post->created_at }}</p>
                                </li>
                            @endforeach
                        </ul>
                         @else
                            <p>No posts available.</p>
                        @endif
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

