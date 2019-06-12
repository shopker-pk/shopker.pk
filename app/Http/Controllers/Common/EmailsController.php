<?php
namespace App\Http\Controllers\Common;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class EmailsController extends Controller{
    function wholesale(Request $request){
        $response = wholesale_email($request->all());

        if($response == 0){
            //Flash Success Message
            $request->session()->flash('alert-success', 'Congratulations!! You request has been received successfully.');
        }elseif($response == 1){
            //Flash Error Message
            $request->session()->flash('alert-danger', "Something wen't wrong !!");
        }

        return redirect()->back();
    }

    function contact_us(Request $request){
        $response = contact_us_email($request->all());

        if($response == 0){
            //Flash Success Message
            $request->session()->flash('alert-success', 'Congratulations!! Your contact request has been received successfully.');
        }elseif($response == 1){
            //Flash Error Message
            $request->session()->flash('alert-danger', "Something wen't wrong !!");
        }

        return redirect()->back();
    }
}