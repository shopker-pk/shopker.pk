$(document).ready(function(){
	//Initalizing Date Input
	var date = new Date();
	var day = date.getDate();
	var month = date.getMonth() + 1;
	var year = date.getFullYear();

	//Getting Cities By Country Id Start
	$(document).on('click', '#country', function(){
		if(document.location.href.split('sell-')[1] == 'with-us'){
			var url = document.location.href.split('sell-with-us')[0].toString()+'get-ajax-cities/'+$(this).val();
		}else if(document.location.href.split('registeration')[1] == ''){
			var url = document.location.href.split('registeration')[0].toString()+'get-ajax-cities/'+$(this).val();
		}else if(document.location.href.split('view-')[1] == 'cart'){
			var url = document.location.href.split('view-cart')[0].toString()+'get-ajax-cities/'+$(this).val();
		}
		
		if($(this).attr('data-id') == 1){
			$('#city_1').empty();
			$.ajax({
	            url : url,
	            method : 'GET',

	            success:function(response){
	                json_data = $.parseJSON(response);
	                $('#city_1').append(json_data.DATA);
	                console.log(json_data.DATA);
	            }
	        });
		}else if($(this).attr('data-id') == 2){
			$('#city_2').empty();

			$.ajax({
	            url : url,
	            method : 'GET',

	            success:function(response){
	                json_data = $.parseJSON(response);
	                $('#city_2').append(json_data.DATA);
	                console.log(json_data.DATA);
	            }
	        });
		}else if($(this).attr('data-id') == 3){
			$('#city_3').empty();

			$.ajax({
	            url : url,
	            method : 'GET',

	            success:function(response){
	                json_data = $.parseJSON(response);
	                $('#city_3').append(json_data.DATA);
	                console.log(json_data.DATA);
	            }
	        });
		}
	});
	//Getting Cities By Country Id End

	//Update Product Quantity And product Amount And total Start
	$(document).on('click', '.plus-btn', function(){
		$('#product_total_price_'+$(this).attr('data-id')).empty();
		$('#cart_total').empty();
		$('#total').empty();
		$('#shipping_price').empty();
		var sub_total = 0;
		var weight = 0;

		$('#product_total_price_'+$(this).attr('data-id')).text($('#product_price_'+$(this).attr('data-id')).text() * $('.product_quantity_'+$(this).attr('data-id')).val());
		
		$('.product_price').each(function(){
			sub_total += +$(this).text();
		});

		$('#cart_total').text(sub_total);
		$('#order_sub_total').val(sub_total);
		
		$('.weight').each(function(){
			weight += +parseFloat($(this).val()) * $('#quantity_'+$(this).attr('data-id')).val();
		});

		if($('#city_3 option:selected').text() == 'LAHORE'){
			if(weight <= '0.5'){
				$('#shipping_charges').val($('#half_kg_0').val());
				$('#delivery_charges').val($('#half_kg_0').val());
				$('#shipping_price').text($('#half_kg_0').val());
			}else if(weight <= '1'){
				$('#shipping_charges').val($('#per_kg_0').val());
				$('#delivery_charges').val($('#per_kg_0').val());
				$('#shipping_price').text($('#half_kg_0').val());
			}else if(weight > '1'){
				var i = 1;
				do{
			    	$('#shipping_charges').val(parseInt($('#per_kg_0').val()) + parseInt($('#additional_per_kg_0').val()) * i);
			    	$('#delivery_charges').val(parseInt($('#per_kg_0').val()) + parseInt($('#additional_per_kg_0').val()) * i);
					$('#shipping_price').text(parseInt($('#per_kg_0').val()) + parseInt($('#additional_per_kg_0').val()) * i);
			    	i++;
			  	}
			  	while(i < weight);
			}
		}else if($('#city_3 option:selected').text() != 'LAHORE'){
			if(weight <= '0.5'){
				$('#shipping_charges').val($('#half_kg_1').val());
				$('#delivery_charges').val($('#half_kg_1').val());
				$('#shipping_price').text($('#half_kg_1').val());
			}else if(weight <= '1'){
				$('#shipping_charges').val($('#per_kg_1').val());
				$('#delivery_charges').val($('#per_kg_1').val());
				$('#shipping_price').text($('#per_kg_1').val());
			}else if(weight > '1'){
				var i = 1;
				do{
			    	$('#shipping_charges').val(parseInt($('#per_kg_1').val()) + parseInt($('#additional_per_kg_1').val()) * i);
			    	$('#delivery_charges').val(parseInt($('#per_kg_1').val()) + parseInt($('#additional_per_kg_1').val()) * i);
					$('#shipping_price').text(parseInt($('#per_kg_1').val()) + parseInt($('#additional_per_kg_1').val()) * i);
			    	i++;
			  	}
			  	while(i < weight);
			}
		}

		if($('#discount').attr('data-id') == ''){
			$('#total').text(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
			$('#order_total').val(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
		}else if($('#discount').attr('data-id') == 0){
			$('#total').text(parseInt($('#cart_total').text()) - (parseInt($('#cart_total').text()) * (parseInt($('#discount').text())) / 100) + parseInt($('#shipping_price').text()));
			$('#order_total').val(parseInt($('#cart_total').text()) - (parseInt($('#cart_total').text()) * (parseInt($('#discount').text())) / 100) + parseInt($('#shipping_price').text()));
		}else if($('#discount').attr('data-id') == 1){
			$('#total').text(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
			$('#order_total').val(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
		}
	});

	$(document).on('click', '.minus-btn', function(){
		$('#product_total_price_'+$(this).attr('data-id')).empty();
		$('#cart_total').empty();
		$('#total').empty();
		$('#shipping_price').empty();
		var sub_total = 0;
		var weight = 0;

		$('#product_total_price_'+$(this).attr('data-id')).text($('#product_price_'+$(this).attr('data-id')).text() * $('.product_quantity_'+$(this).attr('data-id')).val());
		
		$('.product_price').each(function(){
			sub_total += +$(this).text();
		});

		$('#cart_total').text(sub_total);
		$('#order_sub_total').val(sub_total);

		$('.weight').each(function(){
			weight += +parseFloat($(this).val()) * parseInt($('#quantity_'+$(this).attr('data-id')).val());
		});

		if($('#city_3 option:selected').text() == 'LAHORE'){
			if(weight <= '0.5'){
				$('#shipping_charges').val($('#half_kg_0').val());
				$('#delivery_charges').val($('#half_kg_0').val());
				$('#shipping_price').text($('#half_kg_0').val());
			}else if(weight <= '1'){
				$('#shipping_charges').val($('#per_kg_0').val());
				$('#delivery_charges').val($('#per_kg_0').val());
				$('#shipping_price').text($('#half_kg_0').val());
			}else if(weight > '1'){
				var i = 1;
				do{
			    	$('#shipping_charges').val(parseInt($('#per_kg_0').val()) + parseInt($('#additional_per_kg_0').val()) * i);
			    	$('#delivery_charges').val(parseInt($('#per_kg_0').val()) + parseInt($('#additional_per_kg_0').val()) * i);
					$('#shipping_price').text(parseInt($('#per_kg_0').val()) + parseInt($('#additional_per_kg_0').val()) * i);
			    	i++;
			  	}
			  	while(i < weight);
			}
		}else if($('#city_3 option:selected').text() != 'LAHORE'){
			if(weight <= '0.5'){
				$('#delivery_charges').val($('#half_kg_1').val());
				$('#shipping_price').text($('#half_kg_1').val());
			}else if(weight <= '1'){
				$('#delivery_charges').val($('#per_kg_1').val());
				$('#shipping_price').text($('#per_kg_1').val());
			}else if(weight > '1'){
				var i = 1;
				do{
			    	$('#delivery_charges').val(parseInt($('#per_kg_1').val()) + parseInt($('#additional_per_kg_1').val()) * i);
					$('#shipping_price').text(parseInt($('#per_kg_1').val()) + parseInt($('#additional_per_kg_1').val()) * i);
			    	i++;
			  	}
			  	while(i < weight);
			}
		}

		if($('#discount').attr('data-id') == ''){
			$('#total').text(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
			$('#order_total').val(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
		}else if($('#discount').attr('data-id') == 0){
			$('#total').text(parseInt($('#cart_total').text()) - (parseInt($('#cart_total').text()) * (parseInt($('#discount').text())) / 100) + parseInt($('#shipping_price').text()));
			$('#order_total').val(parseInt($('#cart_total').text()) - (parseInt($('#cart_total').text()) * (parseInt($('#discount').text())) / 100) + parseInt($('#shipping_price').text()));
		}else if($('#discount').attr('data-id') == 1){
			$('#total').text(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
			$('#order_total').val(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
		}
	});
	//Update Product Quantity And product Amount And total End

	//Apply Coupon ON Checkout Start Here
	$(document).on('click', '#apply_coupon', function(){
		if($('#coupon_code').val() == ''){
			$('.coupen-section').append(''
        		+'<div class="flash-message">'
				    +'<div class="alert alert-danger alert-dismissible">'
				        +'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
				        +'Write Coupon Code First'
				    +'</div>'
				+'</div>'
    		);
		}else{
			$('#total').empty();
			$('.flash-message').empty();

			$.ajax({
	            url : document.location.href.split('view-cart')[0].toString()+'apply-coupon/',
	            method : 'Get',
	            data : { coupon_code : $('#coupon_code').val() },

	            success:function(response){
	            	json_data = $.parseJSON(response);
	                console.log(json_data.DATA);
	                if(json_data.ERROR == 'TRUE'){
	                	$('.coupen-section').append(''
	                		+'<div class="flash-message">'
							    +'<div class="alert alert-danger alert-dismissible">'
							        +'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
							        +json_data.DATA
							    +'</div>'
							+'</div>'
	            		);
	            		$('#total').text(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#order_discount').val()));
	                }else if(json_data.ERROR == 'FALSE'){
	                	if(json_data.DATA.remaining_limit == 0){
		                	$('.coupen-section').append(''
		                		+'<div class="flash-message">'
								    +'<div class="alert alert-danger alert-dismissible">'
								        +'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
								        +'Coupon limit is out.'
								    +'</div>'
								+'</div>'
		            		);
		            		$('#total').text(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#order_discount').val()));
		                }else{
							if(json_data.DATA.discount_type == 1){
		                		$('#discount').text(json_data.DATA.discount_offer);
			                	$('#coupon_id').val(json_data.DATA.coupon_id);
			                	$('#discount').attr('data-id', 1);
			            		$('#total').text(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
			            		$('#order_total').val(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
		                	}else if(json_data.DATA.discount_type == 0){
		                		$('#discount').text(json_data.DATA.discount_offer+'%');
			                	$('#coupon_id').val(json_data.DATA.coupon_id);
			                	$('#discount').attr('data-id', 0);
			            		$('#total').text(parseInt($('#cart_total').text()) - (parseInt($('#cart_total').text()) * (parseInt($('#discount').text())) / 100) + parseInt($('#shipping_price').text()));
			            		$('#order_total').val(parseInt($('#cart_total').text()) - (parseInt($('#cart_total').text()) * (parseInt($('#discount').text())) / 100) + parseInt($('#shipping_price').text()));
		                	}
		                }
	                }
	            }
	        });
        }
	});
	//Apply Coupon ON Checkout End Here

	//Navigate To Search Page Clicking Variant Start
	$(document).on('change', '#variant', function(){
		if(window.location.href.split('products')[0] == window.location.href.split('products')[0]){
			var url = window.location.replace(window.location.href.split('products')[0].toString()+'products/filter/variations/'+$(this).val());
		}
	});
	//Navigate To Search Page Clicking Variant End

	//Fetching Areas By City Id Start
	$(document).on('change', '#city_3', function(){
		$('#total').empty();
		$('#shipping_price').empty();
		var sub_total = 0;
		var weight = 0;

		$('.weight').each(function(){
			weight += +parseFloat($(this).val()) * parseInt($('#quantity_'+$(this).attr('data-id')).val());
		});

		if($('#city_3 option:selected').text() == 'LAHORE'){
			if(weight <= '0.5'){
				$('#shipping_charges').val($('#half_kg_0').val());
				$('#delivery_charges').val($('#half_kg_0').val());
				$('#shipping_price').text($('#half_kg_0').val());
			}else if(weight <= '1'){
				$('#shipping_charges').val($('#per_kg_0').val());
				$('#delivery_charges').val($('#per_kg_0').val());
				$('#shipping_price').text($('#half_kg_0').val());
			}else if(weight > '1'){
				var i = 1;
				do{
			    	$('#shipping_charges').val(parseInt($('#per_kg_0').val()) + parseInt($('#additional_per_kg_0').val()) * i);
			    	$('#delivery_charges').val(parseInt($('#per_kg_0').val()) + parseInt($('#additional_per_kg_0').val()) * i);
					$('#shipping_price').text(parseInt($('#per_kg_0').val()) + parseInt($('#additional_per_kg_0').val()) * i);
			    	i++;
			  	}
			  	while(i < weight);
			}
		}else if($('#city_3 option:selected').text() != 'LAHORE'){
			if(weight <= '0.5'){
				$('#delivery_charges').val($('#half_kg_1').val());
				$('#shipping_price').text($('#half_kg_1').val());
			}else if(weight <= '1'){
				$('#delivery_charges').val($('#per_kg_1').val());
				$('#shipping_price').text($('#per_kg_1').val());
			}else if(weight > '1'){
				var i = 1;
				do{
			    	$('#delivery_charges').val(parseInt($('#per_kg_1').val()) + parseInt($('#additional_per_kg_1').val()) * i);
					$('#shipping_price').text(parseInt($('#per_kg_1').val()) + parseInt($('#additional_per_kg_1').val()) * i);
			    	i++;
			  	}
			  	while(i < weight);
			}
		}
		if($('#discount').attr('data-id') == ''){
			$('#total').text(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
			$('#order_total').val(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
		}else if($('#discount').attr('data-id') == 0){
			$('#total').text(parseInt($('#cart_total').text()) - (parseInt($('#cart_total').text()) * (parseInt($('#discount').text())) / 100) + parseInt($('#shipping_price').text()));
			$('#order_total').val(parseInt($('#cart_total').text()) - (parseInt($('#cart_total').text()) * (parseInt($('#discount').text())) / 100) + parseInt($('#shipping_price').text()));
		}else if($('#discount').attr('data-id') == 1){
			$('#total').text(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
			$('#order_total').val(parseInt($('#cart_total').text()) + parseInt($('#shipping_price').text()) - parseInt($('#discount').text()));
		}

		$('#area').empty();
		
		$.ajax({
            url : document.location.href.split('view-cart')[0].toString()+'get-ajax-areas/'+$(this).val(),
            method : 'Get',
            
            success:function(response){
        		json_data = $.parseJSON(response);
        		$('#area').append(json_data.DATA);
    		}
    	});
	});
	//Fetching Areas By City Id End

	//Price Range Slider Start
		$('.range_slider').slider({});
	//Price Range Slider End
});