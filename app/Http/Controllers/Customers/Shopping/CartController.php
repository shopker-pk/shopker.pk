<?php
namespace App\Http\Controllers\Customers\Shopping;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class CartController extends Controller{
	function add_to_cart(Request $request){
		$cart = add_to_cart($request->all());

        if(!empty($cart)){
            //Flash Success Message
            $request->session()->flash('alert-success', 'Product has been added in cart successfully');
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', 'Something went wrong !!');
        }

        return redirect()->back();
    }

    function view_cart(Request $request){
    	//Header Data
        $result = array(
            'page_title' => 'Shopker | View Cart',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['mega_menus'] = mega_menus();
        $result['site_settings'] = site_settings();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
        $result['customer_details'] = customer_details();
        $result['countries'] = countries(); 
        $result['shipping_prices'] = shipping_prices(); 

        //call page
        return view('pages.view_cart', $result); 
    }

    function remove_product(Request $request, $id){
        $cart = remove_cart($id);

        if(!empty($cart == true)){
            //Flash Success Message
            $request->session()->flash('alert-success', 'Product has been remove from cart successfully');
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', 'Something went wrong !!');
        }

        return redirect()->back();
    }

    function empty_cart(Request $request){
        if(!empty($request->session()->get('cart'))){
            $request->session()->forget('cart');

            //Flash Success Message
            $request->session()->flash('alert-success', 'Cart has been clered successfully.');

            return redirect()->back();
        }else{
            //Flash Success Message
            $request->session()->flash('alert-danger', 'No product found in cart.');

            return redirect()->back();
        }
    }

    function update_cart(Request $request){
        if(!empty($request->session()->get('cart'))){
            $cart = update_cart($request->all());
            
            if($cart = 'success'){
                //Flash Success Message
                $request->session()->flash('alert-success', 'Cart has been updated successfully.');
            }else{
                //Flash Error Message
                $request->session()->flash('alert-danger', 'Something went wrong !!');
            }
        }else{
            //Flash Success Message
            $request->session()->flash('alert-danger', 'Product not found for updating cart.');
        }

        return redirect()->back();
    }

    function buy_now(Request $request){
        $cart = buy_now($request->all());

        if(!empty($cart)){
            //Flash Success Message
            $request->session()->flash('alert-success', 'Product has been added in cart successfully');
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', 'Something went wrong !!');
        }

        return redirect()->route('view_cart');
    }

    function checkout(Request $request){
        //Header Data
        $result = array(
            'page_title' => 'Shopker | Check Out',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['mega_menus'] = mega_menus();
        $result['site_settings'] = site_settings();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
        $result['customer_details'] = customer_details();
        $result['countries'] = countries(); 
        $result['shipping_prices'] = shipping_prices(); 

        $subtotal = 0;
        $total_weight = 0;
        if(!empty($request->session()->get('cart'))){
            foreach($request->session()->get('cart') as $row){
                $subtotal += +$row['price'] * $row['quantity'];
                $total_weight += $row['total_weight'];
            }
            
            $result['subtotal'] = $subtotal;
            $result['total_weight'] = $total_weight;
        }else{
            $result['subtotal'] = '0.00';
            $result['total_weight'] = '0';
        }

        //call page
        return view('pages.checkout', $result); 
    }

    function apply_coupon(Request $request){
        //initializing Generate data variables
        $ajax_response_data = array(
            'ERROR' => 'FALSE',
            'DATA' => '',
        );

        //Query For Getting Coupon Details
        $query = DB::table('tbl_coupons')
                     ->select('tbl_coupons.id', 'discount_type', 'discount_offer', 'no_of_uses', 'min_order_amount', 'max_order_amount', 'limit_per_customer', 'order_type', DB::raw('COUNT(tbl_orders_coupons.coupon_id) as total_use'), 'start_date', 'end_date')
                     ->leftJoin('tbl_orders_coupons', 'tbl_orders_coupons.coupon_id', '=', 'tbl_coupons.id')
                     ->where('code', 'Like', '%'.$request->input('coupon_code').'%')
                     ->where('status', 0);
        $result = $query->first();

        if(!empty($result->discount_offer)){
            if($result->start_date < date('Y-m-d') && $result->end_date < date('Y-m-d')){
                $ajax_response_data = array(
                    'ERROR' => 'TRUE',
                    'DATA' => 'Your voucher is expired.',
                );

                echo json_encode($ajax_response_data);
            }else{
                //Create Coupon Array
                $data = array(
                    'coupon_id' => $result->id,
                    'remaining_limit' => $result->no_of_uses - $result->total_use,
                    'discount_type' => $result->discount_type,
                    'discount_offer' => $result->discount_offer,
                    'no_of_uses' => $result->no_of_uses,
                    'min_order_amount' => $result->min_order_amount,
                    'max_order_amount' => $result->max_order_amount,
                    'limit_per_customer' => $result->limit_per_customer,
                    'order_type' => $result->order_type,
                    'start_date' => $result->start_date,
                    'end_date' => $result->end_date,
                );

                $ajax_response_data = array(
                    'ERROR' => 'FALSE',
                    'DATA' => $data,
                );

                echo json_encode($ajax_response_data);
            }
        }else{
            $ajax_response_data = array(
                'ERROR' => 'TRUE',
                'DATA' => 'Sorry, this voucher is not valid.',
            );

            echo json_encode($ajax_response_data);
        }
        die;
    }

    function add_order(Request $request){
        if(!empty($request->session()->get('cart'))){
            if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
                //Flash Error Message
                $request->session()->flash('alert-danger', 'You have to login first before proceeding to order.');

                return redirect()->back();
            }else{
                $cart = add_order($request->all());
                
                if(!empty($cart == 0)){
                    //Flash Success Message
                    $request->session()->flash('alert-success', 'Your order has been placed successfully.');
                }elseif(!empty($cart == 1)){
                    //Flash Error Message
                    $request->session()->flash('alert-danger', 'There is something wrong with your order request. please try again.');
                }elseif(!empty($cart == 2)){
                    //Flash Error Message
                    $request->session()->flash('alert-danger', 'You to have to add atleast one product for checkout.');
                }
            }

            return redirect()->route('home');
        }else{
            //Flash Success Message
            $request->session()->flash('alert-danger', "You don't have any product in cart for checkout.");

            return redirect()->route('home');
        }
    }

    function do_payment(Request $request){
        //Header Data
        $result = array(
            'page_title' => 'Shopker | Do Payment',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['mega_menus'] = mega_menus();
        $result['site_settings'] = site_settings();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
        $result['countries'] = countries(); 


        //Inputs Validation
        $input_validations = $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|email',
            'phone_no' => 'required',
            'country' => 'required',
            'city' => 'required|numeric',
            'area' => 'required|numeric',
            'address' => 'required',
            'coupon_id' => 'nullable',
            'shipping_charges' => 'required',
            'total' => 'required',
        ]);

        //Add Customer Details & Coupon Details In Sessoion
        $array = array(
            'first_name' => $request->input('first_name'),
            'last_name' => $request->input('last_name'),
            'email' => $request->input('email'),
            'phone_no' => $request->input('phone_no'),
            'country' => $request->input('country'),
            'city' => $request->input('city'),
            'area' => $request->input('area'),
            'address' => $request->input('address'),
            'coupon_id' => $request->input('coupon_id'),
            'shipping_charges' => $request->input('shipping_charges'),
            'total' => $request->input('total'),
        );
        
        $request->session()->put('shipping_details', $array);
        
        //call page
        return view('pages.do_payment', $result);
    }

    function insert_order(Request $request){
        if(!empty($request->session()->get('cart') && $request->session()->get('shipping_details'))){
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
            foreach($request->session()->get('cart') as $row){
                $total_products += $row['quantity'];
                $total_products_weight += $row['total_weight'];

                //Set Field data according to table column
                $data = array(
                    'ip_address' => $request->ip(),
                    'seller_id' => $row['seller_id'],
                    'buyer_id' => $request->session()->get('customer_details')['id'],
                    'order_no' => $order_no,
                    'product_id' => $row['id'],
                    'quantity' => $row['quantity'],
                    'product_amount' => $row['price'],
                    'type' => $row['type'],
                    'payment_method' => 0,
                    'status' => 0, //0 for Pending, 1 for In Process, 2 for Ready to ship, 3 for shipped, 4 Delivered & 5 Canceled
                    'order_date' => date('Y-m-d'),
                    'order_time' => date('h:i:s'),
                );
                
                //Query For Inserting Order Details
                $order_id = DB::table('tbl_orders')
                                ->insertGetId($data);
            }

            if(!empty($request->session()->get('shipping_details')['coupon_id'])){
                //Set Field data according to table column
                $data = array(
                    'order_no' => $order_no,
                    'coupon_id' => $request->session()->get('shipping_details')['coupon_id'],
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
                'first_name' => $request->session()->get('shipping_details')['first_name'],
                'last_name' => $request->session()->get('shipping_details')['last_name'],
                'email' => $request->session()->get('shipping_details')['email'],
                'phone_no' => $request->session()->get('shipping_details')['phone_no'],
                'country' => $request->session()->get('shipping_details')['country'],
                'city' => $request->session()->get('shipping_details')['city'],
                'area' => $request->session()->get('shipping_details')['area'],
                'address' => $request->session()->get('shipping_details')['address'],
                'order_date' => date('Y-m-d'),
                'order_time' => date('h:i:s'),
            );
            
            //Query For Inserting Shipping Details
            $shipping_details = DB::table('tbl_shipping_details')
                                    ->insertGetId($data); 

            //Set Field data according to table column
            $data = array(
                'order_no' => $order_no,
                'charges' => $request->session()->get('shipping_details')['shipping_charges'],
                'order_date' => date('Y-m-d'),
                'order_time' => date('h:i:s'),
            );
            
            //Query For Inserting Shipping Charges
            $shipping_charges = DB::table('tbl_shipping_charges')
                                    ->insertGetId($data); 

            //Set Field data according to table column
            $data = array(
                'order_no' => $order_no,
                'payer_id' => $request->session()->get('customer_details')['id'],
                'transaction_id' => uniqid(),
                'total' => $request->session()->get('shipping_details')['total'],
                'status' => 0,
                'order_date' => date('Y-m-d'),
                'order_time' => date('h:i:s'),
            );
            
            //Query For Inserting Invoice Details
            $invoice_id = DB::table('tbl_orders_invoices')
                              ->insertGetId($data); 

            //Set Field data according to table column
            $data = array(
                'buyer_ip_address' => $request->ip(),
                'buyer_id' => $request->session()->get('customer_details')['id'],
                'order_no' => $order_no,
            );
            
            //Query For Inserting Order Review
            $review_id = DB::table('tbl_orders_reviews')
                             ->insertGetId($data); 

            if(!empty($order_id && $shipping_details && $shipping_charges && $invoice_id && $review_id)){
                $save_booking = 'http://cod.callcourier.com.pk/api/CallCourier/SaveBooking?loginId=LHR-02689&ConsigneeName='.urlEncode($request->session()->get('shipping_details')['first_name'].' '.$request->session()->get('shipping_details')['last_name']).'&ConsigneeRefNo='.$order_no.'&ConsigneeCellNo='.($request->session()->get('shipping_details')['phone_no']).'&Address='.urlEncode($request->session()->get('shipping_details')['address']).'&Origin=karachi&DestCityId='.($request->session()->get('shipping_details')['city']).'&ServiceTypeId=7&Pcs='.$total_products.'&Weight='.$total_products_weight.'&Description='.$order_no.'&SelOrigin=Domestic&CodAmount='.($request->session()->get('shipping_details')['total']).'&SpecialHandling=false&MyBoxId=1&Holiday=false&remarks='.$order_no.'&ShipperName=LHR-02689=&ShipperCellNo=03004128681&ShipperArea=185&ShipperCity=1&ShipperAddress='.urlEncode('Office# 602 Gold Center, Liberty Market, Gulberg III, Lahore, Pakistan').'&ShipperLandLineNo=34544343&ShipperEmail=info@shopker.pk';

                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, $save_booking);
                curl_setopt($ch, CURLOPT_POST, 0);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                $response = curl_exec($ch);
                $err = curl_error($ch);
                curl_close($ch);
                
                $data = array(
                    'order_no' => $order_no,
                );

                $request->session()->put('order_no', $data);

                //Flash Success Message
                $request->session()->flash('alert-success', "Your order has been placed successfully.");

                return redirect()->route('home');
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
            }
        }else{
            return redirect()->route('home');
        }
    }

    function update_order(Request $request){
        if(!empty($request->session()->get('order_no'))){
            $HashKey = "4t425f0547";
            $ResponseCode = $request->input('pp_ResponseCode');
            $ResponseMessage = $request->input('pp_ResponseMessage');
            $Response = "";
            $comment = "";
            $ReceivedSecureHash = $request->input('pp_SecureHash');
            dd($_POST);
            $sortedResponseArray = array();

            if(!empty($_POST)){
                foreach($_POST as $key => $val){
                    $comment .= $key."[".$val."],<br/>";
                    $sortedResponseArray[$key] = $val;
                }
            }
            
            ksort($sortedResponseArray);            
            unset($sortedResponseArray['pp_SecureHash']);

            $Response = $HashKey;
            foreach($sortedResponseArray as $key => $val){      
                if($val != null && $val != ""){
                    $Response .= '&'.$val;              
                }
            }   
            
            $GeneratedSecureHash = hash_hmac('sha256', $Response, $HashKey);

            if(strtolower($GeneratedSecureHash) == strtolower($ReceivedSecureHash)){
                $txnRefNo = $request->input('pp_TxnRefNo');
                $reqAmount = $request->input('pp_Amount') / 100;
                $reqDatetime = $request->input('pp_TxnDateTime');
                $reqBillref = $request->input('pp_BillReference');
                $reqRetrivalRefNo = $request->input('pp_RetreivalReferenceNo');
                
                if($ResponseCode == '000'|| $ResponseCode == '121' || $ResponseCode == '200'){
                    //Update Payment Status
                    $query = DB::table('tbl_orders_invoices')
                                 ->where('order_no', $request->session()->get('order_no')['order_no'])
                                 ->update(['status' => 0]);

                    //Flash Success Message
                    $request->session()->flash('alert-success',  "Thankyou for placing your Order, Your JazzCash Payment of Rs:".$reqAmount." has been successfull deducted. Your transaction id is ".$txnRefNo);

                    return redirect()->route('home');
                    //echo $ResponseCode." Transaction Message =".$ResponseMessage;
                }else if($ResponseCode == '124' || $ResponseCode == '210'){
                    //Update Payment Status
                    $query = DB::table('tbl_orders_invoices')
                                 ->where('order_no', $request->session()->get('order_no')['order_no'])
                                 ->update(['status' => 1]);

                    //Flash Success Message
                    $request->session()->flash('alert-danger',  "Your voucher No is:".$reqRetrivalRefNo." of amount ".$reqAmount." has been successfully generated. Visit any JazzCash shop and pay the amount before the expiry date");

                    return redirect()->route('home');
                    //echo $ResponseCode."Transaction Message=".$ResponseMessage;
                }else{
                    //Update Order Status
                    $query = DB::table('tbl_orders')
                                 ->where('order_no', $request->session()->get('order_no')['order_no'])
                                 ->update(['status' => 5]);

                    //Update Payment Status
                    $query = DB::table('tbl_orders_invoices')
                                 ->where('order_no', $request->session()->get('order_no')['order_no'])
                                 ->update(['status' => 1]);

                    //Flash Success Message
                    $request->session()->flash('alert-danger',  "Sorry, your Payment of Rs:".$reqAmount." against transaction id:".$txnRefNo." has been declined. please try again.");

                    return redirect()->route('home');
                    //echo $ResponseCode." Transaction Message = ".$ResponseMessage;
                }                                                        
            }else{
                //Update Order Status
                $query = DB::table('tbl_orders')
                             ->where('order_no', $request->session()->get('order_no')['order_no'])
                             ->update(['status' => 5]);

                //Update Payment Status
                $query = DB::table('tbl_orders_invoices')
                             ->where('order_no', $request->session()->get('order_no')['order_no'])
                             ->update(['status' => 1]);

                //Flash Success Message
                $request->session()->flash('alert-danger', "mismatched, marked it suspicious or reject it");

                return redirect()->route('home');              
            }

            $request->session()->forget('cart');
            $request->session()->forget('shipping_details');
        }else{
            return redirect()->route('home');
        }
    }
}