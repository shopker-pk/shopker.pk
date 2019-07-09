<?php
namespace App\Http\Controllers\Customers\Shopping;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class WishlistsController extends Controller{
    function manage(Request $request){
        if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            //Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer Wishlist',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['site_settings'] = site_settings();
            $result['mega_menus'] = mega_menus();
            $result['parent_categories_menus'] = parent_categories_menu();
            $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
            $result['customer_details'] = customer_details();
            $result['wishlist'] = get_customers_wishlist($request->session()->get('customer_details')['id']);

            //Call Page
            return view('customers.wishlist.manage', $result);
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', "You don't have access to open this page.");

            return redirect()->back();
        }
    }

	function add(Request $request, $id){
        if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3 && $id)){
            $response = wishlists($id);

            if($response == 0){
                //Flash Success Message
                $request->session()->flash('alert-success', 'Product has been added successfully in your wishlists.');
            }elseif($response == 1){
                //Flash Error Message
                $request->session()->flash('alert-danger', "Something wen't wrong !!");
            }elseif($response == 2){
                //Flash Error Message
                $request->session()->flash('alert-danger', 'Product already exists in your wishlists.');
            }elseif($response == 3){
                //Flash Error Message
                $request->session()->flash('alert-danger', "Select product first before using this feature. !!");
            }

            return redirect()->back();
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', 'You have to login first before adding any product in wishlists.');

            return redirect()->back();
        }
    }

    function delete(Request $request, $product_id){
        if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3 && $product_id)){
            $response = remove_customer_wishlist($request->session()->get('customer_details')['id'], $product_id);

            if($response == 'success'){
                //Flash Success Message
                $request->session()->flash('alert-success', 'Product has been removed successfully from your wishlists.');
            }elseif($response == 'error'){
                //Flash Error Message
                $request->session()->flash('alert-danger', "Something wen't wrong !!");
            }elseif($response == 'not_exist'){
                //Flash Error Message
                $request->session()->flash('alert-danger', 'Product is not exist in your wishlists.');
            }

            return redirect()->back();
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', "You don't have access to open this page.");

            return redirect()->back();
        }
    }
}