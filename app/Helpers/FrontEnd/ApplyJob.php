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
    $last_id = DB::table('tbl_careers')
                 ->insertGetId($data);

 	if(!empty($last_id)){
        //Query For Getting Logo
        $query = DB::table('tbl_site_images')
                     ->select('header_image');
        $site_details = $query->first();

        //Query For Getting CV
        $query = DB::table('tbl_careers')
                     ->select('cv')
                     ->where('id', $last_id);
        $cv = $query->first();

        $data = array(
            'content' => 'Thank you for applying at <a href="https://shopker.pk/">Shopker.pk</a>.',
            'website_url' => route('home'),
            'logo' => env('ADMIN_URL').'images/settings/logo/'.$site_details->header_image,
            'name' => $params['name'],
            'email' => $params['email'],
            'job_title' => $params['job_title'],
            'phone_no' => $params['phone_no'],
            'messagee' => $params['message'],
            'cv' => env('ADMIN_URL').'careers/'.$cv->cv,
        );

        \Mail::send(['html' => 'email_templates.template1'], $data, function($message) use ($data){
            $message->to('hr@shopker.pk', 'Shopker')
                    ->subject('Thank you for Shopping.')
                    ->from($data['email'], $data['name']);
        });

 		return 'success';
 	}else{
 		return 'error';
 	}
}