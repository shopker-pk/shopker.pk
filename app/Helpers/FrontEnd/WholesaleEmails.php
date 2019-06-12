<?php

function wholesale_email($data){
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
  	'type' => 0,
    'created_date' => date('Y-m-d'),
  	'created_time' => date('h:i:s'),
  );

  //Query For Inserting Emails
  $query = \DB::table('tbl_emails')
                ->insertGetId($array);

	if(!empty($query)){
		return 0;
	}else{
		return 1;
	}
}