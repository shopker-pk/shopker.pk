<?php

function get_customers_orders_reviews($id){
	//Query For Getting this Customer Products Reviews
	$query = \DB::table('tbl_orders_reviews')
	              ->select('tbl_orders_reviews.id', 'tbl_orders.order_no', 'buyer_stars', 'vendor_stars', 'buyer_comment', 'vendor_comment', 'buyer_review_created_date', 'buyer_review_created_time', 'vendor_review_created_date', 'vendor_review_created_time', 'store_name')
	              ->leftJoin('tbl_orders', 'tbl_orders.order_no', '=', 'tbl_orders_reviews.order_no')
	              ->leftJoin('tbl_store_settings', 'tbl_store_settings.vendor_id', '=', 'tbl_orders.seller_id')
	              ->where('tbl_orders_reviews.buyer_id', $id)
	              ->where('tbl_orders.status', 4)
	              ->orderBy('tbl_orders_reviews.order_no', 'DESC')
	              ->groupBy('tbl_orders.order_no');
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
	 			'order_no' => $row->order_no,
	 			'pagination' => $pagination,
	 		);
 		}

 		return $data;
	}
}