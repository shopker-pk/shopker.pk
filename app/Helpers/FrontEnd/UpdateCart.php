<?php

function update_cart($params){
	Session::forget('cart');

	$count = 0;
	foreach($params['product_id'] as $row){
		//Query For Getting Product Details For View Cart
		$query = \DB::table('tbl_products')
		              ->select('tbl_products.user_id', 'name', 'slug', 'featured_image', 'weight', 'store_name', 'store_slug')
		              ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
		              ->LeftJoin('tbl_store_settings', 'tbl_store_settings.vendor_id', '=', 'tbl_products.user_id')
		              ->where('tbl_products.id', $row);
      	$result = $query->first();

      	if($result->store_name == ''){
            $store_name = 'Shopker';
            $store_slug = '#';
        }else{
        	$store_name = $result->store_name;
            $store_slug = $result->store_slug;
        }

		$cart = array(
        	'id' => $row,
			'name' => \Str::limit($result->name, 23),
			'slug' => $result->slug,
			'weight' => $result->weight,
			'total_weight' => $result->weight * $params['product_quantity'][$row][$count],
			'image' => env('ADMIN_URL').'images/ecommerce/products/'.$result->featured_image,
			'quantity' => $params['product_quantity'][$row][$count],
			'price' => $params['product_price'][$row][$count],
			'type' => $params['product_type'][$row][$count],
			'seller_id' => $result->user_id,
			'store_name' => $store_name,
			'store_slug' => $store_slug,
		);

        $cart = \Session::put('cart.'.$row, $cart);
	}
	
	return 'success';
}