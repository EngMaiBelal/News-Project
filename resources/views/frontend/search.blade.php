@extends('layouts.frontend.app')
@section('header')
    @include('layouts.frontend.header')
@endsection
@section('breadcrumb')
    @parent
@endsection

@section('content')
    <!-- Main News Start-->
    <div class="main-news">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
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
                        <div class="col-md-12">
                            {{ $posts->links() }}
                        </div>
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

