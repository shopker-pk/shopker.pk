<?php

function daily_deals(){
    //Query For Getting Products For Daily Deals
    $query = \DB::table('tbl_products')
                 ->select('tbl_products.id', 'tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.deal_start_time', 'tbl_products.deal_end_time')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_products.is_daily_deal', 0)
                 ->where('tbl_products.from_date', '<=', date('Y-m-d'))
                 ->where('tbl_products.to_date', '>=', date('Y-m-d'))
                 ->orderBy('tbl_products.id', 'DESC')
                 ->limit(12);
 	$result = $query->get();

    //Query For Getting those latest products who have ratings
    $query = DB::table('tbl_products_reviews')
                 ->select('product_id', DB::raw('AVG(tbl_products_reviews.buyer_stars) as total_stars'))
                 ->groupBy('product_id');
    $rated_products = $query->get();

    if(!empty($rated_products)){
        foreach($rated_products as $row){
            $stars[$row->product_id] = $row->total_stars;
        }
    } 

 	//Check if Query is null or not
    if(!empty(count($result) > 0)){
        foreach($result as $row){
            //Getting Total Stars
            if(!empty($stars[$row->id])){
                $total_stars = explode('.', $stars[$row->id])[0];
            }else{
                $total_stars = 0;
            }

            $deal_start_hours = date('H', strtotime($row->deal_start_time));
            $deal_end_hours = date('H', strtotime($row->deal_end_time));
            $deal_hours = (24 - $deal_end_hours) +  $deal_start_hours;

            if($deal_hours <= 9){
                $deal_hours = '0'.$deal_hours;
            }else{
                $deal_hours = $deal_hours;
            }

            $deal_start_minutes = date('i', strtotime($row->deal_start_time));
            $deal_end_minutes = date('i', strtotime($row->deal_end_time));
            $deal_minutes = $deal_end_minutes - $deal_start_minutes;

            if($deal_minutes <= 9){
                $deal_minutes = '0'.$deal_minutes;
            }else{
                $deal_minutes = $deal_minutes;
            }

            $deal_start_seconds = date('s', strtotime($row->deal_start_time));
            $deal_end_seconds = date('s', strtotime($row->deal_end_time));
            $deal_seconds = $deal_end_seconds - $deal_start_seconds;

            if($deal_seconds <= 9){
                $deal_seconds = '0'.$deal_seconds;
            }else{
                $deal_seconds = $deal_seconds;
            }

            //Result Array
            $data[] = array(
                'id' => $row->id,
                'image' => env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image,
                'image_alt' => $row->featured_image,
                'name' => \Str::limit($row->name, 20),
                'slug' => $row->slug,
                'cost_price' => $row->regural_price,
                'sale_price' => $row->sale_price,
                'total_stars' => $total_stars,
                'total_discount' => floor(($row->regural_price - $row->sale_price) * 100 / $row->regural_price),
                'deal_hours' => $deal_hours,
                'deal_minutes' => $deal_minutes,
                'deal_seconds' => $deal_seconds,
            );
        }

        return $data;
    }
}