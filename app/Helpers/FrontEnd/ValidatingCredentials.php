<?php

function validating_credentials($data){
	//Inputs Validation
	$input_validations = Request::validate([
	    'email' => 'required|email',
	    'password' => 'required|min:8|regex:/^((?=.*[a-z]))((?=.*[A-Z]))((?=.*[0-9])).+$/',
	]);

	//Query For Getting User Details
    $query = DB::table('tbl_users')
                 ->select('id', 'role', 'status')
                 ->where('email', 'Like', '%'.$data['email'].'%')
                 ->where('password', sha1($data['password']))
                 ->where('role', 3);
    $result = $query->first();

    if(!empty($result)){
        if($result->status == 0){
			//Set data accordings to table columns
	        $data = array(
	            'ip_address' => Request::ip(),
	            'user_id' => $result->id,
	            'status' => 0,
	            'date' => date('Y-m-d'),
	            'time' => date('H:i:s'),
	        );

	        //Insert data in table
	        $query = DB::table('tbl_login_activities')
	                     ->insertGetId($data);

         	$array = array(
                'id' => $result->id,
                'role' => $result->role,
            );
            
            \Session()->put('customer_details', $array);

	     	return 0;
    	}elseif($result->status == 1){
    		return 1;
    	}elseif($result->status == 2){
    		return 2;
    	}
    }else{
        return 3;
    }
}