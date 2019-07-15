@include('layouts.header')
    <div class="main-content shop-page contact-page">
        <div class="container">
            @include('layouts.messages')
            <div class="breadcrumbs">
            </div>
            <div class="row content-form ">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 map-content">
                    <div class="map"><a href="#"><img src="{{ asset('public/assets/images/map1.jpg') }}" alt=""></a></div>
                    <div class="information-form">
                        <h4 class=" main-title">Our Store</h4>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <h5 class="title">Store 1</h5>
                                <ul class="list-info">
                                    <li>
                                        <div class="icon"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                                        <div class="info">
                                            <h5 class="subtitle">Email</h5>
                                            <a href="#" class="des">{{ $site_settings['site_email1'] }} @if(!empty($site_settings['site_email2'])) | {{ $site_settings['site_email2'] }} @endif</a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                                        <div class="info">
                                            <h5 class="subtitle">Phone</h5>
                                            <p class="des">{{ $site_settings['site_phone_number1'] }} @if(!empty($site_settings['site_phone_number2'])) | {{ $site_settings['site_phone_number2'] }} @endif</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                                        <div class="info">
                                            <h5 class="subtitle">Address/h5>
                                            <p class="des">{{ $site_settings['site_address'] }}</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <h5 class="title">Hours Of Operation</h5>
                                <ul class="time-work">
                                    <li><div class="day">Monday:</div><div class="time">9 AM - 9 PM</div></li>
                                    <li><div class="day">Tuesday:</div><div class="time">9 AM - 9 PM</div></li>
                                    <li><div class="day">Wendnesday:</div><div class="time">9 AM - 9 PM</div></li>
                                    <li><div class="day">Thursday:</div><div class="time">9 AM - 9 PM</div></li>
                                    <li><div class="day">Friday:</div><div class="time">9 AM - 9 PM</div></li>
                                    <li><div class="day">Saturday:</div><div class="time">9 AM - 9 PM</div></li>
                                    <li><div class="day">Sunday:</div><div class="time">Closed</div></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 info-content">
                    <form action="{{ route('wholesale_email') }}" method="post">
                        {{ csrf_field() }}
                        <div class="contact-form">
                            <h4 class="main-title">Leave A Message</h4>
                            <p class="des">We connect people and products opening up a virtual world of possibilities. From braclets and backpacks to tablets and mobile accessories- We give you access to every thing you need and want. Our range is unparralleld, and our prices are unbeatable.</p>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Your Name *</span>
                                    <input type="text" id="name" name="name" class="input-info">
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Email Address *</span>
                                    <input type="text" id="email" name="email" class="input-info">  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Subject</span>
                                    <input type="text" id="subject" name="subject" class="input-info">  
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Phone Number</span>
                                    <input type="text" id="phone_no" name="phone_no" class="input-info">
                                </div>
                            </div>
                            <span class="label-text">Your Message *</span>
                            <textarea rows="8" id="message" name="message" class="input-info input-note"></textarea>
                            <div class="group-button">
                                <button class="button submit">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@include('layouts.footer')