@section('title')
{{__('Show Comments')}}
@endsection
@extends('layouts.frontend.app')
@section('header')
    @include('layouts.frontend.header')
@endsection

@section('content')
    {{ $comments_belong_post}}
@endsection
@section('footer')
    @include('layouts.frontend.footer')
@endsection
