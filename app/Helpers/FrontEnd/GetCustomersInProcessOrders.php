<?php

function get_customers_in_process_orders($id){
	//Query For Getting Last 10 Orders For Dashboard
	$query = DB::table('tbl_orders')
	             ->select('tbl_orders.order_no', 'tbl_orders.quantity', 'tbl_orders.order_date', 'tbl_orders.order_time', 'tbl_orders.status', 'name', 'featured_image', 'total')
	             ->leftJoin('tbl_products', 'tbl_products.id', '=', 'tbl_orders.product_id')  
	             ->leftJoin('tbl_products_featured_images', 'tbl_products_featured_images.product_id', '=', 'tbl_orders.product_id')  
	             ->leftJoin('tbl_orders_invoices', 'tbl_orders_invoices.order_no', '=', 'tbl_orders.order_no')
	             ->where('tbl_orders.buyer_id', $id)
	             ->where('tbl_orders.status', 1)
	             ->orderBy('tbl_orders.id', 'DESC');
 	$result = $query->paginate(16);

 	if(count($result) > 0){
 		if(count($result) >= 16){
            $pagination = $result->links();
        }else{
            $pagination = '';
        }

 		foreach($result as $row){
 			$data[] = array(
 				'order_no' => $row->order_no,
 				'order_date_time' => date('d-M-Y h:i:s', strtotime($row->order_date.' '.$row->order_time)),
 				'name' => $row->name,
 				'featured_image' => env('ADMIN_URL').'images/ecommerce/products/'.$row->featured_image,
 				'quantity' => $row->quantity,
 				'total' => $row->total,
 				'order_status' => 'In Process',
 				'pagination' => $pagination,
 			);
 		}
 		
 		return $data;
 	} 
}