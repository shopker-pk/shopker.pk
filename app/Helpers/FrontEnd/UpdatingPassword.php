<?php

function updating_password($params){
	//Inputs Validation
	$input_validations = Request::validate([
	    'password' => 'required|min:8|regex:/^((?=.*[a-z]))((?=.*[A-Z]))((?=.*[0-9])).+$/',
        'confirm_password' => 'required|min:8|regex:/^((?=.*[a-z]))((?=.*[A-Z]))((?=.*[0-9])).+$/|same:password',
	]);

	//Set Field data according to table column
    $data = array(
    	'ip_address' => Request::ip(),
    	'varification_code' => rand(111111, 999999),
    	'password' => sha1($params['confirm_password']),
        'created_date' => date('Y-m-d'),
    	'created_time' => date('h:i:s'),
    );

    //Query For Updating Varification Code
    $query = \DB::table('tbl_users')
                  ->where('id', \Session::get('user_id'))
                  ->update($data); 

  	if($query == 1){
  		\Session::forget('user_id');
        
        return 'success';
  	}else{
  		return 'error';
  	}
}