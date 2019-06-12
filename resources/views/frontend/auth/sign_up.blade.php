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
        .cat_menu_container ul {
            display: none;
        }
        
        .cat_menu_container:hover ul {
            display: block;
        }
        
        select.form-control:not([size]):not([multiple]) {
            height: 35px;
        }
        
        #alertmessage {
            display: none;
        }
    </style>
    <script>
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
                <div class="alert alert-success text-center" role="alert">
                    <h3 style="margin-top: -1px;">Thank you for registering with Shopker</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="container" style="margin-bottom: 100px;">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="registrationheading" align="center">REGISTRATION FOR USERS</div>
                <hr style="border: 1px solid red;" />
                <div class="personaldetails" align="center">PERSONAL DETAILS</div>
                <form action="{{ route('customer_registration') }}" method="post">
                    {{ csrf_field() }}
                    <div class="row" style="margin-top: 30px;">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="first_name" name="first_name" class="form-control" placeholder="First Name *" value="{{ old('first_name') }}">
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="text" id="last_name" name="last_name" class="form-control" placeholder="Last Name *" value="{{ old('last_name') }}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="email" name="email" class="form-control" placeholder="Email Address *" value="{{ old('email') }}">
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="text" id="phone_no" name="phone_no" class="form-control" placeholder="03xx-xxxxxxx *" value="{{ old('phone_no') }}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="password" id="password" name="password" class="form-control" placeholder="Password *">
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="password" id="confirm_password" name="confirm_password" class="form-control" placeholder="Confirm Password *">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <select id="gender" name="gender" class="form-control">
                                    <option>Select Gender *</option>
                                    <option value="0" @if(old('gender') == 0) selected @endif>Male</option>
                                    <option value="1" @if(old('gender') == 1) selected @endif>Female</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="date" id="dob" name="dob" class="form-control" placeholder="DOB *" value="{{ old('dob') }}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <select id="country" name="country" class="form-control" data-id="1">
                                    <option>Select Country!!</option>
                                    @foreach($countries as $row)
                                    <option value="{{ $row['code'] }}">{{ $row['name'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <select id="city_1" name="city" class="form-control">
                                    <option>Select City!!</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInDown">
                                <input type="checkbox" id="newsletter" name="newsletter" placeholder="DOB *" value="0"><span style="margin-left: 10px;">Sign up for Newsletter</span>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div align="center" class="submitbtn">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="row" style="margin-top: 20px;">
            <div class="col-md-12">
                <hr/>
                <p class="text-justify">Shopker is an online marketplace that aims to be the best online shopping portal with the broadest range of products available. At shopker, we connect people & products by opening up a virtual world of possibility with the best available range of selection across so that you can get the greatest deals. We believe online shopping can be just as personal and engaging as entering a retail store. We promise to provide hassle-free online shopping experience all the way from product selection to timely delivery.
                    <br/> Our approach is based on 3 basic principles:
                    <ul style="color: #828282;list-style: circle;" class="pl-5">
                        <li>Clutter free presentation of products on the website</li>
                        <li> Easier selection process with expert reviews and description</li>
                        <li> Faster and timely delivery of your orders.</li>
                    </ul>
                </p>
                <hr/>
            </div>
        </div>
    </div>
    @include('layouts.footer')
</body>

</html>