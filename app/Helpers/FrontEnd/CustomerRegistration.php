<?php

function customer_registration($data){
	//Query For Checking If Email is already exist on role 2
	$query = DB::table('tbl_users')
	             ->select('id')
	             ->where('email', 'like', '%'.$data['email'].'%')
	             ->where('role', 3);
 	$result = $query->first();

 	if(empty($result->id)){
 		//Inputs Validation
		$input_validations = Request::validate([
		    'first_name' => 'required',
		    'last_name' => 'required',
		    'phone_no' => 'required|unique:tbl_users|min:11|max:13',
		    'email' => 'required|email',
		    'password' => 'required|min:8|regex:/^((?=.*[a-z]))((?=.*[A-Z]))((?=.*[0-9])).+$/',
		    'gender' => 'required|numeric',
		    'dob' => 'required',
		    'country' => 'required',
		    'city' => 'required|numeric',
		    'newsletter' => 'nullable|numeric',
		]);

		if($data['password'] == $data['confirm_password']){
			//Set Field data according to table column
		    $array1 = array(
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
		                    ->insertGetId($array1);

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
		  		//Query For Getting Logo
		  		$query = DB::table('tbl_site_images')
		  		             ->select('header_image');
	         	$result = $query->first();

		  		$data = array(
		  			'content' => 'Thank You For Sign Up Dear',
		  			'website_url' => route('home'),
		  			'logo' => env('ADMIN_URL').'images/settings/logo/'.$result->header_image,
		  			'name' => $data['first_name'].' '.$data['last_name'],
		  			'email' => $data['email'],
		  			'sign_up' => 'sign_up',
		  		);

		  		\Mail::send(['html' => 'email_templates.template1'], $data, function($message) use ($data){
		         	$message->to($data['email'], $data['name'])
		         		    ->subject('Thank you for sign up.')
		         			->from('info@shopker.pk', 'Shopker');
	 			});

		  		return 0;
		  	}else{
		  		return 1;
		  	}
		}else{
			return 2;
		}
 	}else{
 		return 3;
 	}
}