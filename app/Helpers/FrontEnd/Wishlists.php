<?php

function wishlists($id){
    if(!empty($id)){
        //Query For Checking If Already Exits in user wishlists
        $query = \DB::table('tbl_wishlists')
                      ->select('product_id')
                      ->where('user_id', \Session::get('customer_details')['id'])
                      ->where('product_id', $id);
        $result = $query->first();
        
        if(empty($result->product_id)){
            //Query For Getting Product Details For View Cart
            $query = \DB::table('tbl_products')
                          ->select('tbl_products.user_id', 'name', 'slug', 'featured_image')
                          ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                          ->where('tbl_products.id', $id);
            $result = $query->first();

            //Set Field data according to table column
            $array = array(
                'ip_address' => Request::ip(),
                'user_id' => \Session::get('customer_details')['id'],
                'product_id' => $id,
                'created_date' => date('Y-m-d'),
                'created_time' => date('h:i:s'),
            );

            //Query For Inserting Product In Wishlist
            $query = \DB::table('tbl_wishlists')
                          ->insertGetId($array);
            
            if(!empty($query)){
                $wishlists = Session::get('wishlists');
                $wishlists = array(
                    'id' => $id,
                    'name' => \Str::limit($result->name, 23),
                    'slug' => $result->slug,
                    'image' => env('ADMIN_URL').'images/ecommerce/products/'.$result->featured_image,
                );

                $wishlists = \Session::put('wishlists.'.$id, $wishlists);

                return 0;
            }else{
                return 1;
            }
        }else{
            return 2;
        }
    }else{
        return 3;
    }
}