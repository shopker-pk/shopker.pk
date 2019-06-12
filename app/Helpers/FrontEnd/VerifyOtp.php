<?php

function verify_otp($params){
	//Inputs Validation
	$input_validations = Request::validate([
	    'otp' => 'required|numeric|digits_between:6,6',
	]);

	//Query For Validating Otp No
	$query = DB::table('tbl_users')
	             ->select('id')
	             ->where('id', \Session::get('user_id'))
	             ->where('varification_code', $params['otp']);
 	$result = $query->first();

  	if(!empty($result->id)){
  		return 'success';
  	}else{
  		return 'error';
  	}
}