<?php

function site_settings(){
	//Query For Getting Sites
	$query = \DB::table('tbl_site_images')
	              ->select('favicon_image', 'header_image', 'footer_image', 'title', 'address', 'phone_1', 'phone_2', 'email_1', 'email_2')
	              ->leftJoin('tbl_site_settings', 'tbl_site_settings.id', '=', 'tbl_site_images.id')
	              ->orderBy('tbl_site_images.id', 'DESC');
  	$result = $query->first();

  	if(!empty($result)){
  		$data = array(
        'site_title' => $result->title,
        'site_address' => $result->address,
        'site_phone_number1' => $result->phone_1,
        'site_phone_number2' => $result->phone_2,
        'site_email1' => $result->email_1,
        'site_email2' => $result->email_2,
  			'favicon_image' => env('ADMIN_URL').'images/settings/favicon/'.$result->favicon_image,
        'header_image' => env('ADMIN_URL').'images/settings/logo/'.$result->header_image,
        'footer_image' => env('ADMIN_URL').'images/settings/logo/'.$result->footer_image,
  		);

  		return $data;
  	} 
}