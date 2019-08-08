<?php
namespace App\Http\Controllers\Customers\Reviews;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class ProductsController extends Controller{
	function manage(Request $request){
		if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
			
			//Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer Products Reviews',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['site_settings'] = site_settings();
            $result['mega_menus'] = mega_menus();
            $result['parent_categories_menus'] = parent_categories_menu();
            $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
            $result['all_parent_categories'] = all_parent_categories();
            $result['customer_details'] = customer_details();
            $result['products_reviews'] = get_customers_products_reviews($request->session()->get('customer_details')['id']);

            //Call Page
            return view('customers.reviews.products.manage', $result);
        }else{
        	//Flash Error Message
            $request->session()->flash('alert-danger', "<h4>Error 404 !!<br> You don't have accees of this page<br> Please move back<h4>");

         	return redirect()->back();       
        }
	}

	function insert(Request $request){
		if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
			if(!empty($request->all())){
				$response = add_products_reviews($request->session()->get('customer_details')['id'], $request->all());

	            if($response == 'true'){
	            	//Flash Success Message
	            	$request->session()->flash('alert-success', "Product Review has been added successfully.");
	            }elseif($response == 'false'){
	            	//Flash Error Message
	            	$request->session()->flash('alert-danger', "Something wen't wrong !!");
	            }elseif($response == 'exist'){
	            	//Flash Error Message
	            	$request->session()->flash('alert-danger', "You have already review on this product.");
	            }

	            return redirect()->back(); 
        	}else{
        		//Flash Error Message
	            $request->session()->flash('alert-danger', "You need to submit form first.");

	         	return redirect()->back();  
        	}
        }else{
        	//Flash Error Message
            $request->session()->flash('alert-danger', "<h4>Error 404 !!<br> You don't have accees of this page<br> Please move back<h4>");

         	return redirect()->back();       
        }
	}
}