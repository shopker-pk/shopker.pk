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

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
        $result['header_banners'] = header_banners(0);
        $result['bottom_top_banners'] = bottom_top_banners(0);
        $result['bottom_center_banners'] = bottom_center_banners(0);
        $result['best_selling'] = best_selling();
        $result['daily_deals'] = daily_deals();
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

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
        $result['query'] = products_by_categories($slug);
        $result['side_filter'] = side_filter($slug);
        
        //Call Page
        return view('pages.products', $result);
    }

    function product_details_by_id(Request $request, $id){
        return ajax_product_quick_view($id);
    }

    function product_details(Request $request, $slug){
        if(!empty(product_details($slug))){
            //Necessary Page Data For header Page
            $result = array(
                'page_title' => product_details($slug)['product_name'],
                'meta_keywords' => product_details($slug)['meta_keywords'],
                'meta_description' => product_details($slug)['meta_description'],
            );

            $result['site_settings'] = site_settings();
            $result['mega_menus'] = mega_menus();
            $result['parent_categories_menus'] = parent_categories_menu();
            $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
            $result['product_details'] = product_details($slug); 
            $result['product_images'] = product_images($result['product_details']['product_id']); 
            $result['product_reviews'] = product_reviews($result['product_details']['product_id']); 
            $result['related_products'] = related_products($result['product_details']['product_slug']); 
            $result['customer_details'] = customer_details();
            
            //Call Page
            return view('pages.product_details', $result);
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', 'Product Not Found !!');
            
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

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
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

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
        $result['best_selling'] = all_best_selling(); 

        //Call Page
        return view('pages.best_selling', $result);
    }

    function stores(Request $request, $slug){
        if(!empty(get_stores($slug) == false)){
            //Flash Error Message
            $request->session()->flash('alert-danger', 'Your given store not found !!');
            
            return redirect()->route('home');
        }else{
            //Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | '.get_stores($slug)[0]['store_name'].'',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['site_settings'] = site_settings();
            $result['mega_menus'] = mega_menus();
            $result['parent_categories_menus'] = parent_categories_menu();
            $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
            $result['store_details'] = get_stores($slug); 
            $result['query'] = get_stores_products(get_stores($slug)[0]['owner_id']); 
            $result['side_filter'] = side_filter($slug);

            //Call Page
            return view('pages.stores', $result);
        }
    }
    
    function wholesale(Request $request){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Shopker | Wholesale Contact Form',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
        
        //Call Page
        return view('pages.wholesale', $result);
    }

    function contact_us(Request $request){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Shopker | Contact Us',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();

        //Call Page
        return view('pages.contact_us', $result);
    }

    function career(Request $request){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Shopker | Career',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();

        //Call Page
        return view('pages.career', $result);
    }

    function pages(Request $request, $slug){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => pages($slug)['title'],
            'meta_keywords' => pages($slug)['meta_keywords'],
            'meta_description' => pages($slug)['meta_description'],
        );

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
        $result['pages'] = pages($slug); 

        //Call Page
        return view('pages.pages', $result);
    }

    function all_categories(Request $request){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'All Categories',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu(); 
        $result['get_all_categories'] = get_all_categories(); 

        //Call Page
        return view('pages.all_categories', $result);
    }

    function view_more_products(Request $request){
        return view_more_products();
    }

    function apply_for_job(Request $request){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Apply Career',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();

        //Call Page
        return view('pages.apply_for_job', $result);
    }

    function apply_job(Request $request){
        $response = apply_job($request->all());

        if($response == 'success'){
            //Flash Success Message
            $request->session()->flash('alert-success', 'Your cv has been sent successfully');
        }elseif($response == 'error'){
            //Flash Error Message
            $request->session()->flash('alert-danger', 'Something went wrong !!');
        }

        return redirect()->back();
    }
}