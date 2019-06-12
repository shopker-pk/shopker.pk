<?php

function all_best_selling(){
    //Query For Getting Best Selling Products
    $query = \DB::table('tbl_orders')
                 ->select('tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_orders.product_id')
                 ->LeftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_orders.product_id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->orderBy('tbl_orders.id', 'DESC');
 	$result = $query->paginate(40);

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
        if(count($result) >= 40){
            $pagination = $result->links();
        }else{
            $pagination = '';
        }
        
        foreach($result as $row){
            //Getting Total Stars
            if(!empty($stars[$row->id])){
                $total_stars = explode('.', $stars[$row->id])[0];
            }else{
                $total_stars = 0;
            }
            
            //Count Discount Percentage
            if(!empty($row->sale_price)){
                $discount = explode('.', (($row->regural_price - $row->sale_price) * 100) / $row->regural_price + 1)[0];
            }else{
                $discount = 0;
            }

            //Result Array
            $data[] = array(
                'image' => env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image,
                'image_alt' => $row->featured_image,
                'name' => $row->name,
                'slug' => $row->slug,
                'cost_price' => $row->regural_price,
                'sale_price' => $row->sale_price,
                'total_stars' => $total_stars,
                'total_discount' => $discount,
                'pagination' => $pagination,
            );
        }
        
    	return $data;
    }
}