<?php

function subcribe_us($params){
	//Query For Getting Logo
    $query = DB::table('tbl_site_images')
                 ->select('header_image');
    $result = $query->first();

	$data = array(
	    'content' => 'Thank You For subcribed us Dear',
	    'website_url' => route('home'),
	    'logo' => env('ADMIN_URL').'images/settings/logo/'.$result->header_image,
	    'email' => $params['email'],
	);

	\Mail::send(['html' => 'email_templates.template1'], $data, function($message) use ($data){
	    $message->to($data['email'], $data['email'])
	            ->subject('Thank you for subcribed us.')
	            ->from('admin@shopker.pk', 'Shopker');
	});

	if(\Mail::failures()){
		return 'error';
    }else{
    	return 'success';
    }
}