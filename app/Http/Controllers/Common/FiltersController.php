<?php
namespace App\Http\Controllers\Common;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FiltersController extends Controller{
	function search_by_text(Request $request){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Shopker | Search Result',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
        $result['query'] = search();
        $result['side_filter'] = side_filter(utf8_encode($request->input('name')));

        //Call Page
        return view('pages.products', $result);
    }

    function search_by_variations(Request $request, $slug){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Shopker | Search Result',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['site_settings'] = site_settings();
        $result['mega_menus'] = mega_menus();
        $result['parent_categories_menus'] = parent_categories_menu();
        $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
        $result['query'] = search_by_variations($slug);
        $result['side_filter'] = side_filter($slug);

        //Call Page
        return view('pages.products', $result);
    }
}