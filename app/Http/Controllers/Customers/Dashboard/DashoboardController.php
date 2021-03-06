<?php
namespace App\Http\Controllers\Customers\Dashboard;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class DashoboardController extends Controller{
	function manage(Request $request){
        if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
    		//Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer Dashboard',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['site_settings'] = site_settings();
            $result['mega_menus'] = mega_menus();
            $result['parent_categories_menus'] = parent_categories_menu();
            $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
            $result['all_parent_categories'] = all_parent_categories();
            $result['customer_details'] = customer_details();
            $result['orders'] = dashboard_orders($request->session()->get('customer_details')['id']);

            //Call Page
            return view('customers.dashboard.manage', $result);
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', "You don't have access to open this page.");

            return redirect()->back();
        }
	}
}