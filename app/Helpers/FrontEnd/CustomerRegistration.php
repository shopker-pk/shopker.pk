<?php

function customer_registration($data){
	//Inputs Validation
	$input_validations = Request::validate([
	    'first_name' => 'required',
	    'last_name' => 'required',
	    'phone_no' => 'required|unique:tbl_users|min:11|max:13',
	    'email' => 'required|unique:tbl_users|email',
	    'password' => 'required|min:8|regex:/^((?=.*[a-z]))((?=.*[A-Z]))((?=.*[0-9])).+$/',
	    'gender' => 'required|numeric',
	    'dob' => 'required',
	    'country' => 'required',
	    'city' => 'required|numeric',
	    'newsletter' => 'nullable|numeric',
	]);

	if($data['password'] == $data['confirm_password']){
		//Set Field data according to table column
	    $array = array(
	    	'ip_address' => Request::ip(),
	    	'varification_code' => rand(111111, 999999),
	    	'first_name' => $data['first_name'],
	    	'last_name' => $data['last_name'],
	        'phone_no' => $data['phone_no'],
	        'email' => $data['email'],
	        'password' => sha1($data['password']),
	        'country_id' => $data['country'],
	        'city_id' => $data['city'],
	        'dob' => date('Y-m-d', strtotime($data['dob'])),
	        'image' => 'avatar.png',
	        'role' => 3,
	        'status' => 0,
	        'created_date' => date('Y-m-d'),
	    	'created_time' => date('h:i:s'),
	    );

	    //Query For Inserting Personal Details
	    $user_id = \DB::table('tbl_users')
	                    ->insertGetId($array);

	  	//Set Field data according to table column
	    $array = array(
	    	'ip_address' => Request::ip(),
	    	'user_id' => $user_id,
	    	'gender_id' => $data['gender'],
	        'created_date' => date('Y-m-d'),
	    	'created_time' => date('h:i:s'),
	    );

	    //Query For Inserting Gender
	    $gender_id = \DB::table('tbl_users_genders')
	                      ->insertGetId($array);

      	if(!empty($data['news_letter'])){
  			//Set Field data according to table column
		    $array = array(
		    	'ip_address' => Request::ip(),
		    	'user_id' => $user_id,
		        'news_letter' => $data['news_letter'],
		        'created_date' => date('Y-m-d'),
		    	'created_time' => date('h:i:s'),
		    );

		    //Query For Inserting News Letter Status
		    $newsletter_id = \DB::table('tbl_users_news_letter')
		                      ->insertGetId($array);
      	}else{
      		//Set Field data according to table column
		    $array = array(
		    	'ip_address' => Request::ip(),
		    	'user_id' => $user_id,
		        'created_date' => date('Y-m-d'),
		    	'created_time' => date('h:i:s'),
		    );

		    //Query For Inserting News Letter Status
		    $newsletter_id = \DB::table('tbl_users_news_letter')
		                      ->insertGetId($array);
      	}
	  	

	  	if(!empty($user_id && $gender_id && $newsletter_id)){
	  		return 0;
	  	}else{
	  		return 1;
	  	}
	}else{
		return 2;
	}
}