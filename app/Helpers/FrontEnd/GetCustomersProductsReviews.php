<?php

function get_customers_products_reviews($id){
	//Query For Getting this Customer Products Reviews
	$query = \DB::table('tbl_products_reviews')
	              ->select('tbl_products_reviews.id', 'buyer_stars', 'buyer_comment', 'vendor_stars', 'vendor_comment', 'buyer_review_created_date', 'buyer_review_created_time', 'vendor_review_created_date', 'vendor_review_created_time', 'store_name', 'name')
	              ->leftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_products_reviews.product_id')
	              ->leftJoin('tbl_users', 'tbl_users.id', '=', 'tbl_products_reviews.buyer_id')
	              ->leftJoin('tbl_store_settings', 'tbl_store_settings.vendor_id', '=', 'tbl_products.user_id')
	              ->where('tbl_products_reviews.buyer_id', $id)
	              ->orderBy('tbl_products_reviews.id');
 	$result = $query->paginate(16);

 	if(count($result) > 0){
 		if(count($result) >= 16){
            $pagination = $result->links();
        }else{
            $pagination = '';
        }

 		foreach($result as $row){
 			$data[] = array(
	 			'review_id' => $row->id,
	 			'buyer_stars' => $row->buyer_stars,
	 			'buyer_comment' => $row->buyer_comment,
	 			'buyer_review_date' => date('D-M-Y', strtotime($row->buyer_review_created_date)),
	 			'buyer_review_time' => date('g:i:s A', strtotime($row->buyer_review_created_time)),
	 			'vendor_stars' => $row->vendor_stars,
	 			'vendor_comment' => $row->vendor_comment,
	 			'vendor_review_date' => date('D-M-Y', strtotime($row->vendor_review_created_date)),
	 			'vendor_review_time' => date('g:i:s A', strtotime($row->vendor_review_created_time)),
	 			'store_name' => $row->store_name,
	 			'product_name' => $row->name,
	 			'pagination' => $pagination,
	 		);
 		}

 		return $data;
	}
}