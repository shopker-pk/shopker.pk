<?php

function add_products_reviews($id, $params){
	//Inputs Validation
	$input_validations = Request::validate([
		'product_id' => 'required|numeric',
		'rate' => 'required|numeric',
		'review' => 'required',
	]);

    //Query For Checking If Review already exist by this customer
    $query = DB::table('tbl_products_reviews')
                 ->select('buyer_id', 'product_id')
                 ->where('buyer_id', \Session::get('customer_details')['id'])
                 ->where('product_id', $params['product_id']);
    $result = $query->first();

    if(empty($result)){
        //Set Field data according to table column
        $data = array(
            'buyer_ip_address' => Request::ip(),
            'buyer_id' => \Session::get('customer_details')['id'],
            'product_id' => $params['product_id'],
            'buyer_stars' => $params['rate'],
            'buyer_comment' => $params['review'],
            'buyer_review_created_date' => date('Y-m-d'),
            'buyer_review_created_time' => date('h:i:s'),
        );
        
        //Query For Inserting Product Review Details
        $query = DB::table('tbl_products_reviews')
                     ->insertGetId($data);

        if(!empty($query)){
            return 'true';
        }else{
            return 'false';
        }
    }else{
        return 'exist';
    } 
}