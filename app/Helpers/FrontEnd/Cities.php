<?php

function cities($id){
	$ajax_response_data = array(
        'ERROR' => 'FALSE',
        'DATA' => '',
    );

    $query = DB::table('tbl_cities')
                 ->select('city_id', 'name')
                 ->where('country_id', $id);
    $result = $query->get();

    $html = '';
    if(!empty($result->count() > 0)){
        foreach($result as $row){
            $html .= '<option value='.$row->city_id.'>'.$row->name.'</option>';
        }    

        $ajax_response_data = array(
            'ERROR' => 'FALSE',
            'DATA' => '<option>No City Selected</option>'.$html,
        );

        echo json_encode($ajax_response_data);
    }else{
    	$ajax_response_data = array(
            'ERROR' => 'TRUE',
            'DATA' => '<option>No City Found !!</option>',
        );

        echo json_encode($ajax_response_data);
    }
    die;
}