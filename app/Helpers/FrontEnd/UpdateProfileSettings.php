<?php

function update_profile_settings($id, $params){
	if(!empty($params)){
		//Inputs Validation
		$input_validations = Request::validate([
		    'first_name' => 'required',
		    'last_name' => 'required',
		    'phone_no' => 'required|unique:tbl_users,id,'.$id,
		    'address' => 'required',
		    'country' => 'required',
		    'city' => 'required|numeric',
		    'password' => 'nullable|min:8|regex:/^((?=.*[a-z]))((?=.*[A-Z]))((?=.*[0-9])).+$/',
		    'confirm_password' => 'nullable|min:8|regex:/^((?=.*[a-z]))((?=.*[A-Z]))((?=.*[0-9])).+$/',
		    'dob' => 'required|date',
		    'gender' => 'required|numeric',
		    'profile_image' => 'nullable|mimes:jpeg,jpg,png|max:2000', 
		]);

		if(!empty($params['password'] != $params['confirm_password'])){
			return 0;
		}elseif(!empty($params['password'] && $params['confirm_password']) && $params['password'] == $params['confirm_password']){
			if(!empty($params['profile_image'])){
				//Set Field data according to table column
		        $data = array(
		        	'ip_address' => Request::ip(),
		            'first_name' => $params['first_name'],
		            'last_name' => $params['last_name'],
		            'address' => $params['address'],
		            'password' => sha1($params['confirm_password']),
		            'phone_no' => $params['phone_no'],
		            'country_id' => $params['country'],
		            'city_id' => $params['city'],
		            'dob' => date('Y-m-d', strtotime($params['dob'])),
		            'image' => single_image_upload($params['profile_image']),
		            'created_date' => date('Y-m-d'),
		            'created_time' => date('h:i:s'),
		        );

		        //Query For Updating Customer Profile
		        $with_password = \DB::table('tbl_users')
		                              ->where('id', $id)
		                              ->update($data);
			}else{
				//Set Field data according to table column
		        $data = array(
		        	'ip_address' => Request::ip(),
		            'first_name' => $params['first_name'],
		            'last_name' => $params['last_name'],
		            'address' => $params['address'],
		            'password' => sha1($params['confirm_password']),
		            'phone_no' => $params['phone_no'],
		            'country_id' => $params['country'],
		            'city_id' => $params['city'],
		            'dob' => date('Y-m-d', strtotime($params['dob'])),
		            'created_date' => date('Y-m-d'),
		            'created_time' => date('h:i:s'),
		        );

		        //Query For Updating Customer Profile
		        $with_password = \DB::table('tbl_users')
		                              ->where('id', $id)
		                              ->update($data);
			}
			
			//Set Field data according to table column
	        $data = array(
	        	'ip_address' => Request::ip(),
	            'user_id' => $id,
	            'gender_id' => $params['gender'],
	            'created_date' => date('Y-m-d'),
	            'created_time' => date('h:i:s'),
	        );

	        //Query For Updating Customer Profile
	        $user_gender = \DB::table('tbl_users_genders')
	                            ->where('id', $id)
	                            ->update($data);

          	return 1;
		}elseif(empty($params['password'] && $params['confirm_password'])){
			if(!empty($params['profile_image'])){
				//Set Field data according to table column
		        $data = array(
		        	'ip_address' => Request::ip(),
		            'first_name' => $params['first_name'],
		            'last_name' => $params['last_name'],
		            'address' => $params['address'],
		            'phone_no' => $params['phone_no'],
		            'country_id' => $params['country'],
		            'city_id' => $params['city'],
		            'dob' => date('Y-m-d', strtotime($params['dob'])),
		            'image' => single_image_upload($params['profile_image']),
		            'created_date' => date('Y-m-d'),
		            'created_time' => date('h:i:s'),
		        );

		        //Query For Updating Customer Profile
		        $without_password = \DB::table('tbl_users')
		                                 ->where('id', $id)
		                                 ->update($data);
			}else{
				//Set Field data according to table column
		        $data = array(
		        	'ip_address' => Request::ip(),
		            'first_name' => $params['first_name'],
		            'last_name' => $params['last_name'],
		            'address' => $params['address'],
		            'phone_no' => $params['phone_no'],
		            'country_id' => $params['country'],
		            'city_id' => $params['city'],
		            'dob' => date('Y-m-d', strtotime($params['dob'])),
		            'created_date' => date('Y-m-d'),
		            'created_time' => date('h:i:s'),
		        );

		        //Query For Updating Customer Profile
		        $without_password = \DB::table('tbl_users')
		                                 ->where('id', $id)
		                                 ->update($data);
			}

			//Set Field data according to table column
	        $data = array(
	        	'ip_address' => Request::ip(),
	            'user_id' => $id,
	            'gender_id' => $params['gender'],
	            'created_date' => date('Y-m-d'),
	            'created_time' => date('h:i:s'),
	        );

	        //Query For Updating Customer Profile
	        $user_gender = \DB::table('tbl_users_genders')
	                            ->where('id', $id)
	                            ->update($data);

         	return 2;
		}
	}else{
		return 3;
	}
}