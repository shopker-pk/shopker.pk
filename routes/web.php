<?php

//Site Pages Routes Start
	//Pages Routes Start
		Route::get('/', 'Common\PagesController@home')->name('home');
		Route::get('/daily-deals', 'Common\PagesController@daily_deals')->name('daily_deals_products');
		Route::get('/best-selling', 'Common\PagesController@best_selling')->name('best_selling_products');
		Route::get('/products/{category_slug}', 'Common\PagesController@products_by_categories')->name('products_by_categories');
		Route::get('/product-details/{id}', 'Common\PagesController@product_details_by_id');
		Route::get('/wholesale', 'Common\PagesController@wholesale')->name('wholesale');
		Route::get('/contact-us', 'Common\PagesController@contact_us')->name('contact_us');
		Route::get('/career', 'Common\PagesController@career')->name('career');
	//Pages Routes End

	//Stores Routes Start
		Route::get('/stores/{slug}', 'Common\PagesController@stores')->name('get_stores');
	//Stores Routes End

	//Dynamic CMS Routes Start
		Route::get('/pages/{page_slug}', 'Common\PagesController@pages')->name('pages');
	//Dynamic CMS Routes End

	//Common Routes Start
		Route::get('/get-ajax-cities/{id}', 'Common\CommonController@cities');
		Route::get('/get-ajax-areas/{id}', 'Common\CommonController@areas');
	//Common Routes End
	
	//Vendor Registration Routes Start
		Route::get('/sell-with-us', 'Common\VendorsController@sell_with_us')->name('sell_with_us');
		Route::post('/vendor-registeration', 'Common\VendorsController@vendor_registeration')->name('vendor_registeration');
	//Vendor Registration Routes End
	
	//Customer Auth Routes Start
		Route::get('/registeration', 'Customers\Auth\AuthController@sign_up')->name('customer_sign_up');
		Route::post('/sign-up', 'Customers\Auth\AuthController@registration')->name('customer_registration');
		Route::get('/sign-in', 'Customers\Auth\AuthController@sign_in')->name('customer_sign_in');
		Route::post('/validating-credentials', 'Customers\Auth\AuthController@validating')->name('validating_credentials');
		Route::get('/sign-out', 'Customers\Auth\AuthController@sign_out')->name('sign_out');
		Route::get('/forget-password', 'Customers\Auth\AuthController@forget_password')->name('forget_password');
		Route::post('/validing-email', 'Customers\Auth\AuthController@validating_email')->name('validating_email');
		Route::get('/add-otp', 'Customers\Auth\AuthController@add_otp')->name('add_otp');
		Route::post('/verify-otp', 'Customers\Auth\AuthController@verify_otp')->name('verify_otp');
		Route::get('/new-password', 'Customers\Auth\AuthController@new_passowrd')->name('new_passowrd');
		Route::post('/updating-password', 'Customers\Auth\AuthController@updating_password')->name('updating_password');
	//Customer Auth Routes End
	
	//Email Routes Start
		Route::post('/email/wholesale', 'Common\EmailsController@wholesale')->name('wholesale_email');
		Route::post('/email/contact-us', 'Common\EmailsController@contact_us')->name('contact_us_email');
	//Email Routes End
	
	//Shopping Routes Start
		Route::post('/add-to-cart', 'Customers\Shopping\CartController@add_to_cart')->name('add_to_cart');
		Route::get('/view-cart', 'Customers\Shopping\CartController@view_cart')->name('view_cart');
		Route::get('/remove-product-from-cart/{id}', 'Customers\Shopping\CartController@remove_product')->name('remove_product');
		Route::get('/empty-cart', 'Customers\Shopping\CartController@empty_cart')->name('empty_cart');
		Route::post('/update-cart', 'Customers\Shopping\CartController@update_cart')->name('update_cart');
		Route::get('/apply-coupon', 'Customers\Shopping\CartController@apply_coupon');
		Route::get('/check-out', 'Customers\Shopping\CartController@checkout')->name('checkout');
		Route::post('/check-out/add-order', 'Customers\Shopping\CartController@add_order')->name('add_order');
		Route::post('/buy-now', 'Customers\Shopping\CartController@buy_now')->name('buy_now');
	//Shopping Routes End
	
	//Customer Dashboard Route Start
		Route::get('/dashboard', 'Customers\Dashboard\DashoboardController@manage')->name('dashboard');
	//Customer Dashboard Route End

	//Customer Profile Settings Route Start
		Route::get('/profle-settings', 'Customers\Settings\ProfileController@edit')->name('edit_profile_settings');
		Route::post('/update-settings', 'Customers\Settings\ProfileController@update')->name('update_profile_settings');
	//Customer Profile Settings Route End

	//Customer Vouchers Route Start
		Route::get('/my-vouchers', 'Customers\Vouchers\VouchersController@manage')->name('manage_vouchers');
	//Customer Vouchers Route End

	//Customer Orders Route Start
		Route::get('/my-orders', 'Customers\Orders\OrdersController@manage')->name('manage_orders');
		Route::post('/add-order-review/{order_no}', 'Customers\Orders\OrdersController@add')->name('add_order_review');
	//Customer Orders Route End

	//Customer Wishlist Route Start
		Route::get('/my-wishlist', 'Customers\Shopping\WishlistsController@manage')->name('manage_wishlist');
		Route::get('/wishlist/add/{id}', 'Customers\Shopping\WishlistsController@add')->name('add_wishlists');
		Route::get('/wishlist/delete/{id}', 'Customers\Shopping\WishlistsController@delete')->name('delete_wishlist');
	//Customer Wishlist Route End

	//Products Reviews Routes Start
		Route::get('/my-products-reviews', 'Customers\Reviews\ProductsController@manage')->name('manage_products_reviews');
		Route::post('/reviews/products/insert', 'Customers\Reviews\ProductsController@insert')->name('insert_products_reviews');
	//Products Reviews Routes End

	//Orders Reviews Routes Start
		Route::get('/my-orders-reviews', 'Customers\Reviews\OrdersController@manage')->name('manage_orders_reviews');
		Route::get('/reviews/orders/add/{order_no}', 'Customers\Reviews\OrdersController@add')->name('add_order_review');
		Route::post('/reviews/pordersroducts/insert/{order_no}', 'Customers\Reviews\OrdersController@insert')->name('insert_order_reviews');
	//Orders Reviews Routes End

	//Filters Routes Startd
		Route::get('/search', 'Common\FiltersController@search_by_text')->name('search_products');
		Route::get('/products/filter/variations/{slug}', 'Common\FiltersController@search_by_variations')->name('filter_products');
	//Filters Routes En

	//Product Details Routes Start
		Route::get('/{product_slug}', 'Common\PagesController@product_details')->name('product_details');
	//Product Details Routes End
//Site Pages Routes End