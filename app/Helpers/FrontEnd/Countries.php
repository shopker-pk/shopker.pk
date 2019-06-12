<?php

function countries(){
	//Query For Getting Countries
	$query = DB::table('tbl_countries')
	             ->select('country_name', 'country_code')
	             ->orderBy('id', 'DESC');
 	$result = $query->get();

 	if(!empty(count($result))){
 		foreach($result as $row){
 			$data[] = array(
	 			'code' => $row->country_code,
	 			'name' => $row->country_name,
	 		);	
 		}

 		return $data;
	}
}