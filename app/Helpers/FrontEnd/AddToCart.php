<?php

function add_to_cart($data){
	if(!empty($data['product_id'])){
		if(!empty(\Session::get('cart.'.$data['product_id']))){
			//Query For Getting Product Details For View Cart
			$query = \DB::table('tbl_products')
			              ->select('tbl_products.user_id', 'name', 'slug', 'featured_image', 'weight', 'store_name', 'store_slug')
			              ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
			              ->LeftJoin('tbl_store_settings', 'tbl_store_settings.vendor_id', '=', 'tbl_products.user_id')
			              ->where('tbl_products.id', $data['product_id']);
	      	$result = $query->first();

	      	if($result->store_name == ''){
	            $store_name = 'Shopker';
	            $store_slug = '#';
	        }else{
	        	$store_name = $result->store_name;
	            $store_slug = $result->store_slug;
	        }

			$cart = Session::get('cart');
            $cart = array(
            	'id' => $data['product_id'],
				'name' => \Str::limit($result->name, 23),
				'slug' => $result->slug,
				'weight' => $result->weight,
				'total_weight' => $result->weight * \Session::get('cart.'.Request::input('product_id'))['quantity'] + Request::input('quantity'),
				'image' => env('ADMIN_URL').'images/ecommerce/products/'.$result->featured_image,
				'quantity' => \Session::get('cart.'.Request::input('product_id'))['quantity'] + Request::input('quantity'),
				'price' => Request::input('product_price'),
				'type' => Request::input('product_type'),
				'seller_id' => $result->user_id,
				'store_name' => $store_name,
				'store_slug' => $store_slug,
			);

            $cart = \Session::put('cart.'.$data['product_id'], $cart);
            return true;
		}else{
			//Query For Getting Product Details For View Cart
			$query = \DB::table('tbl_products')
			              ->select('tbl_products.user_id', 'name', 'slug', 'featured_image', 'weight', 'store_name', 'store_slug')
			              ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
			              ->LeftJoin('tbl_store_settings', 'tbl_store_settings.vendor_id', '=', 'tbl_products.user_id')
			              ->where('tbl_products.id', $data['product_id']);
	      	$result = $query->first();

	      	if($result->store_name == ''){
	            $store_name = 'Shopker';
	            $store_slug = '#';
	        }else{
	        	$store_name = $result->store_name;
	            $store_slug = $result->store_slug;
	        }
	        
			$cart = Session::get('cart');
			$cart[$data['product_id']] = array(
				'id' => $data['product_id'],
				'name' => \Str::limit($result->name, 23), 
				'slug' => $result->slug,
				'weight' => $result->weight,
				'total_weight' => $result->weight * $data['quantity'],
				'image' => env('ADMIN_URL').'images/ecommerce/products/'.$result->featured_image,
				'quantity' => $data['quantity'],
				'price' => $data['product_price'],
				'type' => $data['product_type'],
				'seller_id' => $result->user_id,
				'store_name' => $store_name,
				'store_slug' => $store_slug,
			);

			$cart = \Session::put('cart', $cart);
			return true;
		}
	}
}