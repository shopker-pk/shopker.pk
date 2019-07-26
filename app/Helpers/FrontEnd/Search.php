<?php

function search(){
	//Query For Getting Products By Parent Category
    $query = DB::table('tbl_product_categories')
                 ->select('tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_parent_categories', 'tbl_parent_categories.id', 'tbl_product_categories.parent_id')
                 ->LeftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_product_categories.product_id')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_parent_categories.name', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->Orwhere('tbl_parent_categories.slug', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->orderBy('tbl_products.id', 'DESC');
    $products_by_parent_category = $query->paginate(40);

    //Query For Getting Products By Child Category
    $query = DB::table('tbl_product_categories')
                 ->select('tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_child_categories', 'tbl_child_categories.id', 'tbl_product_categories.child_id')
                 ->LeftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_product_categories.product_id')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_child_categories.name', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->Orwhere('tbl_child_categories.slug', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->orderBy('tbl_products.id', 'DESC');
    $products_by_child_category = $query->paginate(40);

    //Query For Getting Products By Sub Child Category
    $query = DB::table('tbl_product_categories')
                 ->select('tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_sub_child_categories', 'tbl_sub_child_categories.id', 'tbl_product_categories.sub_child_id')
                 ->LeftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_product_categories.product_id')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_sub_child_categories.name', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->Orwhere('tbl_sub_child_categories.slug', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->orderBy('tbl_products.id', 'DESC');
    $products_by_sub_child_category = $query->paginate(40);

    //Query For Getting Products By Name
    $query = DB::table('tbl_products')
                 ->select('tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_products.name', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->Orwhere('tbl_products.slug', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->orderBy('tbl_products.id', 'DESC');
    $products_by_name = $query->paginate(40);

    //Query For Getting Products By Brand
    $query = DB::table('tbl_product_brands')
                 ->select('tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_brands_for_products', 'tbl_brands_for_products.id', 'tbl_product_brands.brand_id')
                 ->LeftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_product_brands.product_id')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_brands_for_products.name', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->Orwhere('tbl_brands_for_products.slug', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->orderBy('tbl_products.id', 'DESC');
    $products_by_brand = $query->paginate(40);

    //Query For Getting Products By Store Name
    $query = DB::table('tbl_store_settings')
                 ->select('tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_products', 'tbl_products.user_id', '=', 'tbl_store_settings.vendor_id')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.is_approved', 0)
                 ->where('tbl_store_settings.store_name', 'Like', '%'.utf8_encode(Request::input('name')).'%')
                 ->orderBy('tbl_products.id', 'DESC');
    $products_by_store = $query->paginate(40);

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
    if(!empty(count($products_by_parent_category) > 0)){
        if(count($products_by_parent_category) >= 40){
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
            $image = env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image;
                
            //Result Array
            $data[] = array(
                'id' => $row->id,
                'image' => $image,
                'image_alt' => $row->featured_image,
                'name' => $row->name,
                'slug' => $row->slug,
                'cost_price' => $row->regural_price,
                'sale_price' => $row->sale_price,
                'total_stars' => $total_stars,
                'total_discount' => floor(($row->regural_price - $row->sale_price) * 100 / $row->regural_price),
                'pagination' => $pagination,
            );
        }

        return $data;
    }elseif(!empty(count($products_by_child_category) > 0)){
        if(count($products_by_child_category) >= 40){
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
            $image = env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image;
                
            //Result Array
            $data[] = array(
                'id' => $row->id,
                'image' => $image,
                'image_alt' => $row->featured_image,
                'name' => $row->name,
                'slug' => $row->slug,
                'cost_price' => $row->regural_price,
                'sale_price' => $row->sale_price,
                'total_stars' => $total_stars,
                'total_discount' => floor(($row->regural_price - $row->sale_price) * 100 / $row->regural_price),
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
                
            //Result Array
            $data[] = array(
                'id' => $row->id,
                'image' => env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image,
                'image_alt' => $row->featured_image,
                'name' => $row->name,
                'slug' => $row->slug,
                'cost_price' => $row->regural_price,
                'sale_price' => $row->sale_price,
                'total_stars' => $total_stars,
                'total_discount' => floor(($row->regural_price - $row->sale_price) * 100 / $row->regural_price),
                'pagination' => $pagination,
            );
        }
        
        return $data;
    }elseif(!empty(count($products_by_name) > 0)){
        if(count($products_by_name) >= 40){
            $pagination = $products_by_name->links();
        }else{
            $pagination = '';
        }

        foreach($products_by_name as $row){
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
                'name' => $row->name,
                'slug' => $row->slug,
                'cost_price' => $row->regural_price,
                'sale_price' => $row->sale_price,
                'total_stars' => $total_stars,
                'total_discount' => floor(($row->regural_price - $row->sale_price) * 100 / $row->regural_price),
                'pagination' => $pagination,
            );
        }
        
        return $data;
    }elseif(!empty(count($products_by_brand) > 0)){
        if(count($products_by_brand) >= 40){
            $pagination = $products_by_brand->links();
        }else{
            $pagination = '';
        }

        foreach($products_by_brand as $row){
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
                'name' => $row->name,
                'slug' => $row->slug,
                'cost_price' => $row->regural_price,
                'sale_price' => $row->sale_price,
                'total_stars' => $total_stars,
                'total_discount' => floor(($row->regural_price - $row->sale_price) * 100 / $row->regural_price),
                'pagination' => $pagination,
            );
        }
        
        return $data;
    }elseif(!empty(count($products_by_store) > 0)){
        if(count($products_by_store) >= 40){
            $pagination = $products_by_store->links();
        }else{
            $pagination = '';
        }

        foreach($products_by_store as $row){
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
                'name' => $row->name,
                'slug' => $row->slug,
                'cost_price' => $row->regural_price,
                'sale_price' => $row->sale_price,
                'total_stars' => $total_stars,
                'total_discount' => floor(($row->regural_price - $row->sale_price) * 100 / $row->regural_price),
                'pagination' => $pagination,
            );
        }
        
        return $data;
    }
}