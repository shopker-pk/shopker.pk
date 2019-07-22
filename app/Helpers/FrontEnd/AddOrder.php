<?php

function add_order($params){
	if(!empty(\Session::get('cart') && \Session::get('shipping_details'))){
		//Query For Getting Last Insert Order No
		$query = \DB::table('tbl_orders')
		              ->select('order_no')
		              ->orderBy('id', 'DESC')
		              ->groupBy('order_no');
      	$order_no = $query->first();

      	if(!empty($order_no)){
      		$order_no = str_pad($order_no->order_no + 1, 5, 0, STR_PAD_LEFT);
      	}else{
      		$order_no = '00001';
      	} 

      	$count = 0;
        $total_products = 0;
        $total_products_weight = 0;
        foreach(Session::get('cart') as $row){
            $total_products += $row['quantity'];
            $total_products_weight += $row['total_weight'];

        	//Set Field data according to table column
            $data = array(
                'ip_address' => Request::ip(),
                'seller_id' => $row['seller_id'],
                'buyer_id' => \Session::get('customer_details')['id'],
                'order_no' => $order_no,
                'product_id' => $row['id'],
                'quantity' => $row['quantity'],
                'product_amount' => $row['price'],
                'type' => $row['type'],
                'payment_method' => Request::input('payment_method', 0),
                'status' => 0, //0 for Pending, 1 for In Process, 2 for Ready to ship, 3 for shipped, 4 Delivered & 5 Canceled
                'order_date' => date('Y-m-d'),
                'order_time' => date('h:i:s'),
            );
            
            //Query For Inserting Order Details
            $order_id = DB::table('tbl_orders')
                            ->insertGetId($data);
        }

        if(!empty(\Session::get('shipping_details')['coupon_id'])){
        	//Set Field data according to table column
	        $data = array(
	            'order_no' => $order_no,
	            'coupon_id' => \Session::get('shipping_details')['coupon_id'],
	            'order_date' => date('Y-m-d'),
                'order_time' => date('h:i:s'),
	        );
	        
	        //Query For Inserting Coupon Detail
	        $coupon_id = DB::table('tbl_orders_coupons')
	                         ->insertGetId($data); 
        }
        
      	//Set Field data according to table column
        $data = array(
            'order_no' => $order_no,
            'first_name' => \Session::get('shipping_details')['first_name'],
            'last_name' => \Session::get('shipping_details')['last_name'],
            'email' => \Session::get('shipping_details')['email'],
            'phone_no' => \Session::get('shipping_details')['phone_no'],
            'country' => \Session::get('shipping_details')['country'],
            'city' => \Session::get('shipping_details')['city'],
            'area' => \Session::get('shipping_details')['area'],
            'address' => \Session::get('shipping_details')['address'],
            'order_date' => date('Y-m-d'),
            'order_time' => date('h:i:s'),
        );
        
        //Query For Inserting Shipping Details
        $shipping_details = DB::table('tbl_shipping_details')
                                ->insertGetId($data); 

    	//Set Field data according to table column
        $data = array(
            'order_no' => $order_no,
            'charges' => \Session::get('shipping_details')['shipping_charges'],
            'order_date' => date('Y-m-d'),
            'order_time' => date('h:i:s'),
        );
        
        //Query For Inserting Shipping Charges
        $shipping_charges = DB::table('tbl_shipping_charges')
                                ->insertGetId($data); 

    	//Set Field data according to table column
        $data = array(
            'order_no' => $order_no,
            'payer_id' => \Session::get('customer_details')['id'],
            'transaction_id' => uniqid(),
            'total' => \Session::get('shipping_details')['total'],
            'status' => Request::input('payment_status', 1),
            'order_date' => date('Y-m-d'),
            'order_time' => date('h:i:s'),
        );
        
        //Query For Inserting Invoice Details
        $invoice_id = DB::table('tbl_orders_invoices')
                          ->insertGetId($data); 

      	//Set Field data according to table column
        $data = array(
            'buyer_ip_address' => Request::ip(),
            'buyer_id' => \Session::get('customer_details')['id'],
            'order_no' => $order_no,
        );
        
        //Query For Inserting Order Review
        $review_id = DB::table('tbl_orders_reviews')
                         ->insertGetId($data); 

		if(!empty($order_id && $shipping_details && $shipping_charges && $invoice_id && $review_id)){
			$save_booking = 'http://cod.callcourier.com.pk/api/CallCourier/SaveBooking?loginId=LHR-02689&ConsigneeName='.urlEncode(\Session::get('shipping_details')['first_name'].' '.\Session::get('shipping_details')['last_name']).'&ConsigneeRefNo='.$order_no.'&ConsigneeCellNo='.(\Session::get('shipping_details')['phone_no']).'&Address='.urlEncode(\Session::get('shipping_details')['address']).'&Origin=karachi&DestCityId='.(\Session::get('shipping_details')['city']).'&ServiceTypeId=7&Pcs='.$total_products.'&Weight='.$total_products_weight.'&Description='.$order_no.'&SelOrigin=Domestic&CodAmount='.(\Session::get('shipping_details')['total']).'&SpecialHandling=false&MyBoxId=1&Holiday=false&remarks='.$order_no.'&ShipperName=LHR-02689=&ShipperCellNo=03004128681&ShipperArea=185&ShipperCity=1&ShipperAddress='.urlEncode('Office# 602 Gold Center, Liberty Market, Gulberg III, Lahore, Pakistan').'&ShipperLandLineNo=34544343&ShipperEmail=info@shopker.pk';

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $save_booking);
            curl_setopt($ch, CURLOPT_POST, 0);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $response = curl_exec($ch);
            $err = curl_error($ch);
            curl_close($ch);
            
            \Session::forget('cart');
            \Session::forget('shipping_details');
            return 0;
		}else{
			if(!empty($order_id)){
				//Query For Deleting Last Insert Order
				$query = DB::table('tbl_orders')
				             ->where('order_no', $order_no)
				             ->delete();
			}
			
			if(!empty($coupon_id)){
				//Query For Deleting Last Insert Coupon
				$query = DB::table('tbl_orders_coupons')
				             ->where('order_no', $order_no)
				             ->delete();
			}

			if(!empty($shipping_details)){
				//Query For Deleting Last Insert Shipping Details
	         	$query = DB::table('tbl_shipping_details')
	         	             ->where('order_no', $order_no)
	         	             ->delete();
			}

			if(!empty($shipping_charges)){
				//Query For Deleting Last Insert Shipping Charges
	         	$query = DB::table('tbl_shipping_charges')
	         	             ->where('order_no', $order_no)
	         	             ->delete();
			}

			if(!empty($invoice_id)){
				//Query For Deleting Last Insert Invoice
	         	$query = DB::table('tbl_orders_invoices')
	         	             ->where('order_no', $order_no)
	         	             ->delete();
			}

			if(!empty($review_id)){
				//Query For Deleting Last Insert Order Review
	         	$query = DB::table('tbl_orders_reviews')
	         	             ->where('order_no', $order_no)
	         	             ->delete();
			}
    
			return 1;
		}
	}else{
		return 2;
	}
}