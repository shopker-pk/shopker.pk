<?php 

function bottom_top_banners($page_id){
	//Query For Getting Header Banners
    $query = \DB::table('tbl_banner_advertisements')
                 ->select('id', 'image', 'url')
                 ->where('page_id', $page_id)
                 ->where('type', 1)
                 ->where('status', 0)
                 ->where('start_date', '<=', date('Y-m-d'))
                 ->where('end_date', '>=', date('Y-m-d'))
                 ->orderBy('id', 'DESC');
 	$result = $query->get();

    if(count($result) > 0){
        foreach($result as $row){
            //Result Array
            $data = array(
                'id' => $row->id,
                'image' => env('ADMIN_URL').'images/advertisements/banners/'.$row->image,
                'image_alt' => $row->image,
                'url' => $row->url,
            );
        }
        
        return $data;
    }
}