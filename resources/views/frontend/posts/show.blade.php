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
                <li class="breadcrumb-item"><a href="#">Posts</a></li>
                <li class="breadcrumb-item active">{{ $post_by_slug->title }}</li>
            </ul>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Single News Start-->
    <div class="single-news">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Carousel -->
                    <div id="newsCarousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            @foreach ($post_by_slug->imagePosts as $index => $image)
                                <li data-target="#newsCarousel" data-slide-to="{{ $index }}"
                                    class="@if ($index == 0) active @endif"></li>
                            @endforeach
                        </ol>
                        <div class="carousel-inner">
                            @foreach ($post_by_slug->imagePosts as $index => $image)
                                <div class="carousel-item @if ($index == 0) active @endif">
                                    <img src={{ $image->path }} class="d-block w-100" alt="First Slide">

                                    <div class="carousel-caption d-none d-md-block">
                                        <h5> {{ $post_by_slug->title }}</h5>
                                        <p>
                                            {{ substr($post_by_slug->description, 0, 80) }}...
                                        </p>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <a class="carousel-control-prev" href="#newsCarousel" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#newsCarousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <div class="sn-content" id="postContent">
                        Breaking News: {{ $post_by_slug->title }} </br>
                        Date: {{ $post_by_slug->created_at }} </br> </br>
                        {{ $post_by_slug->description }}
                    </div>

                    <!-- Comment Section -->
                    <div class="comment-section">
                        <!-- Comment Input -->
                        <form id="addComment">
                                <div class="comment-input">
                                @csrf
                                <input type="text" name="value" placeholder="Add a comment..."/>
                                <input type="hidden" name="post_id" value={{ $post_by_slug->id }}>
                                <input type="hidden" name="user_id" value=1>
                                {{-- <input type="text" name="user_id" value={{ auth()->user()->id }} hidden/> --}}
                                <button type="submit">Add Comment</button>
                            </div>
                        </form>

                        <!-- Display Comments -->
                        <div class="comments">
                            @foreach ($post_by_slug->comments as $comment)
                                <div class="comment">
                                    <img src={{ Storage::url('images/') . $comment->user->image }} alt="User Image"
                                        class="comment-img" />
                                    <div class="comment-content">
                                        <span class="username">{{ $comment->user->user_name }}</span>
                                        <p class="comment-text">{{ $comment->value }}</p>
                                    </div>
                                </div>
                            @endforeach
                            <!-- Add more comments here for demonstration -->
                        </div>

                        <!-- Show More Button -->

                        <button id="showMoreBtn" class="show-more-btn">
                            Show more
                        </button>
                    

                            <div class="p-3 text-center">
                                <span class=" comments-count" value="{{ $post_by_slug->comments_count }}"> Comments Number: (
                                    {{ $post_by_slug->comments_count }} )</span>
                            </div>
                    </div>

                    <!-- Related News -->
                    <div class="sn-related">
                        <h2>Related News</h2>
                        <div class="row sn-slider">
                            @foreach ($posts_of_category as $post)
                                <div class="col-md-4">
                                    <div class="sn-img">
                                        <img src={{ $post->imagePosts->first()->path }} class="img-fluid"
                                            alt={{ $post->title }} />
                                        <div class="sn-title">
                                            <a href={{ route('home.post.show', $post->slug) }}
                                                title="{{ $post->title }}">{{ $post->title }}</a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="sidebar">
                        <div class="sidebar-widget">
                            <h2 class="sw-title">In This Category</h2>
                            <div class="news-list">
                                @foreach ($posts_of_category as $post)
                                    <div class="nl-item">
                                        <div class="nl-img">
                                            <img src={{ $post->imagePosts->first()->path }} />
                                        </div>
                                        <div class="nl-title">
                                            <a href={{ route('home.post.show', $post->slug) }}
                                                title="{{ $post->title }}">{{ $post->title }}</a>
                                                <p class="" style="color: #63b59f">Date :(
                                                    {{ $post->created_at }} )</p>
                                        
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>

                        <div class="sidebar-widget">
                            <div class="image">
                                <a href=""><img src={{ Storage::url('images/download.jpg') }} alt="Image"
                                        width="320px" height="150px" /></a>
                            </div>
                        </div>

                        <div class="sidebar-widget">
                            <div class="tab-news">
                                <ul class="nav nav-pills nav-justified">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="pill" href="#popular">Popular</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="pill" href="#mostViews">MostViews</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="pill" href="#latest">Latest</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div id="popular" class="container tab-pane active">
                                        @foreach ($popular_posts as $post)
                                            <div class="tn-news">
                                                <div class="tn-img">
                                                    <img src={{ $post->imagePosts->first()->path }} />
                                                </div>
                                                <div class="tn-title">
                                                    <a href="{{ route('home.post.show', $post->slug) }}"
                                                        title="{{ $post->title }}">{{ $post->title }}</a>
                                                    <p class="" style="color:#63b59f">Comments Number: (
                                                        {{ $post->comments_count }} )</p>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                    <div id="mostViews" class="container tab-pane fade">
                                        @foreach ($most_views as $post)
                                            <div class="tn-news">
                                                <div class="tn-img">
                                                    <img src="{{ $post->imagePosts->first()->path }}" />
                                                </div>
                                                <div class="tn-title">
                                                    <a href="{{ route('home.post.show', $post->slug) }}"
                                                        title="{{ $post->title }}">{{ $post->title }}</a>
                                                    <p class="" style="color: #63b59f">Views Number: (
                                                        {{ $post->views_num }} )</p>
                                                </div>
                                            </div>
                                        @endforeach

                                    </div>
                                    <div id="latest" class="container tab-pane fade">
                                        @foreach ($latest_posts as $post)
                                            <div class="tn-news">
                                                <div class="tn-img">
                                                    <img src="{{ $post->imagePosts->first()->path }}"
                                                        alt={{ $post->title }} />
                                                </div>
                                                <div class="tn-title">
                                                    <a href="{{ route('home.post.show', $post->slug) }}"
                                                        title="{{ $post->title }}">{{ $post->title }}</a>
                                                    <p class="" style="color: #63b59f">Date :(
                                                        {{ $post->created_at }} )</p>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="sidebar-widget">
                            <div class="image">
                                <a href=""><img src={{ Storage::url('images/download.jpg') }} alt="Image"
                                        width="320px" height="150px" /></a>
                            </div>
                        </div>

                        <div class="sidebar-widget">
                            <h2 class="sw-title">News Category</h2>
                            <div class="category">
                                <ul>
                                    @forelse ($categories as $category)
                                        <li>
                                            <a href="{{ route('home.show.category', $category->slug) }}"
                                                title={{ $category->name }}>{{ $category->name }}
                                                <p class="" style="color: #63b59f">Posts Number: (
                                                    {{ $category->posts_count }} )</p>
                                            </a>
                                        </li>
                                    @empty
                                        <li class="alert-info">
                                            No Categories Yet !!!
                                        </li>
                                    @endforelse
                                </ul>
                            </div>
                        </div>

                        <div class="sidebar-widget">
                            <div class="image">
                                <a href=""><img src={{ Storage::url('images/download.jpg') }} alt="Image"
                                        width="320px" height="150px" /></a>
                            </div>
                        </div>

                        <div class="sidebar-widget">
                            <h2 class="sw-title">Tags Cloud</h2>
                            <div class="tags">
                                @forelse ($categories as $category)
                                    <a href={{ route('home.show.category', $category->slug) }}
                                        title={{ $category->name }}>{{ $category->name }}</a>
                                @empty
                                    <p class="alert-info">
                                        No Categories Yet !!!
                                    </p>
                                @endforelse
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Single News End-->
@endsection
@section('footer')
    @include('layouts.frontend.footer')
@endsection
@push('js')
    <script>
        $(document).ready(function() {
            $('#showMoreBtn').on('click', function(event) {
                event.preventDefault();
                $.ajax({
                    url: "{{ route('home.post.comments.show', $post_by_slug->slug) }}/",
                    type: 'GET',
                    success: function(response) {

                        // Access the response data
                        var commentsCount = response.post_comments_count;
                        var newComments = response.post_comments;
                        // مسح جميع التعليقات القديمة
                        $('.comments').empty();
                        $('.comments-count').text('Comments Number: (' + commentsCount + ')');
                        $('.comments-count').attr('value', commentsCount);

                        // Loop through the new comments and append them to the comments section
                        newComments.forEach(function(comment) {
                            var newCommentHtml = `
                                <div class="comment" data-comment-id="${comment.id}">
                                    <img src="{{ Storage::url('images/') }}${comment.user.image}" alt="User Image" class="comment-img" />
                                    <div class="comment-content">
                                        <span class="username">${comment.user.user_name}</span>
                                        <p class="comment-text">${comment.value}</p>
                                    </div>
                                </div>
                            `;
                            $('.comments').prepend(newCommentHtml);
                            $('#showMoreBtn').hide();
                        });
                    },
                    error: function(xhr, status, error) {
                        console.error("Error occurred: " + error);
                        alert("Failed to load new comments. Please try again later.");

                    },

                });
            });

            $('#addComment').on('submit', function(event){
                event.preventDefault();
                var formData = $(this).serialize();
                $.ajax({
                    url: "{{route('home.post.comments.store')}}",
                    type: 'POST',
                    data: formData,
                    processData: false,
                    ContentType: false,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        $('.comments').prepend( `
                                <div class="comment" data-comment-id="${response.data.id}">
                                    <img src="{{ Storage::url('images/') }}${response.data.user.image}" alt="User Image" class="comment-img" />
                                    <div class="comment-content">
                                        <span class="username">${response.data.user.user_name}</span>
                                        <p class="comment-text">${response.data.value}</p>
                                    </div>
                                </div>
                            `);
                        var commentCountText = $('.comments-count').text();
                        var currentCommentCount = parseInt(commentCountText.replace(/[^\d]/g, '')); // Extract the number from the text

                        // Increment the count and update the text
                        $('.comments-count').text('Comments Number: (' + (currentCommentCount + 1) + ')');
                    
                    },
                    error: function(xhr, status, error) {
                        console.error("Error occurred: " + error);
                        alert("Failed to load new comments. Please try again later.");
                    },

                });
            })
        })
    </script>
@endpush
