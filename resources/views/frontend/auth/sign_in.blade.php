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
			<div class="col-md-6 newcustomer">
				<div class="wow fadeInDown"><div class="new">NEW CUSTOMERS</div></div>
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8 ">
						By creating an account with shopker, you will be able to enjoy the smooth journey of your shopping, we offer multiple store, different shipping addresses, view & track your orders in your account & many more exciting features.
					</div>
					<div class="col-md-2"></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div align="center" class="createbtn"><a href="{{ route('customer_sign_up') }}"><button>Create Account</button></a></div>
					</div>
				</div>
			</div>
			<div class="col-md-6 newcustomer">
				<div class="wow fadeInDown"><div class="new">REGISTERED CUSTOMERS</div></div>
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8 ">
		                    <div class="loginform">
		                        <form action="{{ route('validating_credentials') }}" method="post">
		                        	{{ csrf_field() }}
		                            <input type="email" class="form-control" id="email" name="email" placeholder="Email"><br/>
		                            <input type="password" class="form-control" id="password" name="password" placeholder="Password"><br/>
		                            <div class="forgetPassword" style="margin-left: 5px;"><a href="{{ route('forget_password') }}">Forget Password?</a></div>
		                            <div class="loginbtn" align="center">
		                            	<button type="submit" class="btn btn-primary">Submit</button>
		                            </div>
		                        </form>
		                    </div>
	                    </div>
	                    <div class="col-md-2"></div>
                    </div>
				</div>
			</div>
		</div>
	</div>
@include('layouts.footer')

</body>
</html>