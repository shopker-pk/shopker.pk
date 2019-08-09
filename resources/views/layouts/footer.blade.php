        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footer-content">
                    <p class="text-justify">
                        Shopker is an online marketplace that aims to be the best online shopping portal with the broadest range of products available. At shopker, we connect people & products by opening up a virtual world of possibility with the best available range of selection across so that you can get the greatest deals. We believe online shopping can be just as personal and engaging as entering a retail store. We promise to provide hassle-free online shopping experience all the way from product selection to timely delivery.
                        <li>Clutter free presentation of products on the website.</li>
                        <li>Easier selection process with expert reviews and description.</li>
                        <li>Faster and timely delivery of your orders.</li>
                    </p>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footer-image">
                    <img src="{{ asset('public/assets/images/footerimage1.png') }}">
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="footer layout1 ">
            <div class="container">
                <div class="main-footer">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 col-ss-12">
                            <div class="widget widget-text">
                                <h3 class="widgettitle">Contact information</h3>
                                <div class="content">
                                    <h5 class="subtitle">Address</h5>
                                    <p class="des">{{ $site_settings['site_address'] }}</p>
                                    <h5 class="subtitle">Phone</h5>
                                    <p class="des">{{ $site_settings['site_phone_number1'] }}</p>
                                    <h5 class="subtitle">Email</h5>
                                    <p class="des">{{ $site_settings['site_email1'] }}<br>
                                    </p>
                                </div>
                            </div>
                            <ul class="list-socials">
                                <li><a href="https://www.facebook.com/shopker.pk/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="https://twitter.com/shopkerpk"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.instagram.com/shopker18/"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.youtube.com/channel/UChrPKhATn2nwz1GwmbFr5_Q/featured"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                <li><a href="https://api.whatsapp.com/send?phone=923004128681"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 col-ss-12">
                            <div class="newsletter-form layout1 box-has-content">
                                <div class="widget widget-newsletter">
                                    <h3 class="widgettitle">Newsletter</h3>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-6">
                                            <p class="des">Get all the latest information on Events, Sales and Offers. Sign up for newsletter today.</p>
                                        </div>
                                        <div class="col-ts-12 col-xs-8 col-sm-12 col-md-6"> 
                                            <form action="{{ route('subcribe_us') }}" method="post">
                                                {{ csrf_field() }}
                                                <div class="newsletter-block">
                                                    <div class="newsletter-inner">
                                                        <input type="text" id="email" name="email" class="newsletter-info" placeholder="Enter Your e-mail...">
                                                    </div>
                                                    <button class="submit">Subscribe</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row auto-clear">
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-ts-12 ">
                                    <div class="widget widget-custom-menu">
                                        <h3 class="widgettitle">My account</h3>
                                        <ul >
                                            <li><a href="{{ route('checkout') }}">Checkout</a></li>
                                            @if(!empty(Session::get('customer_details')['id'] && Session::get('customer_details')['role'] == 3))
                                            <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                                            <li><a href="{{ route('view_cart') }}">Shopping Cart</a></li>
                                            <li><a href="{{ route('manage_wishlist') }}">My Wishlist</a></li>
                                            @else
                                            <li><a href="{{ route('customer_sign_up') }}">Sign Up</a></li>
                                            <li><a href="{{ route('customer_sign_in') }}">Sign In</a></li>
                                            <li><a href="{{ route('forget_password') }}">Forget Password</a></li>
                                            @endif
                                            <li><a href="{{ route('view_cart') }}">Shopping Cart</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-ts-12 ">
                                    <div class="widget widget-custom-menu">
                                        <h3 class="widgettitle">Sell With Shopker</h3>
                                        <ul >
                                            <li><a href="{{ route('sell_with_us') }}">Sell With Shopker</a></li>
                                            <li><a href="{{ route('wholesale') }}">Contact for Wholesale</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-ts-12">
                                    <div class="widget widget-custom-menu">
                                        <h3 class="widgettitle">Customer Services</h3>
                                        <ul >
                                            <li><a href="{{ route('contact_us') }}">Contact us</a></li>
                                            <li><a href="{{ route('pages', 'refund-policy') }}">Refund Policy</a></li>
                                            <li><a href="{{ route('pages', 'return-policy') }}"> Return Policy</a></li>
                                            <li><a href="{{ route('pages', 'warranty-policy') }}">Warranty Policy</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-ts-12">
                                    <div class="widget widget-custom-menu">
                                        <h3 class="widgettitle">About Us</h3>
                                        <ul >
                                            <li><a href="{{ route('pages', 'about-us') }}">About</a></li>
                                            <li><a href="{{ route('career') }}">Careers</a></li>
                                            <li><a href="{{ route('pages', 'terms-&-conditions') }}">Terms and Conditions</a></li>
                                            <li><a href="{{ route('pages', 'privacy-agreement') }}">Privacy Agreement</a></li>
                                            <li><a href="#">NTN Number: 5270812-7</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-note">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-7 col-lg-8 left-content">
                            <div class="coppy-right">
                                <h3 class="content">© Copyright 2019 <span class="site-name"> <a href="https://itechnocode.com/">Itechnocode</a></span> <span class="text">,</span>All rights reserved by Shopker.</h3>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-5 col-lg-4 right-content">
                            <ul class="list-payment">
                                <li><a href="#"><img src="{{ asset('public/assets/images/jazzcash.png') }}" height="50" alt=""></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <a class="back-to-top" href="javascript:void(0);"></a>
    @include('layouts.script')
</body>
</html>