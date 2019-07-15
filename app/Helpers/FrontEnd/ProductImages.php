<?php

function product_images($id){
    if(!empty($id)){
        //Query For Getting Images Of Specific Products
        $query = DB::table('tbl_products_images')
                     ->select('tbl_products_images.image', 'tbl_products.name')
                     ->LeftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_products_images.product_id')
                     ->where('tbl_products_images.product_id', $id)
                     ->orderBy('tbl_products_images.product_id', 'DESC');
        $product_images = $query->get();

        if(!empty(count($product_images) > 0)){
            $count = 1;
            foreach($product_images as $product_image){
                $products_images['"product_image_'.$count.'"'] = env('ADMIN_URL').'images/ecommerce/products/'.$product_image->image;
                $count++;
            }
            
            return $products_images;
        }
    }
}