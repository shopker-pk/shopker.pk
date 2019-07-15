<?php

function get_cities_areas($city_id){
	//Getting Data from file
	$file = file_get_contents('http://cod.callcourier.com.pk/api/callcourier/GetAreasByCity?CityID='.$city_id);
	$file = json_decode($file, true);

	if(count($file) > 0){
		$ajax_response_data = array(
            'ERROR' => 'FALSE',
            'DATA' => '',
        );

        $html = '';
		//getting required data by using loop
		foreach($file as $row){
			$html .= '<option value="'.$row['AreaID'].'">'.$row['AreaName'].'</option>';
		}

		$ajax_response_data = array(
            'ERROR' => 'FALSE',
            'DATA' => '<option>No Area Selected</option>'.$html,
        );

		return json_encode($ajax_response_data);
	}else{
		$ajax_response_data = array(
            'ERROR' => 'FALSE',
            'DATA' => '<option>No Area Found !!</option>',
        );

		return json_encode($ajax_response_data);
	}
}