<?php

function all_parent_categories(){
	//Query For Getting Parent Categories
	$query = DB::table('tbl_parent_categories')
	             ->select('id', 'name')
	             ->where('status', 0)
	             ->orderBy('sorting_order', 'DESC');
 	$result = $query->get();

 	if(count($result) > 0){
 		foreach($result as $row){
 			$data[] = array(
 				'id' => $row->id,
 				'name' => $row->name,
 			);
 		}

 		return $data;
 	}
}