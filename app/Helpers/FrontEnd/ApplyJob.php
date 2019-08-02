<?php

function apply_job($params){
	//Inputs Validation
	$input_validations = Request::validate([
	    'name' => 'required',
	    'email' => 'required|email',
	    'job_title' => 'required',
	    'phone_no' => 'required|max:13',
	    'message' => 'required',
	    'cv' => 'required',
	]);

	//Set data accordings to table columns
    $data = array(
        'ip_address' => Request::ip(),
        'name' => $params['name'],
        'email' => $params['email'],
        'job_title' => $params['job_title'],
        'phone_no' => $params['phone_no'],
        'message' => $params['message'],
        'cv' => single_image_upload($params['cv']),
        'created_date' => date('Y-m-d'),
        'created_time' => date('H:i:s'),
    );

    //Insert data in table
    $query = DB::table('tbl_careers')
                 ->insertGetId($data);

 	if(!empty($query)){
 		return 'success';
 	}else{
 		return 'error';
 	}
}