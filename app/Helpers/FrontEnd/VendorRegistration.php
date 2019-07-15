<?php

function vendor_registration($data){
	//Inputs Validation
	$input_validations = Request::validate([
	    'first_name' => 'required',
	    'last_name' => 'required',
	    'phone_no' => 'required|unique:tbl_users|min:11|max:13',
	    'email' => 'required|unique:tbl_users|email',
	    'address' => 'required',
	    'country' => 'required',
	    'city' => 'required|numeric',
	    'password' => 'required|min:8|regex:/^((?=.*[a-z]))((?=.*[A-Z]))((?=.*[0-9])).+$/',
	    'bussiness_name' => 'required',
	    'store_name' => 'required',
	    'store_email' => 'required|unique:tbl_store_settings|email',
	    'store_phone_no' => 'required|unique:tbl_store_settings',
	    'store_cell_no' => 'required|unique:tbl_store_settings',
	    'store_address' => 'required',
	    'warehouse_address' => 'required',
	    'cnic' => 'required|max:13|min:13|unique:tbl_store_settings',
	    'ntn_no' => 'nullable|unique:tbl_store_settings',
	    'store_country' => 'required',
	    'store_city' => 'required|numeric',
	    'name' => 'required',
	    'title' => 'required|unique:tbl_stores_bank_details',
	    'account_no' => 'required|unique:tbl_stores_bank_details',
	    'branch_code' => 'required|unique:tbl_stores_bank_details',
	    'cheque_image' => 'required|mimes:jpeg,jpg,png|max:2000|', //dimensions:max_width=300,max_height:200',
	]);

	if($data['password'] == $data['confirm_password']){
		//Set Field data according to table column
	    $array = array(
	    	'ip_address' => Request::ip(),
	    	'varification_code' => rand(111111, 999999),
	    	'first_name' => $data['first_name'],
	    	'last_name' => $data['last_name'],
	        'address' => $data['address'],
	        'phone_no' => $data['phone_no'],
	        'email' => $data['email'],
	        'password' => sha1($data['password']),
	        'country_id' => $data['country'],
	        'city_id' => $data['city'],
	        'image' => 'avatar.png',
	        'role' => 2,
	        'status' => 1,
	        'created_date' => date('Y-m-d'),
	    	'created_time' => date('h:i:s'),
	    );

	    //Query For Inserting Personal Details
	    $vendor_id = \DB::table('tbl_users')
	                      ->insertGetId($array);

      	//Set Field data according to table column
	    $array = array(
	    	'ip_address' => Request::ip(),
	    	'user_id' => $vendor_id,
	    	'gender_id' => 0,
	        'created_date' => date('Y-m-d'),
	    	'created_time' => date('h:i:s'),
	    );

	    //Query For Inserting Gender
	    $gender_id = \DB::table('tbl_users_genders')
	                      ->insertGetId($array);

	  	//Set Field data according to table column
	    $array = array(
	    	'ip_address' => Request::ip(),
	    	'vendor_id' => $vendor_id,
	    	'bussiness_name' => $data['bussiness_name'],
	    	'store_name' => $data['store_name'],
	    	'store_slug' => preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', strtolower($data['store_name']))),
	        'store_email' => $data['store_email'],
	    	'store_phone_no' => $data['store_phone_no'],
	        'store_cell_no' => $data['store_cell_no'],
	        'store_address' => $data['store_address'],
	        'warehouse_address' => $data['warehouse_address'],
	        'cnic' => $data['cnic'],
	        'ntn_no' => $data['ntn_no'],
	        'country_id' => $data['store_country'],
	        'city_id' => $data['store_city'],
	        'created_date' => date('Y-m-d'),
	    	'created_time' => date('h:i:s'),
	    );

	    //Query For Inserting Store Setails
	    $store_id = \DB::table('tbl_store_settings')
	                  ->insertGetId($array);

	  	//Set Field data according to table column
	    $array = array(
	    	'ip_address' => Request::ip(),
	    	'store_id' => $store_id,
	        'cheque' => single_image_upload(Request::file('cheque_image')),
	        'created_date' => date('Y-m-d'),
	    	'created_time' => date('h:i:s'),
	    );

	    //Query For Inserting Cheque Image
	    $cheque_id = \DB::table('tbl_store_images')
	                  ->insertGetId($array);

	  	//Set Field data according to table column
	    $array = array(
	    	'ip_address' => Request::ip(),
	    	'store_id' => $store_id,
	    	'name' => $data['name'],
	    	'title' => $data['title'],
	        'account_no' => $data['account_no'],
	    	'branch_code' => $data['branch_code'],
	        'created_date' => date('Y-m-d'),
	    	'created_time' => date('h:i:s'),
	    );

	    //Query For Inserting Bank Details
	    $bank_id = \DB::table('tbl_stores_bank_details')
	                  ->insertGetId($array);

	  	if(!empty($vendor_id && $store_id && $cheque_id && $bank_id && $gender_id)){
	  		return 0;
	  	}else{
	  		return 1;
	  	}
	}else{
		return 2;
	}
}