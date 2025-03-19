
@extends('layouts.frontend.app')
@section('header')
    @include('layouts.frontend.header')
@endsection
@section('breadcrumb')
    @parent
    <li class="breadcrumb-item active">Contact Us</li>
@endsection

@section('content')
    <!-- Contact Start -->
    <div class="contact">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-8">
            <h3>Contact Us</h3>
            <div class="contact-form">
              <form action={{route('home.contact.store')}} method="post">
                @csrf
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <input
                      name="name"
                      type="text"
                      class="form-control"
                      placeholder="Your Name"
                    />
                    @error('name')
                      <div class="text-danger"> {{ $message }} </div>
                    @enderror
                  </div>
                  <div class="form-group col-md-6">
                    <input
                      name="title"
                      type="text"
                      class="form-control"
                      placeholder="Your Title"
                    />
                    @error('title')
                      <div class="text-danger"> {{ $message }} </div>
                    @enderror
                  </div>
                  <div class="form-group col-md-6">
                    <input
                      name="email"
                      type="email"
                      class="form-control"
                      placeholder="Your Email"
                    />
                    @error('email')
                      <div class="text-danger"> {{ $message }} </div>
                    @enderror
                  </div>
                  <div class="form-group col-md-6">
                    <input
                      name="phone"
                      type="phone"
                      class="form-control"
                      placeholder="Your Phone"
                    />
                    @error('phone')
                      <div class="text-danger"> {{ $message }} </div>
                    @enderror
                  </div>
                  <div class="form-group col-md-12">
                    <textarea
                      name="body"
                      class="form-control"
                      rows="5"
                      placeholder="Message"
                      style="resize: none"
                    ></textarea>
                  </div>
                  @error('body')
                    <div class="text-danger"> {{ $message }} </div>
                  @enderror
                </div>
                <div>
                  <button class="btn" type="submit">Send Message</button>
                </div>
              </form>
            </div>
          </div>
          <div class="col-md-4">
            <div class="contact-info">
              <h3>Get in Touch</h3>
              <p class="mb-4">
                The contact form is currently inactive. Get a functional and
                working contact form with Ajax & PHP in a few minutes. Just copy
                and paste the files, add a little code and you're done.
                <a href="/contact-form">Download Now</a>.
              </p>
              <h4><i class="fa fa-map-marker"></i>{{ $settings->site_name }}</h4>
              <h4><i class="fa fa-map-marker"></i>{{ $settings->street }}, {{ $settings->city }}, {{ $settings->country }}</h4>
              <h4><i class="fa fa-envelope"></i>{{ $settings->email }}</h4>
              <h4><i class="fa fa-phone"></i>{{ $settings->phone }}</h4>
              <div class="social">
                <a href={{ $settings->twitter }}><i class="fab fa-twitter"></i></a>
                <a href={{ $settings->facebook }}><i class="fab fa-facebook-f"></i></a>
                <a href={{ $settings->youtube }}><i class="fab fa-youtube"></i></a>
                {{-- <a href={{ $settings->linkedin }}><i class="fab fa-linkedin-in"></i></a>
                <a href={{ $settings->instagram }}><i class="fab fa-instagram"></i></a> --}}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Contact End -->
@endsection

@section('footer')
    @include('layouts.frontend.footer')
@endsection
