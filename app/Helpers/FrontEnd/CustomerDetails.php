<?php

function customer_details(){
	//Query For Getting Cusomer Details
	$query = DB::table('tbl_users')
	             ->select('tbl_users.id', 'first_name', 'last_name', 'address', 'phone_no', 'email', 'country_id', 'city_id', 'dob', 'image', 'gender_id')
	             ->leftJoin('tbl_users_genders', 'tbl_users_genders.user_id', '=', 'tbl_users.id')
	             ->where('tbl_users.id', \Session()->get('customer_details')['id']);
 	$result = $query->first();

 	if(!empty($result->id)){
 		$data[] = array(
 			'id' => $result->id,
 			'first_name' => $result->first_name,
 			'last_name' => $result->last_name,
 			'address' => $result->address,
 			'phone_no' => $result->phone_no,
 			'email' => $result->email,
 			'country_id' => $result->country_id,
 			'city_id' => $result->city_id,
 			'dob' => date('d-M-Y', strtotime($result->dob)),
 			'image' => env('ADMIN_URL').'images/profile_images/'.$result->image,
 			'gender_id' => $result->gender_id,
 		);

 		return $data;
 	}
}