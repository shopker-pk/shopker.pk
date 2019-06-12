<?php

function pages($slug){
	if(!empty($slug)){
		//Query For Getting Page By Slug
		$query = \DB::table('tbl_pages')
		              ->select('title', 'content', 'meta_keywords', 'meta_description')
		              ->leftJoin('tbl_pages_meta_details', 'tbl_pages_meta_details.page_id', '=', 'tbl_pages.id')
		              ->where('slug', 'LIKE', '%'.$slug.'%')
		              ->where('status', 0);
  		$result = $query->first();

  		if(!empty($result)){
  			$data = array(
  				'title' => $result->title,
  				'content' => $result->content,
  				'meta_keywords' => $result->meta_keywords,
  				'meta_description' => $result->meta_description,
  			);

  			return $data;
  		}
	}
}