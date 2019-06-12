<!DOCTYPE html>
<html lang="en">

<head>
    <title>{{ $page_title }}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="OneTech shop project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $meta_description }}" />
    <meta name="keywords" content="{{ $meta_keywords }}" /> 
    <link rel="icon" type="icon/gif" href="{{ $site_settings['favicon_image'] }}" alt="{{ $site_settings['site_title'] }}">
    @include('layouts.style')
    <style type="text/css">
        #alertmessage,
        .cat_menu_container ul {
            display: none;
        }
        
        .cat_menu_container:hover ul {
            display: block;
        }
    </style>
    <script type="text/javascript">
        function abc() {
            $("#alertmessage").fadeTo(2000, 500).slideUp(500, function() {
                $("#alertmessage").slideUp(500);
            });
        }
    </script>
</head>

<body>
    @include('layouts.header') 
    @include('layouts.navigation')
    @include('layouts.messages')

    <div class="container" id="alertmessage">
        <div class="row">
            <div class="col-md-12 mt-3">
                <div class="alert alert-success" role="alert">
                    <strong>Product Name</strong> Your product has been added
                </div>
            </div>
        </div>
    </div>
    <div class="container" style="margin-bottom: 100px;">
        <div class="row" style="margin-top: 30px;">
            <div class="col-md-6">
                <h2 style="font-weight: bold;color: green;">Contact For Wholesale</h2>
                <hr />
                <form action="{{ route('wholesale_email') }}" method="post">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-md-6">
                            <label>Your Name *</label>
                            <input type="text" id="name" name="name" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label>Your Email *</label>
                            <input type="text" id="email" name="email" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <p style="height: 0px;"></p>
                        <div class="col-md-6">
                            <p style="height: 0px;"></p>
                            <label>Subject *</label>
                            <input type="text" id="subject" name="subject" class="form-control">
                        </div>
                        <p style="height: 0px;"></p>
                        <div class="col-md-6">
                            <p style="height: 0px;"></p>
                            <label>Phone# *</label>
                            <input type="text" id="phone_no" name="phone_no" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <p style="height: 0px;"></p>
                        <div class="col-md-12">
                            <p style="height: 0px;"></p>
                            <label>Your message *</label>
                            <textarea class="form-control" id="message" name="message" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div align="center" class="submitbtn">
                                <button type="submit" class="btn btn-primary">Send</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-6" style="margin-bottom:30px;">
                <h2 style="font-weight: bold;color: green;">Get In Touch</h2>
                <hr />
                <p style="color:black">We connect people and products opening up a virtual world of possibilities. From braclets and backpacks to tablets and mobile accessories- We give you access to every thing you need and want. Our range is unparralleld, and our prices are unbeatable</p>
                <p style="height: 10px;"></p>
                <h3 style="font-weight: bold;color: green;">The Office</h3>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <i class="fa fa-map-marker-alt" style="font-size: 25px;"></i><span style="margin-left: 10px;font-size: 17px;">Address:</span><span style="color:black">  {{ $site_settings['site_address'] }}</span>
                    </div>
                </div>
                <p style="height: 7px;"></p>
                <div class="row">
                    <div class="col-md-12">
                        <i class="fa fa-phone" style="font-size: 25px;"></i><span style="margin-left: 10px;font-size: 17px;">Phone:</span><span style="color:black">  {{ $site_settings['site_phone_number1'] }} @if(!empty($site_settings['site_phone_number2'])) || {{ $site_settings['site_phone_number2'] }} @endif</span>
                    </div>
                </div>
                <p style="height: 7px;"></p>
                <div class="row">
                    <div class="col-md-12">
                        <i class="fa fa-envelope" style="font-size: 25px;"></i><span style="margin-left: 10px;font-size: 17px;">Email:</span><span style="color:black">  {{ $site_settings['site_email1'] }} @if(!empty($site_settings['site_email2'])) || {{ $site_settings['site_email2'] }} @endif</span>
                    </div>
                </div>
                <p style="height: 10px;"></p>
                <h3 style="font-weight: bold;color: green;">Business hours</h3>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <i class="fa fa-clock" style="font-size: 13px;"></i><span style="margin-left: 10px;font-size: 14px; color:black">Monday-Saturday:</span><span>  9am-9pm</span>
                    </div>
                </div>
                <p style="height: 7px;"></p>
                <div class="row">
                    <div class="col-md-12">
                        <i class="fa fa-clock" style="font-size: 13px;"></i><span style="margin-left: 10px;font-size: 14px; color:black">Sunday:</span><span>  Closed</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('layouts.footer')

</body>

</html>