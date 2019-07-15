<?php

function dashboard_orders($id){
	//Query For Getting Last 10 Orders For Dashboard
	$query = DB::table('tbl_orders')
	             ->select('tbl_orders.order_no', 'tbl_orders.order_date', 'name', 'featured_image', 'total')
	             ->leftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_orders.product_id')  
	             ->leftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_orders.product_id')  
	             ->leftJoin('tbl_orders_invoices', 'tbl_orders_invoices.order_no', '=', 'tbl_orders.order_no')
	             ->where('tbl_orders.buyer_id', $id)
	             ->orderBy('tbl_orders.id', 'DESC')
	             ->limit(12);
 	$result = $query->get();

 	if(count($result)){
 		foreach($result as $row){
 			$data[] = array(
 				'order_no' => $row->order_no,
 				'order_date' => date('d-M-Y', strtotime($row->order_date)),
 				'name' => $row->name,
 				'featured_image' => env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image,
 				'total' => $row->total,
 			);
 		}

 		return $data;
 	}  
}