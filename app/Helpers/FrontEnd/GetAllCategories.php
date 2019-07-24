<?php

function get_all_categories(){
	//Query For Getting Child Categories
	$query = DB::table('tbl_parent_categories')
	             ->select('id', 'name', 'slug')
	             ->where('status', 0)
	             ->orderBy('id', 'DESC');
 	$result = $query->get();

 	$html = '';
 	if(count($result) > 0){
 		foreach($result as $row){
 			//Query For Getting Sub Child Categories
 			$query = DB::table('tbl_child_categories')
 			             ->select('name', 'slug') 
 			             ->where('parent_id', $row->id)
 			             ->where('status', 0)
			             ->orderBy('id', 'DESC');
         	$result = $query->get();

         	if(count($result) > 0){
         		$html .= '
         			<div class="item">
                        <a href="'.route('products_by_categories', $row->slug).'"><h4 class="title widgettitle">'.$row->name.'</h4></a>
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