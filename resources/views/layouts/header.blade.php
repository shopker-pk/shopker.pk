<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>{{ $page_title }}</title>
	<meta name="description" content="{{ $meta_description }}" />
    <meta name="keywords" content="{{ $meta_keywords }}" /> 
    <link rel="icon" type="icon/gif" href="{{ $site_settings['favicon_image'] }}" alt="{{ $site_settings['site_title'] }}">
	@include('layouts.style')
</head>
<body class="home">
	<header>
		<div class="header layout2 no-prepend-box-sticky">
			<div class="topbar layout1">
				<div class="container">
					<ul class="list-socials">
						<li><a href="https://www.facebook.com/shopker.pk/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="https://twitter.com/shopkerpk"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="https://www.instagram.com/shopker18/"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						<li><a href="https://www.youtube.com/channel/UChrPKhATn2nwz1GwmbFr5_Q/featured"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
						<li><a href="https://api.whatsapp.com/send?phone=923004128681"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
					</ul>
					<ul class="menu-topbar top-links">
						<li><a href="{{ route('wholesale') }}">Contact for wholesale</a></li>
						<li><a href="{{ route('sell_with_us') }}">Sell with us</a></li>
						@if(!empty(Session::get('customer_details')['id'] && Session::get('customer_details')['role'] == 3))
						<li><a href="{{ route('dashboard') }}">Dashboard</a></li>
						<li><a href="{{ route('sign_out') }}">Sign Out</a></li>
						@else
						<li><a href="{{ route('customer_sign_up') }}">Sign Up</a></li>
						<li><a href="{{ route('customer_sign_in') }}">Sign in</a></li>
						@endif
					</ul>
				</div>
			</div>
			<div class="main-header">
				<div class="top-header">
					<div class="this-sticky">
						<div class="container">
							<div class="row">
								<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12  left-content">
									<div class="logo">
										<a href="{{ route('home') }}"><img src="{{ $site_settings['header_image'] }}" alt="{{ $site_settings['site_title'] }}"></a>
									</div>
								</div>
								@include('layouts.navigation')	
								<div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 right-content custom_right_header">
									<ul class="header-control">							
										@include('layouts.wishlist')	
										@include('layouts.cart')
									</ul>							
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="header-nav-wapper ">
					<div class="container main-menu-wapper">
						<div class="row">
							<div class="col-lg-3 col-md-4 col-sm-12 left-content">
								<div class="vertical-wapper parent-content">
									<div class="block-title show-content">
										<span class="icon-bar">
											<span></span>
											<span></span>
											<span></span>
										</span>
										<span class="text">Categories</span>
									</div>
									<div class="vertical-content hidden-content">
										@include('layouts.mega_menus')
										<div class="view-all-categori">
											<a href="{{ route('all_categories') }}" class="">All Categories <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-7 col-md-5 col-sm-8 col-xs-8 col-ts-12 middle-content">
								<form action="{{ route('search_products') }}" method="get" id="search-form">
									<div class="search-form layout2 box-has-content">
										<div class="search-block">
											<div class="search-choice parent-content">
												<select data-placeholder="All Categories" class="chosen-select">
													<option value="0">All categories</option>
												</select>
											</div>
											<div class="search-inner">
												<input type="text" id="name" name="name" class="search-info" placeholder="Searh entire store here...">
											</div>
											<a class="search-button" id="search-button"><i class="fa fa-search" aria-hidden="true"></i></a>
										</div>
									</div>		
								</form>
							</div>
							<div class="col-lg-2 col-md-3 col-sm-4 col-xs-4 col-ts-12 right-content">
								<div class="hotline">
									<div class="icon">
										<i class="fa fa-phone" aria-hidden="true"></i>
									</div>
									<div class="content">
										<span class="text">Call us now</span>
										<span class="number">{{ $site_settings['site_phone_number1'] }}</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>