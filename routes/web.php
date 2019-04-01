<?php

//Site Pages Routes Start
	Route::get('/', 'Common\PagesController@home')->name('home');
	Route::get('/daily-deals', 'Common\PagesController@daily_deals')->name('daily_deals_products');
	Route::get('/best-selling', 'Common\PagesController@best_selling')->name('best_selling_products');
	Route::get('/products/{category_slug}', 'Common\PagesController@products_by_categories')->name('products_by_categories');
	Route::get('/{product_slug}', 'Common\PagesController@product_details')->name('product_details');
//Site Pages Routes End