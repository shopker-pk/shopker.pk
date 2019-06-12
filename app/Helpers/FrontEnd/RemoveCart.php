<?php 

function remove_cart($id){
	if(!empty($id)){
		\Session::forget('cart.'.$id);
		
		return true;
	}
}