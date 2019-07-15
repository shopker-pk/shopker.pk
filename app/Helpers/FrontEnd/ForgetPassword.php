<?php

function forget_password($params){
	//Inputs Validation
	$input_validations = Request::validate([
	    'email' => 'required|email',
	]);

	//Query For Getting User Details
    $query = DB::table('tbl_users')
                 ->select('id')
                 ->where('email', 'Like', '%'.$params['email'].'%')
                 ->where('role', 3);
    $result = $query->first();

    if(!empty($result->id)){
    	//Set Field data according to table column
	    $data = array(
	    	'ip_address' => Request::ip(),
	    	'varification_code' => rand(111111, 999999),
	        'created_date' => date('Y-m-d'),
	    	'created_time' => date('h:i:s'),
	    );

	    //Query For Updating Varification Code
	    $query = \DB::table('tbl_users')
	                  ->where('id', $result->id)
	                  ->update($data); 

      	if($query == 1){
      		//Storing User Id In session
            $store_session = session([
                'user_id' =>$result->id,
            ]);
            
            return 'success';
      	}else{
      		return 'error';
      	}
    }else{
    	return 'not_exist';
    }
}