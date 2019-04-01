<?php
namespace App\Http\Controllers\Common;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class PagesController extends Controller{
	function home(Request $request){
		//Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Shopker | Home',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['mega_menus'] = mega_menus();
        $result['header_banners'] = header_banners(1);
        $result['daily_deals'] = daily_deals();
        $result['best_selling'] = best_selling();
        $result['latest_products'] = latest_products();
         
        //Call Page
        return view('pages.index', $result);
	}

    function products_by_categories(Request $request, $slug){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Shopker | Products',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['mega_menus'] = mega_menus();
        $result['products_by_categories'] = products_by_categories($slug);

        //Call Page
        return view('pages.products', $result);
    }

    function product_details(Request $request, $slug){
        if(!empty(product_details($slug))){
            //Necessary Page Data For header Page
            $result = array(
                'page_title' => product_details($slug)['product_name'],
                'meta_keywords' => product_details($slug)['meta_keywords'],
                'meta_description' => product_details($slug)['meta_description'],
            );

            $result['mega_menus'] = mega_menus();
            $result['product_details'] = product_details($slug); 
            $result['product_images'] = product_images($result['product_details']['product_id']); 
            $result['product_reviews'] = product_reviews($result['product_details']['product_id']); 
            $result['related_products'] = related_products($result['product_details']['product_slug']); 

            //Call Page
            return view('pages.product_details', $result);
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', 'Your Search product is not found !!');
            
            return redirect()->route('home');
        }
    }

    function daily_deals(Request $request){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Shopker | Daily Deals',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['mega_menus'] = mega_menus();
        $result['daily_deals'] = all_daily_deals(); 

        //Call Page
        return view('pages.daily_deals', $result);
    }

    function best_selling(Request $request){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Shopker | Best Selling',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['mega_menus'] = mega_menus();
        $result['best_selling'] = all_best_selling(); 

        //Call Page
        return view('pages.best_selling', $result);
    }
}