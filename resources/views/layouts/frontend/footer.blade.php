@php
    $description = $latest_posts->first()->description;
@endphp
<!-- Footer Start -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h3 class="title">Get in Touch</h3>
                    <div class="contact-info">
                        <p><i class="fa fa-map-marker"></i>{{ $settings->street }}, {{ $settings->country }}, {{ $settings->city }}</p>
                        <p><i class="fa fa-envelope"></i>{{ $settings->email }}</p>
                        <p><i class="fa fa-phone"></i>{{ $settings->phone }}</p>
                        <div class="social">
                            <a href="{{ $settings->twitter }}"><i class="fab fa-twitter"></i></a>
                            <a href="{{ $settings->facebook }}"><i class="fab fa-facebook-f"></i></a>
                            <a href="{{ $settings->youtube }}"><i class="fab fa-youtube"></i></a>
                            {{-- <a href="{{ $settings->linked-in }}"><i class="fab fa-linkedin-in"></i></a> --}}
                            {{-- <a href="{{ $settings->instagram }}"><i class="fab fa-instagram"></i></a> --}}
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h3 class="title">Useful Links</h3>
                    <ul>
                        @foreach ($related_sites as $site)
                            <li><a href="{{ $site->url }}" title="{{ $site->name }}"> {{ $site->name }} </a></li>
                        @endforeach
                    </ul>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h3 class="title">Quick Links</h3>
                    <ul>
                        <li><a href="{{route('home.index')}}" class="nav-item nav-link active">Home</a></li>
                        <li><a href="{{route('home.contact.index')}}" class="nav-item nav-link active">Contact Us</a></li>
                   </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h3 class="title">{{ $latest_posts->first()->title}}</h3>
                    <div class="newsletter">
                        <p style="text-align: justify;">

                            {!! substr($description ,0 ,20) !!}
                        </p>
                        
                        <form action={{ route('home.news.subscriber')}} method="post">
                            @csrf
                            <input name="email" class="form-control" type="email" placeholder="Your email here" />
                            @error('email')
                                <div class="text-danger"> {{ $message }} </div>
                            @enderror
                            <button class="btn">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->

<!-- Footer Menu Start -->
<div class="footer-menu">
    <div class="container">
        <div class="f-menu">
            <a href="{{ route('home.terms')}}">Terms of use</a>
            <a href="{{ route('home.privacy')}}">Privacy policy</a>
            <a href="{{ route('home.index') }}">News</a>
            <a href="{{ route('home.contact.index') }}">Contact us</a>
        </div>
    </div>
</div>
<!-- Footer Menu End -->

<!-- Footer Bottom Start -->
<div class="footer-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-6 copyright">
                <p>
                    Copyright &copy; <a href="">{{ $settings->site_name }}</a>. All Rights
                    Reserved
                </p>
            </div>

            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "/credit-removal". Thank you for your support. ***/-->
            <div class="col-md-6 template-by">
                <p>Designed By <a href="">Mai Belal</a></p>
            </div>
        </div>
    </div>
</div>
<!-- Footer Bottom End -->

<!-- Back to Top -->
<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

 <!-- JavaScript Libraries -->
 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
{{-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> --}}
 <script src={{asset("assets/frontend/lib/easing/easing.min.js")}}></script>
 <script src={{asset("assets/frontend/lib/slick/slick.min.js")}}></script>

 <!-- Template Javascript -->
 <script src={{asset("assets/frontend/js/main.js")}}></script>