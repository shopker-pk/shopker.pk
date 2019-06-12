<?php
namespace App\Http\Controllers\Customers\Reviews;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class OrdersController extends Controller{
	function manage(Request $request){
		if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
			
			//Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer Orders Reviews',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['site_settings'] = site_settings();
            $result['mega_menus'] = mega_menus();
            $result['customer_details'] = customer_details();
            $result['orders_reviews'] = get_customers_orders_reviews($request->session()->get('customer_details')['id']);

            //Call Page
            return view('customers.reviews.orders.manage', $result);
        }else{
        	//Flash Error Message
            $request->session()->flash('alert-danger', "<h4>Error 404 !!<br> You don't have accees of this page<br> Please move back<h4>");

         	return redirect()->back();       
        }
	}

    function add(Request $request, $order_no){
        if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3 && $order_no)){
            //Header Data
            $result = array(
                'page_title' => 'Shopker | Add Order# :'.$order_no.' Review',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['mega_menus'] = mega_menus();
            $result['site_settings'] = site_settings();
            $result['customer_details'] = customer_details();
            $result['order_no'] = $order_no;

            //call page
            return view('customers.reviews.orders.add', $result); 
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', "<h4>Error 404 !!<br> You don't have accees of this page<br> Please move back<h4>");

            return redirect()->back();       
        }
    }

    function insert(Request $request, $order_no){
        if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3 && $order_no)){
            
            $response = add_order_review($request->session()->get('customer_details')['id'], $order_no, $request->all());

            if($response == 'success'){
                //Flash Success Message
                $request->session()->flash('alert-success', "Your review has been added successfully.");
            }elseif($response == 'error'){
                //Flash Success Message
                $request->session()->flash('alert-danger', "Something wen't wrong !!");
            }

            return redirect()->route('manage_orders_reviews');  
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', "<h4>Error 404 !!<br> You don't have accees of this page<br> Please move back<h4>");

            return redirect()->back();       
        }
    }
}