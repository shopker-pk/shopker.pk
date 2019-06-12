<?php

function get_cities(){
	//Getting Data from file
	$file = file_get_contents('http://cod.callcourier.com.pk/API/CallCourier/GetCityList');
	$file = json_decode($file, true);

	//getting required data by using loop
	foreach($file as $row){
		//Insert Data In Table
		$data[] = 'insert into tbl_cities (country_id, city_id, name) values("PK", "'.$row['StationID'].'", "'.$row['CityName'].'")';
	}

	//Making Array To Normal String
	echo '<pre>'; print_r(implode(';', $data)); 
}