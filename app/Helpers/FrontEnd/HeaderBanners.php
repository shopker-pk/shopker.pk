<?php

function header_banners($page_id){
    //Query For Getting Header Banners
    $query = \DB::table('tbl_banner_advertisements')
                 ->select('id', 'image', 'url')
                 ->where('page_id', $page_id)
                 ->where('type', 0)
                 ->where('status', 0)
                 ->where('start_date', '<=', date('Y-m-d'))
                 ->where('end_date', '>', date('Y-m-d'))
                 ->orderBy('id', 'DESC');
 	$result = $query->get();

    if(!empty($result)){
        foreach($result as $row){
            //Result Array
            $data[] = array(
                'id' => $row->id,
                'image' => env('ADMIN_URL').'public/assets/admin/images/advertisements/banners/'.$row->image,
                'image_alt' => $row->image,
                'url' => $row->url,
            );
        }
        return $data;
    }
}