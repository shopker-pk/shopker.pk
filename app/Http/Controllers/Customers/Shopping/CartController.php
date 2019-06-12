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
        $result['customer_details'] = customer_details();
        $result['countries'] = countries(); 
        $result['shipping_prices'] = shipping_prices(); 
        
        //call page
        return view('pages.viewcart', $result); 
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

    function check_out(Request $request){
        $cart = check_out($request->all());

        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            //Flash Error Message
            $request->session()->flash('alert-danger', 'You have to login first before proceeding to order.');

            return redirect()->back();
        }else{
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
    }
}