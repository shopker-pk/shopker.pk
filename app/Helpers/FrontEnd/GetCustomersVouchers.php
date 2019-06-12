<?php

function get_customers_vouchers($id){
	//Query For Getting All Vouchers
	$query = DB::table('tbl_coupons')
                 ->select('code', 'start_date', 'end_date', 'discount_type', 'discount_offer', 'tbl_coupons.status', 'tbl_orders_coupons.order_date')
                 ->leftJoin('tbl_orders_coupons', 'tbl_orders_coupons.coupon_id', '=', 'tbl_coupons.id')
                 ->leftJoin('tbl_orders', 'tbl_orders.order_no', '=', 'tbl_orders_coupons.order_no')
                 ->where('tbl_orders.buyer_id', $id)
                 ->orderBy('tbl_orders_coupons.coupon_id', 'DESC')
                 ->groupBy('tbl_coupons.id');
    $result = $query->get();

    if(count($result) > 0){
    	foreach($result as $row){
    		if($row->discount_type == 0){
    			$discount_offer = $row->discount_offer.' %';
    		}else{
    			$discount_offer = 'Rs.'.$row->discount_offer;
    		}

    		$data[] = array(
    			'code' => $row->code,
    			'start_date' => date('d-M-Y', strtotime($row->start_date)),
    			'end_date' => date('d-M-Y', strtotime($row->end_date)),
    			'discount_offer' => $discount_offer,
    			'used_date' => date('d-M-Y', strtotime($row->order_date)),
    		);
    	}

    	return $data;
    }
}