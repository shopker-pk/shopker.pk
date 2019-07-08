<?php

function ajax_product_quick_view($id){
	//initializing Generate data variables
	$ajax_response_data = array(
	    'ERROR' => 'FALSE',
	    'DATA' => '',
	);

	//Query For Getting Product BY Slug
    $query = \DB::table('tbl_products')
                 ->select('tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name as product_name', 'tbl_products.slug as product_slug', 'tbl_products.high_light as key_features', 'tbl_products.description', 'tbl_products.warranty_type', 'tbl_products.what_in_the_box', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date', 'tbl_products.sku_code', 'tbl_products.weight', 'tbl_products.quantity', 'tbl_products.video_url', 'tbl_products.meta_keywords', 'tbl_products.meta_description', 'tbl_brands_for_products.name as brand_name', 'tbl_brands_for_products.slug as brand_slug', 'tbl_parent_categories.name as parent_name', 'tbl_parent_categories.slug as parent_slug', 'tbl_child_categories.name as child_name', 'tbl_child_categories.slug as child_slug', 'tbl_sub_child_categories.name as sub_child_name', 'tbl_sub_child_categories.slug as sub_child_slug', 'tbl_store_settings.store_name', 'tbl_store_settings.store_slug', 'tbl_store_images.logo')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->LeftJoin('tbl_product_brands', 'tbl_product_brands.product_id', '=', 'tbl_products.id')
                 ->LeftJoin('tbl_brands_for_products', 'tbl_brands_for_products.id', '=', 'tbl_product_brands.brand_id')
                 ->LeftJoin('tbl_product_categories', 'tbl_product_categories.product_id', 'tbl_products.id')
                 ->LeftJoin('tbl_parent_categories', 'tbl_parent_categories.id', 'tbl_product_categories.parent_id')
                 ->LeftJoin('tbl_child_categories', 'tbl_child_categories.id', 'tbl_product_categories.child_id')
                 ->LeftJoin('tbl_sub_child_categories', 'tbl_sub_child_categories.id', 'tbl_product_categories.sub_child_id')
                 ->LeftJoin('tbl_store_settings', 'tbl_store_settings.vendor_id', 'tbl_products.user_id')
                 ->LeftJoin('tbl_store_images', 'tbl_store_images.store_id', 'tbl_store_settings.id')
                 //->where('tbl_products.status', 0)
                 //->where('tbl_products.is_approved', 0)
                 ->where('tbl_brands_for_products.status', 0)
                 ->where('tbl_products.id', $id);
    $product = $query->first();

    $html = '';
    //Check if Query is null or not
    if(!empty($product)){
        //Query For Getting ratings
        $query = DB::table('tbl_products_reviews')
                     ->select(DB::raw('AVG(buyer_stars) as total_stars'), DB::raw('COUNT(Distinct buyer_id) as total_ratings'))
                     ->where('product_id', $product->id);
        $ratings = $query->first();

        if(!empty($ratings)){
            $total_stars = explode('.', $ratings->total_stars)[0];
        }else{
            $total_stars = 0;
        }

        //Query For Getting Total All five stars
        $query = DB::table('tbl_products_reviews')
                     ->select(DB::raw('COUNT(buyer_stars) as total_five_stars'))
                     ->where('product_id', $product->id)
                     ->where('buyer_stars', 5)
                     ->groupBy('buyer_stars');
        $five_stars = $query->first();

        if(!empty($five_stars)){
            $five_stars = $five_stars->total_five_stars;
        }else{
            $five_stars = 0;
        }

        //Query For Getting Total All four stars
        $query = DB::table('tbl_products_reviews')
                     ->select(DB::raw('COUNT(buyer_stars) as total_four_stars'))
                     ->where('product_id', $product->id)
                     ->where('buyer_stars', 4)
                     ->groupBy('buyer_stars');
        $four_stars = $query->first();

        if(!empty($four_stars)){
            $four_stars = $four_stars->total_four_stars;
        }else{
            $four_stars = 0;
        }

        //Query For Getting Total All three stars
        $query = DB::table('tbl_products_reviews')
                     ->select(DB::raw('COUNT(buyer_stars) as total_three_stars'))
                     ->where('product_id', $product->id)
                     ->where('buyer_stars', 3)
                     ->groupBy('buyer_stars');
        $three_stars = $query->first();

        if(!empty($three_stars)){
            $three_stars = $three_stars->total_three_stars;
        }else{
            $three_stars = 0;
        }

        //Query For Getting Total All two stars
        $query = DB::table('tbl_products_reviews')
                     ->select(DB::raw('COUNT(buyer_stars) as total_two_stars'))
                     ->where('product_id', $product->id)
                     ->where('buyer_stars', 2)
                     ->groupBy('buyer_stars');
        $two_stars = $query->first();

        if(!empty($two_stars)){
            $two_stars = $two_stars->total_two_stars;
        }else{
            $two_stars = 0;
        }

        //Query For Getting Total All one stars
        $query = DB::table('tbl_products_reviews')
                     ->select(DB::raw('COUNT(buyer_stars) as total_one_stars'))
                     ->where('product_id', $product->id)
                     ->where('buyer_stars', 1)
                     ->groupBy('buyer_stars');
        $one_stars = $query->first();

        if(!empty($one_stars)){
            $one_stars = $one_stars->total_one_stars;
        }else{
            $one_stars = 0;
        }

        //Count Discount Percentage
        if(!empty($product->sale_price)){
            $discount = explode('.', (($product->regural_price - $product->sale_price) * 100) / $product->regural_price + 1)[0];
        }else{
            $discount = 0;
        }
        
        //Get Warranty Type
        if($product->warranty_type == 0){
            $warranty_type = 'Brand warranty';
        }elseif($product->warranty_type == 1){
            $warranty_type = 'International manufacture warranty';
        }elseif($product->warranty_type == 2){
            $warranty_type = 'International seller warranty';
        }elseif($product->warranty_type == 3){
            $warranty_type = 'International warranty';
        }elseif($product->warranty_type == 4){
            $warranty_type = 'Local warranty';
        }elseif($product->warranty_type == 5){
            $warranty_type = 'Seller Shop warranty';
        }elseif($product->warranty_type == 6){
            $warranty_type = 'Shopker warranty';
        }elseif($product->warranty_type == 7){
            $warranty_type = 'No warranty';
        }

        //Get Vendor Store Name
        if($product->store_name == ''){
            $store_name = 'Shopker';
            $store_slug = 'javascipt:void(0);';
        }else{
            $store_slug = $product->store_slug;
            $store_name = $product->store_name;
        }

        if(!empty($product->logo)){
            $store_logo = env('ADMIN_URL').'images/stores_logo/'.$product->logo;
        }else{
            $store_logo = '';
        }

        //Query For Getting Images Of Specific Products
        $query = DB::table('tbl_products_images')
                     ->select('tbl_products_images.image', 'tbl_products.name')
                     ->LeftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_products_images.product_id')
                     ->where('tbl_products_images.product_id', $product->id)
                     ->orderBy('tbl_products_images.product_id', 'DESC');
        $product_imagess = $query->get();

        if(!empty(count($product_imagess) > 0)){
        	$product_images = '<div class="details-item">
    								<img src="'.env('ADMIN_URL').'images/ecommerce/products/'.$product->featured_image.'">
    						   </div>';
            foreach($product_imagess as $product_image){
            	$product_images .= '
            	<div class="details-item">
                    <img src="'.env('ADMIN_URL').'images/ecommerce/products/'.$product_image->image.'" alt="">
                </div>
            	';
            }
        }else{
        	$product_images = '<div class="details-item">
    								<img src="'.env('ADMIN_URL').'images/ecommerce/products/'.$product->featured_image.'">
    						   </div>';
        }

        if($total_stars == 5){
        $stars = '
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
        ';
        }elseif($total_stars == 4){
    	$stars = '
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
        ';
        }elseif($total_stars == 3){
    	$stars = '
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
        ';
        }elseif($total_stars == 2){
    	$stars = '
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
        ';
        }elseif($total_stars == 1){
    	$stars = '
	        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
        ';
        }else{
    	$stars = '
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
	        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
        ';
        }

        $prices = '';
        $asd = '';
        if(!empty($product->sale_price)){
        $prices .= '<span class="del"><strike>Rs.'.$product->regural_price.'</span></strike><span class="ins">Rs.'.$product->sale_price.'</span>';
        $asd .= '
        		<input type="hidden" id="product_price" name="product_price" value="'.$product->sale_price.'">
        		<input type="hidden" id="product_type" name="product_type" value="0">';
        }else{
    	$prices .= '<span class="ins">Rs.'.$product->regural_price.'</span>';
    	$asd .= '
    			<input type="hidden" id="product_price" name="product_price" value="'.$product->regural_price.'">
    			<input type="hidden" id="product_type" name="product_type" value="1">';	
        }

        $html .= '
        <div class="kt-popup-quickview">
        	<div class="details-thumb col-xs-12 col-sm-6">
        		<div class="owl-carousel nav-style4 has-thumbs" data-autoplay="false" data-nav="true" data-dots="false" data-loop="false" data-slidespeed="800">
        			'.$product_images.'
    			</div>
    		</div>
    		<div class="details-info col-xs-12 col-sm-6">
    			<a href="'.route('product_details', $product->product_slug).'" class="product-name">'.\Str::limit($product->product_name, 23).'</a>
    			<div class="rating">
	    			<ul class="list-star">
	    				'.$stars.'
					</ul>
					<span class="count">'.$ratings->total_ratings.' Review(s)</span>
				</div>
				<p class="description">'.str_replace("\xc2\xa0",' ', html_entity_decode(strip_tags(\Str::limit($product->description, 450)))).'</p>
	    		<div class="price">
	            	'.$prices.'
		        </div>
	            <div class="group-button">
	                <div class="inner">
	                    <form method="post" action="'.route('add_to_cart').'" id="add_to_cart_form">
	                    <input type="hidden" id="_token" name="_token" value="'.csrf_token().'">
	                    <input type="hidden" id="product_id" name="product_id" value="'.$product->id.'">
	                    '.$asd.'
	                    <input type="hidden" id="quantity_add_to_cart" name="quantity" value="1">
	                    <a class="add-to-cart" id="add_to_cart_btn"><span class="text">ADD TO CART</span><span class="icon"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></span></a>
	                    </form>
	                    <form method="post" action="'.route('buy_now').'" id="buy_now_form">
	                    <input type="hidden" id="_token" name="_token" value="'.csrf_token().'">
	                    <input type="hidden" id="product_id" name="product_id" value="'.$product->id.'">
	                    '.$asd.'
	                    <input type="hidden" id="quantity_buy_now" name="quantity" value="1">
	                    <a class="add-to-cart" id="buy_now_btn"><span class="text">BUY NOW</span><span class="icon"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></span></a>
	                    </form>
	                    <a href="'.route('add_wishlists', $product->id).'" class="wishlist-button"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
	                </div>
	            </div>
            </div>
        </div>
        ';

        $ajax_response_data = array(
	        'ERROR' => 'FALSE',
	        'DATA' => $html,
	    );
	    echo json_encode($ajax_response_data);

        //Result Array
        /*$data = array(
            'product_id' => $product->id,
            'product_name' => $product->product_name,
            'featured_image' => env('ADMIN_URL').'images/ecommerce/products/'.$product->featured_image,
            'product_slug' => $product->product_slug,
            'featured_image_alt' => $product->featured_image,
            'key_features' => str_replace("\xc2\xa0",' ', explode('.', html_entity_decode(strip_tags($product->key_features)))),
            'description' => str_replace("\xc2\xa0",' ', html_entity_decode(strip_tags($product->description))),
            'warranty_type' => $warranty_type,
            'what_in_the_box' => $product->what_in_the_box,
            'sku_code' => $product->sku_code,
            'brand_name' => $product->brand_name,
            'brand_slug' => $product->brand_slug,
            'parent_category' => $product->parent_name,
            'parent_slug' => $product->parent_slug,
            'child_category' => $product->child_name,
            'child_slug' => $product->child_slug,
            'sub_child_category' => $product->sub_child_name,
            'sub_child_slug' => $product->sub_child_slug,
            'cost_price' => $product->regural_price,
            'sale_price' => $product->sale_price,
            'total_stars' => $total_stars,
            'total_discount' => $discount,
            'total_ratings' => $ratings->total_ratings,
            'weight' => $product->weight,
            'meta_keywords' => $product->meta_keywords,
            'meta_description' => $product->meta_description,
            'store_name' => $store_name,
            'store_slug' => $store_slug,
            'store_logo' => $store_logo,
            'store_logo_alt' => $product->logo,
            'five_stars' => $five_stars,
            'four_stars' => $four_stars,
            'three_stars' => $three_stars,
            'two_stars' => $two_stars,
            'one_stars' => $one_stars,
            'video_url' => $product->video_url,
        );

        return $data;*/
    }else{
        $ajax_response_data = array(
            'ERROR' => 'TRUE',
            'DATA' => '',
        );
        echo json_encode($ajax_response_data);
    }
    die;
}