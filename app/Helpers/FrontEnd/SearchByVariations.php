<?php

function search_by_variations($slug){
    //Query For Getting Products By Slug
    $query = DB::table('tbl_product_categories')
                 ->leftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_product_categories.product_id')
                 ->leftJoin('tbl_parent_categories', 'tbl_parent_categories.id', '=', 'tbl_product_categories.parent_id')
                 ->leftJoin('tbl_child_categories', 'tbl_child_categories.id', '=', 'tbl_product_categories.child_id')
                 ->leftJoin('tbl_sub_child_categories', 'tbl_sub_child_categories.id', '=', 'tbl_product_categories.sub_child_id')
                 ->leftJoin('tbl_product_brands', 'tbl_product_brands.product_id', '=', 'tbl_product_categories.product_id')
                 ->leftJoin('tbl_brands_for_products', 'tbl_brands_for_products.id', '=', 'tbl_product_brands.brand_id')
                 ->leftJoin('tbl_variations_for_products', 'tbl_variations_for_products.id', '=', 'tbl_products.variation_id')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->select('tbl_parent_categories.slug as parent_slug', 'tbl_parent_categories.name as parent_name', 'tbl_child_categories.slug as child_slug', 'tbl_child_categories.name as child_name', 'tbl_sub_child_categories.slug as sub_child_slug', 'tbl_sub_child_categories.name as sub_child_name', 'tbl_brands_for_products.name as brand_name', 'tbl_brands_for_products.slug as brand_slug', 'tbl_products.id', 'tbl_products.name as product_name', 'tbl_products.slug as product_slug', 'tbl_products.regural_price as cost_price', 'tbl_products.sale_price', 'tbl_variations_for_products.id as variation_id', 'tbl_variations_for_products.value as variation_name', 'tbl_products_featured_images.featured_image');
                 if(empty(explode(',', $slug)[1])){
           $query->Orwhere('tbl_products.slug', 'Like', '%'.$slug.'%')
                 ->Orwhere('tbl_parent_categories.slug', 'Like', '%'.$slug.'%')
                 ->Orwhere('tbl_child_categories.slug', 'Like', '%'.$slug.'%')
                 ->Orwhere('tbl_sub_child_categories.slug', 'Like', '%'.$slug.'%')
                 ->Orwhere('tbl_variations_for_products.value', 'Like', '%'.$slug.'%')
                 ->Orwhere('tbl_brands_for_products.slug', 'Like', '%'.$slug.'%');
                 }elseif(!empty(explode(',', $slug)[1])){
           $query->OrwhereBetween('tbl_products.regural_price', array(explode(',', $slug)[0], explode(',', $slug)[1]))
                 //->Orwhere('tbl_products.regural_price', '<=', explode(',', $slug)[1])
                 ->OrwhereBetween('tbl_products.sale_price', array(explode(',', $slug)[0], explode(',', $slug)[1]));
                 //->Orwhere('tbl_products.sale_price', '<=', explode(',', $slug)[1]);
                 }
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

            //Concatenating Image Path with image object
            $image = env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image;
                
            //Count Discount Percentage
            if(!empty($row->sale_price)){
                $discount = explode('.', (($row->cost_price - $row->sale_price) * 100) / $row->cost_price + 1)[0];
            }else{
                $discount = 0;
            }
            
            //Result Array
            $data[] = array(
                'id' => $row->id,
                'image' => $image,
                'image_alt' => $row->featured_image,
                'name' => $row->product_name,
                'slug' => $row->product_slug,
                'cost_price' => $row->cost_price,
                'sale_price' => $row->sale_price,
                'total_stars' => $total_stars,
                'total_discount' => $discount,
                'pagination' => $pagination,
            );
        }

        return $data;
    }
}