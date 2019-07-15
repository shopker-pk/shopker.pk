<?php

function parent_categories_menu(){
	//Query For Getting Parent Categories
	$query = DB::table('tbl_parent_categories')
	             ->select('slug', 'name')
	             ->where('status', 0)
	             ->orderBy('sorting_order', 'ASC')
	             ->limit(10);
 	$result = $query->get();

 	$html = '';
 	if(count($result) > 0){
 		foreach($result as $row){
 			$html .= '<li><a href="'.route('products_by_categories', $row->slug).'">'.$row->name.'</a></li>';
 		}
 	}

 	return $html;
}