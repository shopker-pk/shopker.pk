<?php
namespace App\Http\Controllers\Customers\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class AuthController extends Controller{
    function sign_up(Request $request){
        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            //Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer Registration',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['mega_menus'] = mega_menus();
            $result['site_settings'] = site_settings();
            $result['parent_categories_menus'] = parent_categories_menu();
            $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
            $result['all_parent_categories'] = all_parent_categories();
            $result['countries'] = countries(); 

            //Call Page
            return view('frontend.auth.sign_up', $result);
        }else{
            return redirect()->back();        
        }
    }

    function registration(Request $request){
        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            $response = customer_registration($request->all());

            if($response == 0){
                //Flash Success Message
                $request->session()->flash('alert-success', 'Congratulations!! Your Profile has been created successfully.');
            }elseif($response == 1){
                //Flash Error Message
                $request->session()->flash('alert-danger', 'Something went wrong with your request.');
            }elseif($response == 2){
                //Flash Error Message
                $request->session()->flash('alert-danger', 'Your password & confirm password was not matched successfully.');
            }elseif($response == 3){
                //Flash Error Message
                $request->session()->flash('alert-danger', 'Email has already been taken.');
            }

            return redirect()->back();
        }else{
            return redirect()->back();        
        }
    }

    function sign_in(Request $request){
        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            //Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer Sign In',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['mega_menus'] = mega_menus();
            $result['site_settings'] = site_settings();
            $result['parent_categories_menus'] = parent_categories_menu();
            $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
            $result['all_parent_categories'] = all_parent_categories();
            $result['countries'] = countries(); 

            //Call Page
            return view('frontend.auth.sign_in', $result);
        }else{
            return redirect()->route('home');        
        }
    }

    function validating(Request $request){
        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            $response = validating_credentials($request->all());
            
            if($response == 0){
                //Flash Success Message
                $request->session()->flash('alert-success', 'Congratulations!! You have been sign in successfully.');
            }elseif($response == 1){
                //Flash Error Message
                $request->session()->flash('alert-danger', 'Your account is in admin approval state. Please contact us for more information.');
            }elseif($response == 2){
                //Flash Error Message
                $request->session()->flash('alert-danger', 'Your account is suspended by admin. Please contact us for more information.');
            }elseif($response == 3){
                //Flash Success Message
                $request->session()->flash('alert-danger', 'You have given wrong credentials.');
            }
            
            return redirect()->back();
        }else{
            return redirect()->back();
        }
    }

    function sign_out(Request $request){
        if(!empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            $response = sign_out($request->session()->get('customer_details')['id']);

            if($response == 0){
                //Flash Success Message
                $request->session()->flash('alert-success', 'You have been sign out successfully.');

                return redirect()->route('customer_sign_in');
            }elseif($response == 1){
                //Flash Success Message
                $request->session()->flash('alert-danger', "Something we'nt wrong!!");
                
                return redirect()->back();
            }
            
            return redirect()->back();
        }else{
            return redirect()->back();
        }
    }

    function forget_password(Request $request){
        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            //Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer Forget Password',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['mega_menus'] = mega_menus();
            $result['site_settings'] = site_settings();
            $result['parent_categories_menus'] = parent_categories_menu();
            $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
            $result['all_parent_categories'] = all_parent_categories();
            $result['countries'] = countries(); 

            //Call Page
            return view('frontend.auth.forget_password', $result);
        }else{
            return redirect()->back();
        }
    }

    function validating_email(Request $request){
        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            $response = forget_password($request->all());
            
            if($response == 'success'){
                //Flash Success Message
                $request->session()->flash('alert-success', "We have sen't you a code at your given email.");

                return redirect()->route('add_otp');
            }elseif($response == 'error'){
                //Flash Success Message
                $request->session()->flash('alert-danger', "Their is something with your request.");
                
                return redirect()->back();
            }elseif($response == 'not_exist'){
                //Flash Success Message
                $request->session()->flash('alert-danger', "Their is something wen't wrong with your given email.");
                
                return redirect()->back();
            }
        }else{
            return redirect()->back();
        }
    }

    function add_otp(Request $request){
        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            //Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer Add Otp',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['mega_menus'] = mega_menus();
            $result['site_settings'] = site_settings();
            $result['parent_categories_menus'] = parent_categories_menu();
            $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
            $result['all_parent_categories'] = all_parent_categories();
            $result['countries'] = countries(); 

            //Call Page
            return view('frontend.auth.add_otp', $result);
        }else{
            return redirect()->back();
        }
    }

    function verify_otp(Request $request){
        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3 && $request->session()->get('user_id'))){
            $response = verify_otp($request->all());
            
            if($response == 'success'){
                //Flash Success Message
                $request->session()->flash('alert-success', "Your otp code matched successfully.");

                return redirect()->route('new_passowrd');
            }elseif($response == 'error'){
                //Flash Success Message
                $request->session()->flash('alert-danger', "Your have wrong otp code.");
                
                return redirect()->back();
            }
        }else{
            return redirect()->back();
        }
    }

    function new_passowrd(Request $request){
        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3)){
            //Necessary Page Data For header Page
            $result = array(
                'page_title' => 'Shopker | Customer New Password',
                'meta_keywords' => '',
                'meta_description' => '',
            );

            $result['mega_menus'] = mega_menus();
            $result['site_settings'] = site_settings();
            $result['parent_categories_menus'] = parent_categories_menu();
            $result['child_subchildcategories_menu'] = child_subchildcategories_menu();
            $result['all_parent_categories'] = all_parent_categories();
            $result['countries'] = countries(); 

            //Call Page
            return view('frontend.auth.new_password', $result);
        }else{
            return redirect()->back();
        }
    }

    function updating_password(Request $request){
        if(empty($request->session()->get('customer_details')['id'] && $request->session()->get('customer_details')['role'] == 3 && $request->session()->get('user_id'))){
            $response = updating_password($request->all());
            
            if($response == 'success'){
                //Flash Success Message
                $request->session()->flash('alert-success', "Your password has been updated successfully.");

                return redirect()->route('customer_sign_in');
            }elseif($response == 'error'){
                //Flash Success Message
                $request->session()->flash('alert-danger', "Their is something wen't wrong !!");
                
                return redirect()->back();
            }
        }else{
            return redirect()->back();
        }
    }
}