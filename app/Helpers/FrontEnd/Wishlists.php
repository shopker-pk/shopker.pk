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
                );

                $wishlists = \Session::put('wishlists', $wishlists);

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