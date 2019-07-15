<?php

function remove_customer_wishlist($user_id, $product_id){
	//Query For Deleting Products From Wishlist
	$query = DB::table('tbl_wishlists')
	             ->select('user_id', 'product_id')
	             ->where('user_id', $user_id)
	             ->where('product_id', $product_id);
 	$result = $query->first();

 	if(!empty($result)){
 		//Query For Deleting Product From Customer Wishlist
 		$query = DB::table('tbl_wishlists')
 					 ->where('user_id', $user_id)
 					 ->where('product_id', $product_id)
 		             ->delete(); 

     	if(!empty($query)){
     		return 'success';
     	}else{
     		return 'error';
     	}
 	}else{
 		return 'not_exist';
 	}
}