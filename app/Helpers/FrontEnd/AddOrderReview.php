<?php

function add_order_review($user_id, $order_no, $params){
	//Inputs Validation
	$input_validations = Request::validate([
	    'rate' => 'nullable|numeric',
	    'review' => 'nullable',
	]);

    if(!empty($params['rate'])){
        $stars = $params['rate'];
    }else{
        $stars = 0;
    }

    if(!empty($params['review'])){
        $review = $params['review'];
    }else{
        $review = ' ';
    }

	//Set Field data according to table column
    $data = array(
    	'buyer_ip_address' => Request::ip(),
        'buyer_id' => $user_id,
        'order_no' => $order_no,
        'stars' => $stars,
        'buyer_comment' => $review,
        'buyer_review_created_date' => date('Y-m-d'),
        'buyer_review_created_time' => date('h:i:s'),
    );

    //Query For Updating Customer Profile
    $query = \DB::table('tbl_orders_reviews')
                  ->where('buyer_id', $user_id)
                  ->where('order_no', $order_no)
                  ->update($data);

  	if(!empty($query)){
  		return 'success';
  	}else{
  		return 'error';
  	}
}