@section('title')
    {{ __('Dashboard') }}
@endsection
@extends('layouts.backend.app')
@section('header')
    @include('layouts.backend.header')
@endsection
@section('breadcrumb')
    @parent
    <li class="breadcrumb-item active">{{ __('Dashboard') }}</li>
@endsection

@section('content')
    <!-- Profile Start -->
    <div class="dashboard container">
        <!-- Sidebar -->
        <aside class="col-md-3 nav-sticky dashboard-sidebar">
            <!-- User Info Section -->
            <div class="user-info text-center p-3">
                <img src="{{ asset(auth()->user()->image) }}" alt="User Image" class="rounded-circle mb-2"
                    style="width: 80px; height: 80px; object-fit: cover" />
                <h5 class="mb-0">
                    {{ ucfirst(Auth::user()->name) }}
                </h5>
            </div>

            <!-- Sidebar Menu -->
            <div class="list-group profile-sidebar-menu">
                <a href="{{ route('home.user.dashboard.profile') }}"
                    class="list-group-item list-group-item-action active menu-item" data-section="profile">
                    <i class="fas fa-user"></i> {{ __('Profile') }}
                </a>
                <a href="{{ route('home.user.dashboard.notifications.index') }}"
                    class="list-group-item list-group-item-action menu-item" data-section="notifications">
                    <i class="fas fa-bell"></i> {{ __('Notifications') }}
                </a>
                <a href="{{ route('home.user.dashboard.settings.index') }}"
                    class="list-group-item list-group-item-action menu-item" data-section="settings">
                    <i class="fas fa-cog"></i> {{ __('Settings') }}
                </a>
            </div>
        </aside>

        <!-- Main Content -->
        <div class="main-content">
            <!-- Profile Section -->
            <section id="profile" class="content-section active">
                <h2>User Profile</h2>
                <div class="user-profile mb-3">
                    <img src="{{ asset(auth()->user()->image) }}" alt="User Image" class="profile-img rounded-circle"
                        style="width: 100px; height: 100px;" />
                    <span class="username">{{ ucfirst(auth()->user()->name) }}</span>
                </div>
                <br>
                @if (session()->has('errors'))
                    @foreach (session('errors')->all() as $error)
                        <div class="alert alert-danger">
                            <li>
                                {{ $error }}
                            </li>
                        </div>
                    @endforeach
                @endif
                <!-- Add Post Section -->
                <section id="add-post" class="add-post-section mb-5">
                    <h2>Add Post</h2>
                    <div class="post-form p-3 border rounded">
                        <form action="{{ route('home.user.dashboard.profile.post.store') }}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            <!-- Post Title -->
                            <input name="title" value="{{ old('title') }}" type="text" id="postTitle"
                                class="form-control mb-2" placeholder="Post Title" />
                            @error('title')
                                <button class="alert alert-danger w-100">{{ $message }}</button>
                            @enderror
                            <!-- Post Content -->
                            <textarea name="description" id="postContent" class="form-control mb-2" rows="3"
                                placeholder="What's on your mind?">{{ old('description') }}</textarea>
                            @error('description')
                                <button class="alert alert-danger w-100">{{ $message }}</button>
                            @enderror
                            <!-- Image Upload -->
                            <input name="images[]" type="file" value="{{ old('images') }}" id="postImage"
                                class="form-control mb-2" accept="image/*" multiple />
                            @error('images')
                                <button class="alert alert-danger w-100">{{ $message }}</button>
                            @enderror

                            <div class="tn-slider mb-2">
                                <div id="imagePreview" class="slick-slider"></div>
                            </div>

                            <!-- Category Dropdown -->
                            <select name="category_id" value="{{ old('category') }}" id="postCategory"
                                class="form-select mb-2 form-control">
                                <option disabled selected>Select Category</option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                            </select>
                            @error('category_id')
                                <button class="alert alert-danger w-100">{{ $message }}</button>
                            @enderror
                            <br>
                            <!-- Enable Comments Checkbox -->
                            <label value="{{ old('comment_able') }}" class="form-check-label mb-2 ml-4 lable">
                                <input type="hidden" name="comment_able" value="off">
                                <input name="comment_able" type="checkbox" class="form-check-input" value="on" /> Enable
                                Comments
                            </label><br>
                            @error('comment_able')
                                <button class="alert alert-danger w-100">{{ $message }}</button>
                            @enderror
                            <!-- Post Button -->
                            <button class="btn btn-primary post-btn">Post</button>
                        </form>
                    </div>
                </section>

                <!-- Show Posts -->
                <section id="posts" class="posts-section">
                    <h2>Recent Posts</h2>
                    @forelse($posts as $index => $post)
                        <div class="post-list">
                            <!-- Post Item -->
                            <div class="post-item mb-4 p-3 border rounded">
                                <div class="post-header d-flex align-items-center mb-2">
                                    <img src="{{ asset(auth()->user()->image) }}" alt="User Image" class="rounded-circle"
                                        style="width: 50px; height: 50px;" />
                                    <div class="ms-3">
                                        <h5 class="mb-0">{{ auth()->user()->name }}</h5>
                                    </div>
                                </div>
                                <div style="overflow: auto;">
                                    <h4 class="post-title">{{ $post->title }}</h4>
                                    <p class="post-content">{!! $post->description !!}</p>
                                </div>

                                <div id="newsCarousel" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        @foreach ($post->imagePosts as $index => $image)
                                            <li data-target="#newsCarousel" data-slide-to={{ $index }}
                                                class="@if ($index == 0) active @endif"></li>
                                        @endforeach
                                    </ol>
                                    <div class="carousel-inner">
                                        @foreach ($post->imagePosts as $index => $image)
                                            <div class="carousel-item  @if ($index == 0) active @endif">
                                                <img style="height:350px;" src={{ asset($image->path) }}
                                                    class="d-block w-100" alt="First Slide">
                                                <div class="carousel-caption d-none d-md-block">
                                                    <h5>{{ $post->title }}</h5>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                    <a class="carousel-control-prev" href="#newsCarousel" role="button"
                                        data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#newsCarousel" role="button"
                                        data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>

                                <div class="post-actions d-flex justify-content-between">
                                    <div class="post-stats">
                                        <!-- View Count -->
                                        <span class="me-3">
                                            <i class="fas fa-eye"></i> {{$post->views_num}}
                                        </span>
                                    </div>

                                    <div>
                                        <a href="{{route('home.user.dashboard.profile.post.edit', $post->slug)}}" class="btn btn-sm btn-outline-primary">
                                            <i class="fas fa-edit"></i> Edit
                                        </a>

                                        <a href="JavaScript:void(0)" onclick="if(confirm('Are You Sure?')){document.getElementById('deletePost_{{$post->slug}}').submit()} return false" class="btn btn-sm btn-outline-primary">
                                            <i class="fas fa-thumbs-up"></i> Delete
                                        </a>
                                        @if($post->comment_able)
                                            <button id="showComments_{{$post->slug}}" class="btn btn-sm btn-outline-secondary get-post-comments" post-slug="{{$post->slug}}">
                                                <i class="fas fa-comment"></i> Show Comments
                                            </button>

                                            <button id="hideComments_{{$post->slug}}" class="btn btn-sm btn-outline-secondary hide-post-comments d-none" post-slug="{{$post->slug}}">
                                                <i class="fas fa-comment"></i> Hide Comments
                                            </button>
                                        @endif

                                        <form id="deletePost_{{$post->slug}}" action="{{route('home.user.dashboard.profile.post.destroy', $post->slug)}}" method="POST">
                                            @csrf
                                            @method('Delete')
                                        </form>
                                    </div>
                                </div>

                                <!-- Display Comments -->
                                <div id="displayComments_{{$post->slug}}" class="comments">
                                   
                                    
                                </div>
                            </div>

                            <!-- Add more posts here dynamically -->
                        </div>
                    @empty
                        <div class="alert alert-info"> You do not have any posts</div>
                    @endforelse
                </section>
                <!-- End Posts Section -->
            </section>
        </div>
    </div>
    <!-- Profile End -->
@endsection

@section('footer')
    @include('layouts.backend.footer')
@endsection

@push('js')
    <script>
        // Summer Note Settings
        $(document).ready(function() {
            if (typeof $.fn.fileinput == 'function') {
                $('#postImage').fileinput({
                    showUpload: false,
                    allowedFileTypes: ['image'],
                    maxFileCount: 3,
                    theme: 'fas',
                });
            }
            $('#postContent').summernote({
                height: 300
            });
        });
        // get post comments
        $(document).on('click', '.get-post-comments', function(event){
            event.preventDefault();
            let post_slug = $(this).attr("post-slug");
           

            $.ajax({
                type: "GET",
                url: '{{route("home.user.dashboard.profile.post.getComments", ":post_slug")}}'.replace(':post_slug',post_slug),
                success: function(comments){
                    if(comments.data){
                        $(`#displayComments_${post_slug}`).empty();
                        $.each(comments.data, function(index, comment){
                            $(`#displayComments_${post_slug}`).append(`<div class="comment">
                                            <img src="{{ asset('') }}${comment.user.image}" alt="User Image" class="comment-img" />
                                            <div class="comment-content">
                                                <span class="username"></span>
                                                <p class="comment-text">${comment.value}</p>
                                            </div>
                                        </div>`);
                        });
                        $(`#showComments_${post_slug}`).hide();
                        $(`#hideComments_${post_slug}`).removeClass("d-none");
                    }else{
                        $(`#showComments_${post_slug}`).prop("disabled", true);
                        $(`#displayComments_${post_slug}`).append(`<div class="comment">
                                            <div class="comment-content alert alert-primary text-center">
                                                <span class="username"></span>
                                                <p class="comment-text">No Comments Yet</p>
                                            </div>
                                        </div>`);
                    }
                },
                error: function(error){
                    console.log(error);
                }
            })
        })
        $(document).on('click', '.hide-post-comments', function(event){
            let post_slug = $(this).attr("post-slug");
            event.preventDefault();
            $(`#displayComments_${post_slug}`).empty();
            $(`#showComments_${post_slug}`).show();
            $(`#hideComments_${post_slug}`).addClass("d-none");
        });
    </script>
@endpush
