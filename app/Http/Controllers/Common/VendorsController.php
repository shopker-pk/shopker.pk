<?php
namespace App\Http\Controllers\Common;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class VendorsController extends Controller{
    function sell_with_us(Request $request){
        //Necessary Page Data For header Page
        $result = array(
            'page_title' => 'Shopker | Sell With Us',
            'meta_keywords' => '',
            'meta_description' => '',
        );

        $result['mega_menus'] = mega_menus();
        $result['site_settings'] = site_settings();
        $result['countries'] = countries(); 

        //Call Page
        return view('pages.sell_with_us', $result);
    }
    
	function vendor_registeration(Request $request){
        $response = vendor_registration($request->all());

        if($response == 0){
            //Flash Success Message
            $request->session()->flash('alert-success', 'Congratulations!! Your Store has been created successfully.');
        }elseif($response == 1){
            //Flash Error Message
            $request->session()->flash('alert-danger', 'Something went wrong with your request.');
        }elseif($response == 2){
            //Flash Error Message
            $request->session()->flash('alert-danger', 'Your password & confirm password was not matched successfully.');
        }

        return redirect()->back();
    }
}