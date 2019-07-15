<?php

function get_stores($slug){
	if(!empty($slug)){
		//Query For Getting Store Details
		$query = \DB::table('tbl_store_settings')
		              ->select('tbl_store_settings.store_name', 'tbl_store_settings.store_slug', 'tbl_store_images.logo', 'tbl_store_images.banner', 'tbl_users.id as user_id') 
		              ->leftJoin('tbl_store_images', 'tbl_store_images.store_id', '=', 'tbl_store_settings.id')
		              ->leftJoin('tbl_users', 'tbl_users.id', '=', 'tbl_store_settings.vendor_id')
		              ->where('tbl_store_settings.store_slug', 'LIKE', '%'.$slug.'%')
		              ->where('tbl_users.status', 0);
      	$result = $query->first();

      	if(!empty($result)){
      		//Result Array
            $data[] = array(
                'owner_id' => $result->user_id,
                'store_name' => $result->store_name,
	            'store_slug' => $result->store_slug,
	            'store_logo' => env('ADMIN_URL').'images/stores_logo/'.$result->logo,
	            'store_logo_alt' => $result->logo,
	            'store_banner' => env('ADMIN_URL').'images/stores_banners/'.$result->banner,
	            'store_banner_alt' => $result->banner,
            );
      	} 

      	return $data;
	}else{
		return false;
	}
}