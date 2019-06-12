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
    	.cat_menu_container ul{display: none;}
    	.cat_menu_container:hover ul{display: block;}
    </style>
</head>
<body>
	@include('layouts.header') 
    @include('layouts.navigation')
    @include('layouts.messages')

	<div class="container-fluid mainloginform" style="margin-bottom:  100px;">
		<div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-7">
                        <div class="registercustomer">FORGET PASSWORD</div>
                        <div class="wow fadeInDown">
                            <hr style="border: 1px outset red;" />
                        </div>
                        <div class="loginform">
                            <form action="{{ route('validating_email') }}" method="post">
	                        	{{ csrf_field() }}
                                <p style="color: black; font-size: 12px;">Please enter your email below. You will receive otp soon to reset your password.</p>
                                <input type="email" name="email" password="email" class="form-control" placeholder="Enter Email Address">
                                <div class="forgetPassword" style="margin-left: 5px;"><a href="{{ route('customer_sign_in') }}">Back to Login</a></div>
                                <div class="loginbtn">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="mt-5 pt-5">
                    <div class="wow flipInX"><img src="{{ asset('public/assets/images/key.png') }}" width="200" height="200" style="transform: rotate(20deg);"></div>
                </div>
            </div>
        </div>
	</div>
@include('layouts.footer')

</body>
</html>