<?php

function products_by_categories($slug){
    //Query For Getting Products By Parent Category
    $query = DB::table('tbl_product_categories')
                 ->select('tbl_parent_categories.name as parent_name', 'tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_parent_categories', 'tbl_parent_categories.id', 'tbl_product_categories.parent_id')
                 ->LeftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_product_categories.product_id')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_parent_categories.slug', $slug)
                 ->orderBy('tbl_products.id', 'DESC');
    $products_by_parent_category = $query->paginate(40);

    //Query For Getting Products By Child Category
    $query = DB::table('tbl_product_categories')
                 ->select('tbl_child_categories.name as child_name', 'tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_child_categories', 'tbl_child_categories.id', 'tbl_product_categories.child_id')
                 ->LeftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_product_categories.product_id')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_child_categories.slug', $slug)
                 ->orderBy('tbl_products.id', 'DESC');
    $products_by_child_category = $query->paginate(40);

    //Query For Getting Products By Sub Child Category
    $query = DB::table('tbl_product_categories')
                 ->select('tbl_sub_child_categories.name as sub_child_name', 'tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_sub_child_categories', 'tbl_sub_child_categories.id', 'tbl_product_categories.sub_child_id')
                 ->LeftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_product_categories.product_id')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_sub_child_categories.slug', $slug)
                 ->orderBy('tbl_products.id', 'DESC');
    $products_by_sub_child_category = $query->paginate(40);

    //Query For Getting those latest products who have ratings
    $query = DB::table('tbl_products_rating')
                 ->select('product_id', DB::raw('AVG(tbl_products_rating.stars) as total_stars'))
                 ->groupBy('product_id');
    $rated_products = $query->get();
    
    if(!empty($rated_products)){
        foreach($rated_products as $row){
            $stars[$row->product_id] = $row->total_stars;
        }
    }   

    //Check if Query is null or not
    if(!empty(count($products_by_parent_category) > 0)){
        if(count($products_by_parent_category) >= 1){
            $pagination = $products_by_parent_category->links();
        }else{
            $pagination = '';
        }

        foreach($products_by_parent_category as $row){
            //Getting Total Stars
            if(!empty($stars[$row->id])){
                $total_stars = explode('.', $stars[$row->id])[0];
            }else{
                $total_stars = 0;
            }

            //Concatenating Image Path with image object
            $image = env('ADMIN_URL').'public/assets/admin/images/ecommerce/products/'.$row->featured_image;
                
            //Count Discount Percentage
            if(!empty($row->from_date && $row->to_date)){
                $discount = explode('.', (($row->regural_price - $row->sale_price) * 100) / $row->regural_price)[0];
            }else{
                $discount = 0;
            }
            
            //Result Array
            $data[] = array(
                'image' => $image,
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
    }elseif(!empty(count($products_by_child_category) > 0)){
        if(count($products_by_child_category) >= 1){
            $pagination = $products_by_child_category->links();
        }else{
            $pagination = '';
        }

        foreach($products_by_child_category as $row){
            //Getting Total Stars
            if(!empty($stars[$row->id])){
                $total_stars = explode('.', $stars[$row->id])[0];
            }else{
                $total_stars = 0;
            }

            //Concatenating Image Path with image object
            $image = env('ADMIN_URL').'public/assets/admin/images/ecommerce/products/'.$row->featured_image;
                
            //Count Discount Percentage
            if(!empty($row->from_date && $row->to_date)){
                $discount = explode('.', (($row->regural_price - $row->sale_price) * 100) / $row->regural_price)[0];
            }else{
                $discount = 0;
            }
            
            //Result Array
            $data[] = array(
                'image' => $image,
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
    }elseif(!empty(count($products_by_sub_child_category) > 0)){
        if(count($products_by_sub_child_category) >= 40){
            $pagination = $products_by_sub_child_category->links();
        }else{
            $pagination = '';
        }

        foreach($products_by_sub_child_category as $row){
            //Getting Total Stars
            if(!empty($stars[$row->id])){
                $total_stars = explode('.', $stars[$row->id])[0];
            }else{
                $total_stars = 0;
            }
                
            //Count Discount Percentage
            if(!empty($row->from_date && $row->to_date)){
                $discount = explode('.', (($row->regural_price - $row->sale_price) * 100) / $row->regural_price)[0];
            }else{
                $discount = 0;
            }
            
            //Result Array
            $data[] = array(
                'image' => env('ADMIN_URL').'public/assets/admin/images/ecommerce/products/'.$row->featured_image,
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