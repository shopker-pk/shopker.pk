<?php

function latest_products(){
    //Query For Getting Products For Daily Deals
    $query = \DB::table('tbl_products')
                 ->select('tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->orderBy('tbl_products.id', 'DESC')
                 ->limit(50);
    $products = $query->get();
    //dd($products);
    //Query For Getting those latest products who have ratings
    $query = DB::table('tbl_products_reviews')
                 ->select('product_id', DB::raw('AVG(tbl_products_reviews.buyer_stars) as total_stars'))
                 ->groupBy('product_id');
    $rated_products = $query->get();
    
    if(!empty(count($rated_products) > 0)){
        foreach($rated_products as $row){
            $stars[$row->product_id] = $row->total_stars;
        }
    }   

    //Check if Query is null or not
    if(!empty(count($products) > 0)){
        foreach($products as $row){
            $last_id = $row->id;

            //Getting Total Stars
            if(!empty($stars[$row->id])){
                $total_stars = explode('.', $stars[$row->id])[0];
            }else{
                $total_stars = 0;
            }
                
            //Result Array
            $data[] = array(
                'id' => $row->id,
                'image' => env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image,
                'image_alt' => $row->featured_image,
                'name' => \Str::limit($row->name, 23),
                'slug' => $row->slug,
                'cost_price' => $row->regural_price,
                'sale_price' => $row->sale_price,
                'total_stars' => $total_stars,
                'total_discount' => round(($row->regural_price - $row->sale_price * 100) / $row->regural_price), //Count Discount Percentage
            );
        }
        
        Session::put('last_id', $last_id);
        
        return $data;
    }
}