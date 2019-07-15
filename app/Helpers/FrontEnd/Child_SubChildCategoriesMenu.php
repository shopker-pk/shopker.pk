<?php

function child_subchildcategories_menu(){
	//Query For Getting Child Categories
	$query = DB::table('tbl_child_categories')
	             ->select('id', 'name', 'slug')
	             ->whereIn('id', [9, 10, 11, 17, 18, 19, 37, 38])
	             ->where('status', 0)
	             ->orderBy('id', 'DESC');
 	$result = $query->get();

 	$html = '';
 	if(count($result) > 0){
 		foreach($result as $row){
 			//Query For Getting Sub Child Categories
 			$query = DB::table('tbl_sub_child_categories')
 			             ->select('name', 'slug') 
 			             ->where('child_id', $row->id)
 			             ->where('status', 0)
			             ->orderBy('id', 'DESC')
			             ->limit(3);
         	$result = $query->get();

         	if(count($result) >= 3){
         		$html .= '
         			<div class="widget-custom-menu col-xs-12 col-sm-12 col-md-12 col-lg-3">
                        <a href="'.route('products_by_categories', $row->slug).'"><h5 class="title widgettitle">'.$row->name.'</h5></a>
                        <ul>
         		';
         		foreach($result as $sub_row){
         			$html .= '<li><a href="'.route('products_by_categories', $sub_row->slug).'">'.$sub_row->name.'</a></li>';
         		}

         		$html .= '
         				</ul>
         			</div>
         		';
         	}
 		}

 		return $html;
 	}
}