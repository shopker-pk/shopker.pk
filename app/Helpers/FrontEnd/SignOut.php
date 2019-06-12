<?php

function sign_out($id){
	if(!empty($id)){
		//Set data accordings to table columns
        $data = array(
            'ip_address' => Request::ip(),
            'user_id' => $id,
            'status' => 1,
            'date' => date('Y-m-d'),
            'time' => date('H:i:s'),
        );

        //Insert data in table
        $query = \DB::table('tbl_login_activities')
                      ->insertGetId($data);

    	//Delete Session
        Session::flush();

        return 0;
    }else{
    	return 1;
    }
}