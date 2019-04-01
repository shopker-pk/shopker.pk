<?php

function mega_menus(){
    //Query For Getting Parent Categories
    $query = \DB::table('tbl_parent_categories')
                 ->select('id as parent_id', 'slug as parent_slug', 'name as parent_name')
                 ->where('status', 0)
                 ->orderBy('id')
                 ->limit(10);
 	$parent_categories = $query->get();

 	$html = '';
 	if(!empty($parent_categories)){
 		foreach($parent_categories as $parent_category){
 			$html .= '
	            <li class="hassubs" id="'.$parent_category->parent_slug.'" style="height: 30px;">
	                <a href="'.route('products_by_categories', $parent_category->parent_slug).'" id="'.$parent_category->parent_slug.'" id="'.$parent_category->parent_id.'" style="font-size: 15px; line-height: 17px;text-overflow: ellipsis; overflow: hidden; white-space: nowrap; padding-top: 6px;">'.$parent_category->parent_name.'<i class="fas fa-chevron-right"></i></a>
	                <ul>'
	        ;

 			//Query For Getting Child Categories
			$query = \DB::table('tbl_child_categories')
		                 ->select('id as child_id', 'parent_id as child_parent_id', 'slug as child_slug', 'name as child_name')
		                 ->where('parent_id', $parent_category->parent_id)
		                 ->where('status', 0)
		                 ->orderBy('id');
		 	$child_categories = $query->get();

		 	foreach($child_categories as $child_category){
	 			$html .= '
			            <li class="hassubs" id="'.$parent_category->parent_slug.'" style="height: 30px;">
		                    <a href="'.route('products_by_categories', $child_category->child_slug).'" id="'.$child_category->child_slug.'" id="'.$child_category->child_slug.'" style="font-size: 15px; line-height: 17px;text-overflow: ellipsis; overflow: hidden; white-space: nowrap; padding-top: 6px;">'.$child_category->child_name.'<i class="fas fa-chevron-right"></i></a>
		                    <ul>'
		        ;

		        //Query For Getting Sub Child Categories
				$query = \DB::table('tbl_sub_child_categories')
			                 ->select('id as sub_child_id', 'child_id as child_child_id', 'slug as sub_child_slug', 'name as sub_child_name')
			                 ->where('child_id', $child_category->child_id)
			                 ->where('status', 0)
			                 ->orderBy('id');
			 	$sub_child_categories = $query->get();

			 	foreach($sub_child_categories as $sub_child_category){
		 			$html .= '
			            <li id="'.$parent_category->parent_slug.'" style="height: 30px;"><a href="'.route('products_by_categories', $sub_child_category->sub_child_slug).'" id="'.$child_category->child_slug.'" style="font-size: 15px; line-height: 17px;text-overflow: ellipsis; overflow: hidden; white-space: nowrap; padding-top: 6px;">'.$sub_child_category->sub_child_name.'<i class="fas fa-chevron-right"></i></a></li>'
		            ;	
		 		}
		 		$html .= '
		 					</ul>
                    	</li>
		 		';
	 		}
	 		$html .= '
	 				</ul>
	 			</li>
	 		';
 		}
	}
	
 	return $html;
}