<?php
namespace App\Http\Controllers\Common;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use DB;

class CommonController extends Controller{
	function cities(Request $request, $id){
        return cities($id);
    }

    function areas(Request $request, $id){
        return get_cities_areas($id);
    }
}