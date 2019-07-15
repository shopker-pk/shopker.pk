<?php

function view_more_products(){
	//Query For Getting Products For Daily Deals
    $query = \DB::table('tbl_products')
                 ->select('tbl_products_featured_images.featured_image', 'tbl_products.id', 'tbl_products.name', 'tbl_products.slug', 'tbl_products.regural_price', 'tbl_products.sale_price', 'tbl_products.from_date', 'tbl_products.to_date')
                 ->LeftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_products.id')
                 ->where('tbl_products.status', 0)
                 ->where('tbl_products.id', '<', Session::get('last_id'))
                 ->where('tbl_products.is_approved', 0)
                 ->orderBy('tbl_products.id', 'DESC')
                 ->limit(50);
    $products = $query->get();

    //Query For Getting those latest products who have ratings
    $query = DB::table('tbl_products_reviews')
                 ->select('product_id', DB::raw('AVG(tbl_products_reviews.buyer_stars) as total_stars'))
                 ->groupBy('product_id');
    $rated_products = $query->get();
	
	$ajax_response_data = array(
        'ERROR' => 'FALSE',
        'DATA' => '',
    );

    $html = '';
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
                
            //Count Discount Percentage
            if(!empty($row->sale_price)){
                $discount = explode('.', (($row->regural_price - $row->sale_price) * 100) / $row->regural_price + 1)[0];
            }else{
                $discount = 0;
            }

        	$html .= '
        		<div class="product-item latest-products layout1 col-ts-12 col-xs-6 col-sm-6 no-padding" style="width: 20%">
				    <div class="product-inner equal-elem">';
				        if(!empty($discount)){
				        	$html .= '
			        	<ul class="group-flash">
				            <li><span class="sale flash">-'.$discount.'%</span></li>
				        </ul>
				        	';
				        }
				  	$html .= '
				  		<div class="thumb">
				            <a href="javascript:void(0);" class="quickview-button" data-id="'.$row->id.'"><span class="icon"><i class="fa fa-eye" aria-hidden="true"></i></span> Quick View</a>
				            <a href="'.route('product_details', $row->slug).'" class="thumb-link"><img src="'.env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image.'" alt="'.$row->featured_image.'" style="width:214px; height:214px;"></a>
				        </div>
				  	';

				  	$html .= '
				  		<div class="info">
				            <div class="rating">
				                <ul class="list-star">
				  	';

								  	if($total_stars == 5){
						  		$html .='
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                ';
				                    }elseif($total_stars == 4){
				            	$html .='
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                ';
				                    }elseif($total_stars == 3){
				            	$html .='
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                ';
				                    }elseif($total_stars == 2){
				        		$html .='
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                ';
				                    }elseif($total_stars == 1){
				            	$html .='
				                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                ';
				                    }else{
				        		$html .='
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
				                ';
				                    }

				  	$html .= '
				  				</ul>
				  				<span class="count">'.$total_stars.' Review(s)</span>
				  			</div>
				  			<a href="'.route('product_details', $row->slug).'" class="product-name">'.\Str::limit($row->name, 20).'</a>
				  			<div class="price">
		  			';

		  			if(!empty($row->sale_price)){
		  				$html .= '
		  						<span class="del">Rs.'.$row->regural_price.'</span>
	                			<span class="ins">Rs.'.$row->sale_price.'</span>
		  				';
	                
	                }else{
	                	$html .= '
	                			<span class="ins">Rs.'.$row->regural_price.'</span>
                		';
	                }

	                $html .= '
	                		</div>
            			</div>
            			<div class="group-button">
				            <div class="inner">
				                <a href="'.route('add_wishlists', $row->id).'" class="wishlist-button"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
				            </div>
				        </div>
			        </div>
		        </div>
	                ';

        }

        Session::put('last_id', $last_id);

        $ajax_response_data = array(
	        'ERROR' => 'FALSE',
	        'DATA' => $html,
	    );

        echo json_encode($ajax_response_data);
    }
}