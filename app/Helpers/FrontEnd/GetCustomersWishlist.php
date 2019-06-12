<?php

function get_customers_wishlist($id){
	//Query For Getting this Customer Wishlist
	$query = \DB::table('tbl_products')
                 ->select('tbl_products.id', 'tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price')
                 ->LeftJoin('tbl_wishlists', 'tbl_wishlists.product_id', '=', 'tbl_products.id')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_wishlists.user_id', $id)
                 ->orderBy('tbl_wishlists.product_id', 'DESC');
 	$result = $query->paginate(16);

 	if(!empty(count($result) > 0)){
        if(count($result) >= 16){
            $pagination = $result->links();
        }else{
            $pagination = '';
        }

        foreach($result as $row){
        	if(!empty($row->sale_price)){
                $discount = explode('.', (($row->regural_price - $row->sale_price) * 100) / $row->regural_price + 1)[0];
            }else{
                $discount = 0;
            }
            
            //Result Array
            $data[] = array(
                'id' => $row->id,
                'image' => env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image,
                'image_alt' => $row->featured_image,
                'name' => $row->name,
                'slug' => $row->slug,
                'cost_price' => $row->regural_price,
                'sale_price' => $row->sale_price,
                'total_discount' => $discount,
                'pagination' => $pagination,
            );
        }

    	return $data;
    }
}