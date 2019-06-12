<?php
namespace App\Http\Controllers\Customers\Settings;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class ProfileController extends Controller{
	function edit(Request $request){
		if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
    		//Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer Profile Settings',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['site_settings'] = site_settings();
            $result['mega_menus'] = mega_menus();
            $result['customer_details'] = customer_details();
            $result['countries'] = countries();
            $result['cities'] = all_cities();

            //Call Page
            return view('customers.settings.manage', $result);
        }else{
            //Flash Error Message
            $request->session()->flash('alert-danger', "You don't have access to open this page.");

            return redirect()->back();
        }
	}

	function update(Request $request){
		if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
			$response = update_profile_settings($request->session()->get('customer_details')['id'], $request->all());

			if($response == 0){
				//Flash Error Message
            	$request->session()->flash('alert-danger', 'Password & confirm password not matched successfully.');

            	//Redirect
                return redirect()->back()->withInput($request->all());
			}elseif($response == 1){
				//Delete Session
        		$request->session()->flush();

				//Flash Error Message
            	$request->session()->flash('alert-success', 'Your profile with password has been updated successfully.');

            	//Redirect
                return redirect()->route('customer_sign_in');
			}elseif($response == 2){
				//Flash Error Message
            	$request->session()->flash('alert-success', 'Your profile has been updated successfully.');

				//Redirect
                return redirect()->back();
			}elseif($response == 3){
				//Flash Error Message
            	$request->session()->flash('alert-danger', 'You have to give inputs first before updating profile.');

				//Redirect
                return redirect()->back();
			}
		}else{
        	print_r("<center><h4>Error 404 !!<br> You don't have accees of this page<br> Please move back<h4></center>");
    	}
	}
}