<?php

function all_cities(){
	$query = DB::table('tbl_cities')
                 ->select('id', 'name')
                 ->orderBy('id', 'DESC');
    $result = $query->get();

    if(count($result) > 0){
        foreach($result as $row){
            $data[] = array(
                'id' => $row->id,
                'name' => $row->name,
            );
        }

        return $data;
    }
}