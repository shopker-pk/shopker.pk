<?php

function shipping_prices(){
	//Query For Getting Shipping Charges
	$query = DB::table('tbl_site_shipping_charges')
	             ->select('*')
	             ->orderBy('id', 'DESC');
 	$result = $query->first();

 	if(!empty($result)){
 		$data[] = array(
 			'per_kg_0' => $result->per_kg_0,
 			'per_kg_1' => $result->per_kg_1,
 			'half_kg_0' => $result->half_kg_0,
 			'half_kg_1' => $result->half_kg_1,
 			'additional_per_kg_0' => $result->additional_per_kg_0,
 			'additional_per_kg_1' => $result->additional_per_kg_1,
 		);

 		return $data;
	}
}