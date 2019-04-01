<?php

function product_reviews($id){
	//Query For Getting Product Reviews
	$query = DB::table('tbl_products_rating')
	             ->select('stars', 'buyer_comment', 'vendor_comment', 'tbl_products_rating.created_date', 'tbl_products_rating.created_time', 'first_name', 'last_name', 'store_name', 'name')  
	             ->leftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_products_rating.product_id')
	             ->leftJoin('tbl_users', 'tbl_users.id', '=', 'tbl_products_rating.buyer_id')
	             ->leftJoin('tbl_store_settings', 'tbl_store_settings.vendor_id', '=', 'tbl_products.user_id')
	             ->where('product_id', $id)
	             ->orderBy('tbl_products_rating.id');
 	$result = $query->get();

 	//Check if Query is null or not
    if(!empty(count($result) > 0)){
    	foreach($result as $row){
    		//Result Array
	        $data[] = array(
	        	'store_name' => $row->store_name,
	        	'user_name' => $row->first_name.' '.$row->last_name,
	        	'stars' => $row->stars,
	        	'buyer_comment' => $row->buyer_comment,
	        	'vendor_comment' => $row->vendor_comment,
	        	'product_name' => $row->name,
	        	'created_date' => $row->created_date,
	        	'created_time' => $row->created_time,
	    	);
    	}

    	return $data;
	}
}