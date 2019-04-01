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
							<div><a href="contactseller.php" style="color: white;" id="contactcheck">Contact for wholesale</a></div>
							<div><a href="sellonshopker.php" style="color: white; margin-left: 20px;">Sell with us</a></div>
							<div><a href="userregistration.php" style="color: white; margin-left: 10px;">Register</a></div>
							<div><a href="userlogin.php" style="color: white; margin-left: 20px;">Sign in</a></div>
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
							<a href="{{ route('home') }}"><img src="{{ asset('public/assets/images/shop.png') }}" width="180" height="65" /></a>
						</div>
					</div>
				</div>
				<!-- Search -->
				<div class="col-lg-7 col-12 order-lg-2 order-3 text-lg-left text-right">
					<div class="header_search">
						<div class="header_search_content">
							<div class="header_search_form_container">
								<form action="#" class="header_search_form clearfix" >
									<input type="search" required="required" class="header_search_input" placeholder="Search for products..." style="width: 100%; border: 1px solid grey !important;" >
									<div class="custom_dropdown" style="display: none;">
										<div class="custom_dropdown_list">
											<span class="custom_dropdown_placeholder clc">All Categories</span>
											<i class="fas fa-chevron-down"></i>
											<ul class="custom_list clc">
												<li><a class="clc" href="#">All Categories</a></li>
												<li><a class="clc" href="#">Computers</a></li>
												<li><a class="clc" href="#">Laptops</a></li>
												<li><a class="clc" href="#">Cameras</a></li>
												<li><a class="clc" href="#">Hardware</a></li>
												<li><a class="clc" href="#">Smartphones</a></li>
											</ul>
										</div>
									</div>
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
							<div class="wishlist_icon"><img src="{{ asset('public/assets/images/heart41.png') }}" alt=""></div>
							<div class="wishlist_content">
								<div class="wishlist_text"><a href="#">Wishlist</a></div>
								<div class="wishlist_count">115</div>
							</div>
						</div>

						<!-- Cart -->
						<div class="cart">
							<div class="cart_container d-flex flex-row align-items-center justify-content-end">
								<div class="cart_icon">
									<img src="{{ asset('public/assets/images/cart41.png') }}" alt="">
									<div class="cart_count"><span>10</span></div>
								</div>
								<div class="cart_content">
									<div class="cart_text"><a href="cart.php">Cart</a></div>
									<div class="cart_price">$85</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>