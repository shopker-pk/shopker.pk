<?php
namespace App\Http\Controllers\Customers\Orders;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class OrdersController extends Controller{
	function manage(Request $request){
		if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
    		//Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer Orders',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['site_settings'] = site_settings();
            $result['mega_menus'] = mega_menus();
            $result['customer_details'] = customer_details();
            $result['all_orders'] = get_customers_all_orders($request->session()->get('customer_details')['id']);
            $result['pending_orders'] = get_customers_pending_orders($request->session()->get('customer_details')['id']);
            $result['in_process_orders'] = get_customers_in_process_orders($request->session()->get('customer_details')['id']);
            $result['ready_to_ship_orders'] = get_customers_ready_to_ship_orders($request->session()->get('customer_details')['id']);
            $result['shipped_orders'] = get_customers_shipped_orders($request->session()->get('customer_details')['id']);
            $result['delivered_orders'] = get_customers_delivered_orders($request->session()->get('customer_details')['id']);
            $result['canceled_orders'] = get_customers_canceled_orders($request->session()->get('customer_details')['id']);
            
            //Call Page
            return view('customers.orders.manage', $result);
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', "You don't have access to open this page.");

            return redirect()->back();
        }
	}
}