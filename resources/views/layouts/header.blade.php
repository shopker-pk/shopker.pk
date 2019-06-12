<!-- Header -->
<header class="header">
	<!-- Top Bar -->
	<div class="top_bar" style="background-color: #292d1b; height: 50px; margin-bottom: -40px;">
		<div class="container-fluid">
			<div class="row" style="background-color: #292d1b; height: 50px; margin-top: -2px;">
				<div class="col d-flex flex-row">
					<div class="top_bar_contact_item" id="freeslider">
						<div class="top_bar_icon ">
							<p style="margin-top: 17px;color: white;"><marquee behavior="scroll" direction="left">Free Delivery above Rs.1999 allover Pakistan</marquee>
						</div>
					</div>
					<div class="top_bar_content ml-auto">
						<div class="top_bar_user">
							<div><a href="{{ route('wholesale') }}" style="color: white;" id="contactcheck">Contact for wholesale</a></div>
							<div><a href="{{ route('sell_with_us') }}" style="color: white; margin-left: 20px;">Sell with us</a></div>
							@if(!empty(Session::get('customer_details')['id'] && Session::get('customer_details')['role'] == 3))
							<div><a href="{{ route('dashboard') }}" style="color: white; margin-left: 20px;">Dashboard</a></div>
							@else
							<div><a href="{{ route('customer_sign_up') }}" style="color: white; margin-left: 10px;">Register</a></div>
							<div><a href="{{ route('customer_sign_in') }}" style="color: white; margin-left: 20px;">Sign in</a></div>
							@endif
						</div>
					</div>
				</div>
			</div>
		</div>		
	</div>
	<!-- Header Main -->
	<div class="header_main">
		<div class="container-fluid">
			<div class="row">
				<!-- Logo -->
				<div class="col-lg-2 col-sm-3 col-3 order-1">
					<div class="logo_container" style="margin-left: 7%;">
						<div class="logo">
							<a href="{{ route('home') }}"><img src="{{ $site_settings['header_image'] }}" width="180" height="65" alt="{{ $site_settings['site_title'] }}"/></a>
						</div>
					</div>
				</div>
				<!-- Search -->
				<div class="col-lg-7 col-12 order-lg-2 order-3 text-lg-left text-right">
					<div class="header_search">
						<div class="header_search_content">
							<div class="header_search_form_container">
								<form action="{{ route('search_products') }}" method="get" class="header_search_form clearfix">
									<input type="search" id="name" name="name" class="header_search_input" placeholder="Search for products..." style="width: 100%; border: 1px solid grey !important;" >
									<button type="submit" style="background-image: linear-gradient(to left, green, #31f93f);" class="header_search_button trans_300" value="Submit"><img src="{{ asset('public/assets/images/search.png') }}" alt=""></button>
								</form>
							</div>
						</div>
					</div>
				</div>

				<!-- Wishlist -->
				<div class="col-lg-2 col-9 order-lg-3 order-2">
				    <div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
				        <div class="wishlist d-flex flex-row align-items-center justify-content-end">
				            <div class="">
				            	<img src="{{ asset('public/assets/images/heart41.png') }}" alt="" width="20" height="20" style="margin-right: -20px;">
				            </div>
				            <div class="wishlist_content">
				            	<div class="wishlist_text"><b><a href="{{ route('manage_wishlist') }}">Wishlist</a></b></div>
				                @if(!empty(Session::get('wishlists')))
								<div class="wishlist_count">{{ count(Session::get('wishlists')) }}</div>
								@else
								<div class="wishlist_count">0</div>
								@endif
				            </div>
				        </div>
				        <!-- Cart -->
				        <div class="cart">
				            <div class="cart_container d-flex flex-row align-items-center justify-content-end">
				                <div class="">
				                    <img src="{{ asset('public/assets/images/cart41.png') }}" width="20" height="20" alt="">
				                    @if(!empty(Session::get('cart')))
									<div class="cart_count">
										<span>{{ count(Session::get('cart')) }}</span>
									</div>
									@else
									<div class="cart_count">
										<span>0</span>
									</div>
									@endif
				                </div>
				                <div class="cart_content">
				                    <div class="cart_text"><a href="{{ route('view_cart') }}">Cart</a></div>
									@if(!empty(Session::get('cart')))
										@foreach(Session::get('cart') as $row)
										<input type="hidden" value="{{ $sub_total[] = $row['price'] * $row['quantity'] }}">
										@endforeach
									@endif
									@if(!empty($sub_total))
									<div class="cart_price">{{ array_sum($sub_total) }}</div>
									@else
									<div class="cart_price">00.00</div>
									@endif
				                </div>
				            </div>
				        </div>
				    </div>
				</div>
			</div>
		</div>
	</div>
</header>