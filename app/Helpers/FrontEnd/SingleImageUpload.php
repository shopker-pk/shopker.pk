<?php

function single_image_upload($img){
	if(!empty($img)){
		if(!empty(Request::file('cheque_image'))){
			//Upload Image
	        $image = uniqid().'.'.Request::file('cheque_image')->guessExtension();
	        $image_path = Request::file('cheque_image')->move(Config::get('app.admin_url').'images/cheque_images/', $image);
		}if(!empty(Request::file('profile_image'))){
			//Upload Image
	        $image = uniqid().'.'.Request::file('profile_image')->guessExtension();
	        $image_path = Request::file('profile_image')->move(Config::get('app.admin_url').'images/profile_images/', $image);
		}
		
		return $image;
	}
}