<?php

function mega_menus(){
    //Query For Getting Parent Categories
    $query = \DB::table('tbl_parent_categories')
                 ->select('id as parent_id', 'name as parent_name', 'slug as parent_slug')
                 ->where('status', 0)
                 ->orderBy('sorting_order', 'ASC')
                 ->limit(8);
 	$parent_categories = $query->get();

 	$html = '';
 	if(count($parent_categories) > 0){
 		foreach($parent_categories as $parent_category){
 			//Query For Getting Child Categories
			$query = \DB::table('tbl_child_categories')
		                 ->select('id as child_id', 'parent_id as child_parent_id', 'name as child_name', 'slug as child_slug')
		                 ->where('parent_id', $parent_category->parent_id)
		                 ->where('status', 0)
		                 ->orderBy('id')
		                 ->limit(3);
		 	$child_categories = $query->get();

		 	if(count($child_categories) > 0){
		 		$html .= '
	 			<li class="menu-item-has-children has-megamenu">
					<a href="'.route('products_by_categories', $parent_category->parent_slug).'" class="ovic-menu-item-title" title="Laptop & Computer"><span class="icon"><img src="'.asset('public/assets/images/icon3.png').'" alt=""></span> '.$parent_category->parent_name.'</a>
					<a href="#" class="toggle-sub-menu"></a>
					<div class="sub-menu sub-menu1 mega-menu">
						<div class="row">
	 			';

		 		foreach($child_categories as $child_category){
		 			//Query For Getting Sub Child Categories
					$query = \DB::table('tbl_sub_child_categories')
				                 ->select('id as sub_child_id', 'child_id as child_child_id', 'name as sub_child_name', 'slug as sub_child_slug')
				                 ->where('parent_id', $parent_category->parent_id)
				                 ->where('child_id', $child_category->child_id)
				                 ->where('status', 0)
				                 ->orderBy('id');
				 	$sub_child_categories = $query->get();

				 	$html .= '
							<div class="widget-custom-menu col-xs-12 col-sm-12 col-md-4">
							<a href="'.route('products_by_categories', $child_category->child_slug).'"><h5 class="title widgettitle">'.$child_category->child_name.'</h5></a>
							<ul>
						';

					foreach($sub_child_categories as $sub_child_category){
						$html .= '
								<li><a href="'.route('products_by_categories', $sub_child_category->sub_child_slug).'">'.$sub_child_category->sub_child_name.'</a></li>
						';
					}

					$html .= '
								</ul>
							</div>
					';
				}

				$html .= '
						</div>
					</div>
				</li>
				';
			}else{
		 		$html .= '
		 		<li><a href="#" class="ovic-menu-item-title" title="Tv & Audio"><span class="icon"><img src="'.asset('public/assets/images/icon3.png').'" alt=""></span> '.$parent_category->parent_name.'</a></li>
		 		';
		 	}
	 	}
 	}
	
 	return $html;
}