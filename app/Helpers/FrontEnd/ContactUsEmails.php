<?php

function contact_us_email($data){
	//Inputs Validation
	$input_validations = Request::validate([
	    'name' => 'required',
	    'email' => 'required|email',
	    'subject' => 'required',
	    'phone_no' => 'required|min:11|max:13',
	    'message' => 'required',
	]);

	//Set Field data according to table column
  	$array = array(
	  	'ip_address' => Request::ip(),
	  	'name' => $data['name'],
	  	'email' => $data['email'],
	    'subject' => $data['subject'],
	  	'phone_no' => $data['phone_no'],
	  	'message' => $data['message'],
	  	'type' => 1,
	    'created_date' => date('Y-m-d'),
	  	'created_time' => date('h:i:s'),
  	);

  	//Query For Inserting Emails
  	$query = \DB::table('tbl_emails')
                ->insertGetId($array);

	if(!empty($query)){
		//Query For Getting Logo
  		$query = DB::table('tbl_site_images')
  		             ->select('header_image');
     	$result = $query->first();

  		$data = array(
  			'content' => 'Thank You For Contact Us Dear',
  			'website_url' => route('home'),
  			'logo' => env('ADMIN_URL').'images/settings/logo/'.$result->header_image,
  			'name' => $data['first_name'].' '.$data['last_name'],
  			'email' => $data['email'],
  			'subject' => $data['subject'],
  			'phone_no' => $data['phone_no'],
  			'message' => $data['message'],
  		);

  		\Mail::send(['html' => 'email_templates.template1'], $data, function($message) use ($data){
         	$message->to('admin@shopker.pk', 'Shopker')
         		    ->subject('Thank you for sign up.')
         			->from($data['email'], $data['name']);
		});
		
		return 0;
	}else{
		return 1;
	}
}