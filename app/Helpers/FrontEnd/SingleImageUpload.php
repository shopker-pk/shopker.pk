<?php

function single_image_upload($img){
	if(!empty($img)){
		if(!empty(Request::file('cheque_image'))){
			//Upload Image
	        $image = uniqid().'.'.Request::file('cheque_image')->guessExtension();
	        $image_path = Request::file('cheque_image')->move('/var/www/admin.shopker.pk/public/assets/admin/images/cheque_images/', $image);
		}if(!empty(Request::file('profile_image'))){
			//Upload Image
	        $image = uniqid().'.'.Request::file('profile_image')->guessExtension();
	        $image_path = Request::file('profile_image')->move('/var/www/admin.shopker.pk/public/assets/admin/images/profile_images/', $image);
		}if(!empty(Request::file('cv'))){
			//Upload File
	        $image = uniqid().'.'.Request::file('cv')->guessExtension();
	        $image_path = Request::file('cv')->move('/var/www/admin.shopker.pk/public/assets/admin/careers/', $image);
		}
		
		return $image;
	}
}