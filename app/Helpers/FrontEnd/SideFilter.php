<?php

function side_filter($slug){
	//Query For Getting Side Filter For Products
	$query = DB::table('tbl_products')
	             ->leftJoin('tbl_product_categories', 'tbl_product_categories.product_id', '=', 'tbl_products.id')
	             ->leftJoin('tbl_parent_categories', 'tbl_parent_categories.id', '=', 'tbl_product_categories.parent_id')
	             ->leftJoin('tbl_child_categories', 'tbl_child_categories.id', '=', 'tbl_product_categories.child_id')
	             ->leftJoin('tbl_sub_child_categories', 'tbl_sub_child_categories.id', '=', 'tbl_product_categories.sub_child_id')
	             ->leftJoin('tbl_product_brands', 'tbl_product_brands.product_id', '=', 'tbl_products.id')
	             ->leftJoin('tbl_brands_for_products', 'tbl_brands_for_products.id', '=', 'tbl_product_brands.brand_id')
	             ->leftJoin('tbl_variations_for_products', 'tbl_variations_for_products.id', '=', 'tbl_products.variation_id')
	             ->select('tbl_parent_categories.slug as parent_slug', 'tbl_parent_categories.name as parent_name', 'tbl_child_categories.slug as child_slug', 'tbl_child_categories.name as child_name', 'tbl_sub_child_categories.slug as sub_child_slug', 'tbl_sub_child_categories.name as sub_child_name', 'tbl_brands_for_products.name as brand_name', 'tbl_brands_for_products.slug as brand_slug', 'tbl_products.regural_price as cost_price', 'tbl_products.sale_price', 'tbl_variations_for_products.id as variation_id', 'tbl_variations_for_products.value as variation_name')
	             ->Orwhere('tbl_products.slug', 'Like', '%'.$slug.'%')
	             ->Orwhere('tbl_parent_categories.slug', 'Like', '%'.$slug.'%')
	             ->Orwhere('tbl_child_categories.slug', 'Like', '%'.$slug.'%')
	             ->Orwhere('tbl_sub_child_categories.slug', 'Like', '%'.$slug.'%')
	             ->Orwhere('tbl_variations_for_products.value', 'Like', '%'.$slug.'%');
	             if(!empty(explode(',', $slug)[1])){
           $query->Orwhere('tbl_brands_for_products.slug', 'Like', '%'.$slug.'%')
                 ->Orwhere('tbl_products.regural_price', '<=', explode(',', $slug)[0])
                 ->Orwhere('tbl_products.regural_price', '>=', explode(',', $slug)[1])
                 ->Orwhere('tbl_products.sale_price', '<=', explode(',', $slug)[0])
                 ->Orwhere('tbl_products.sale_price', '>=', explode(',', $slug)[1]);
                 }else{
           $query->Orwhere('tbl_brands_for_products.slug', 'Like', '%'.$slug.'%');
                 }
 	$result = $query->get();

 	if(count($result) > 0){
 		foreach($result as $row){
 			$parent_cateogries[] = array(
 				'parent_slug' => $row->parent_slug,
 				'parent_name' => $row->parent_name,
 			);

 			$child_cateogries[] = array(
 				'child_slug' => $row->child_slug,
				'child_name' => $row->child_name,
 			);

 			$sub_child_cateogries[] = array(
 				'sub_child_slug' => $row->sub_child_slug,
				'sub_child_name' => $row->sub_child_name,
 			);

			$brands[] = array(
 				'brand_name' => $row->brand_name,
				'brand_slug' => $row->brand_slug,
 			);

 			$prices[] = array(
 				'cost_price' => $row->cost_price,
				'sale_price' => $row->sale_price,
 			);

 			$variations[] = array(
 				'variation_id' => $row->variation_id,
				'variation_name' => $row->variation_name,
 			);
 		}

 		$parent_cateogries = array_column($parent_cateogries, 'parent_name', 'parent_slug');
 		$parent_cateogries = array_unique($parent_cateogries);

 		$child_cateogries = array_column($child_cateogries, 'child_name', 'child_slug');
 		$child_cateogries = array_unique($child_cateogries);

 		$sub_child_cateogries = array_column($sub_child_cateogries, 'sub_child_name', 'sub_child_slug');
 		$sub_child_cateogries = array_unique($sub_child_cateogries);

 		$brands = array_column($brands, 'brand_name', 'brand_slug');
 		$brands = array_unique($brands);

 		$min_price = array_column($prices, 'sale_price');
 		$min_price = min($min_price);
 		$max_price = array_column($prices, 'cost_price');
 		$max_price = max($max_price);

 		$variations = array_column($variations, 'variation_name', 'variation_id');
 		$variations = array_unique($variations);
 		
 		$data = array(
 			array(
	 			'parent_cateogries' => $parent_cateogries,
	 			'child_cateogries' => $child_cateogries,
	 			'sub_child_cateogries' => $sub_child_cateogries,
	 			'brands' => $brands,
	 			'min_price' => $min_price,
	 			'max_price' => $max_price,
	 			'variations' => $variations,
 			),
 		);

 		return $data;
 	}
}