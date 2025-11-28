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
  
    <!-- Main Content -->
    <div class="main-content col-md-9">
        <!-- Show/Edit Post Section -->
        <section id="posts-section" class="posts-section">
        <h2>Your Posts</h2>
        <ul class="list-unstyled user-posts">
            <!-- Example of a Post Item -->
            <li class="post-item">
            <!-- Editable Title -->
            <input type="text" class="form-control mb-2 post-title" value="Post Title" readonly />

            <!-- Editable Content -->
            <textarea class="form-control mb-2 post-content" readonly>
                    Here is the content of the post...
                </textarea>

            <!-- Post Images Slider -->
            <div class="tn-slider">
                <div class="slick-slider edit-slider" id="postImages">
                <!-- Existing Images -->
                </div>
            </div>

            <!-- Image Upload Input for Editing -->
            <input type="file" class="form-control mt-2 edit-post-image" accept="image/*" multiple />

            <!-- Editable Category Dropdown -->
            <select class="form-control mb-2 post-category">
                <option value="general" selected>General</option>
                <option value="tech">Tech</option>
                <option value="life">Life</option>
            </select>

            <!-- Editable Enable Comments Checkbox -->
            <div class="form-check mb-2">
                <input class="form-check-input enable-comments" type="checkbox" />
                <label class="form-check-label">
                Enable Comments
                </label>
            </div>

            <!-- Post Meta: Views and Comments -->
            <div class="post-meta d-flex justify-content-between">
                <span class="views">
                <i class="bi bi-eye-fill"></i> 10
                </span>
                <span class="post-comments">
                <i class="bi bi-chat"></i> 5
                </span>
            </div>

            <!-- Post Actions -->
            <div class="post-actions mt-2">
                <button class="btn btn-primary edit-post-btn">Edit</button>
                <a href="" class="btn btn-danger delete-post-btn">Delete</a>
                <button class="btn btn-success save-post-btn d-none">
                Save
                </button>
                <button class="btn btn-secondary cancel-edit-btn d-none">
                Cancel
                </button>
            </div>

            </li>
            <!-- Additional posts will be added dynamically -->
        </ul>
        </section>
    </div>
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
    </script>
@endpush

