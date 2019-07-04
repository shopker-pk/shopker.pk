$(document).ready(function(){
	//Add To Cart Start
		$(document).on('click', '#add_to_cart_btn', function(){
			$('#quantity_add_to_cart').val($('.detail_qty').val());
			$('#add_to_cart_form').submit();
		});
	//Add To Cart End

	//Buy Now Start
		$(document).on('click', '#buy_now_btn', function(){
			$('#quantity_buy_now').val($('.detail_qty').val());
			$('#buy_now_form').submit();
		});
	//Buy Now End

	//Update Product Quantity And product Amount And total Start
		$(document).on('click', '#view_cart_add_qty', function(){
			//first update qty in hidden input
			$('#view_cart_updated_qty_'+$(this).attr('data-product-id')).val($('#view_cart_qty_'+$(this).attr('data-product-id')).val());
			
			//update subtotal of this product
			$('#view_cart_product_subtotal_price_'+$(this).attr('data-product-id')).text('Rs.'+$('#view_cart_product_price_'+$(this).attr('data-product-id')).text().split('Rs.')[1] * $('#view_cart_updated_qty_'+$(this).attr('data-product-id')).val());
			
			//make subtotal of all products
			var sub_total = 0;
			$('.each_product_subtotal').each(function(){
				sub_total += +$(this).text().split('Rs.')[1];
			});
			
			//update subtotal of cart
			$('.view_cart_subtotal').text('Rs.'+sub_total);

			//update total weight of product
			var weight = 0;
			$('#view_cart_updated_weight_'+$(this).attr('data-product-id')).val($('#view_cart_weight_'+$(this).attr('data-product-id')).text() * $('#view_cart_updated_qty_'+$(this).attr('data-product-id')).val());
		});

		$(document).on('click', '#view_cart_minus_qty', function(){
			//first update qty in hidden input
			$('#view_cart_updated_qty_'+$(this).attr('data-product-id')).val($('#view_cart_qty_'+$(this).attr('data-product-id')).val());
			
			//update subtotal of this product
			$('#view_cart_product_subtotal_price_'+$(this).attr('data-product-id')).text('Rs.'+$('#view_cart_product_price_'+$(this).attr('data-product-id')).text().split('Rs.')[1] * $('#view_cart_updated_qty_'+$(this).attr('data-product-id')).val());
			
			//make subtotal of all products
			var sub_total = 0;
			$('.each_product_subtotal').each(function(){
				sub_total += +$(this).text().split('Rs.')[1];
			});
			
			//update subtotal of cart
			$('.view_cart_subtotal').text('Rs.'+sub_total);

			//update total weight of product
			var weight = 0;
			$('#view_cart_updated_weight_'+$(this).attr('data-product-id')).val($('#view_cart_weight_'+$(this).attr('data-product-id')).text() * $('#view_cart_updated_qty_'+$(this).attr('data-product-id')).val());
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
				$('.checkout_grandtotal').empty();
				$('.flash-message').empty();

				$.ajax({
		            url : document.location.href.split('check-out')[0].toString()+'apply-coupon/',
		            method : 'Get',
		            data : { coupon_code : $('#coupon_code').val() },

		            success:function(response){
		            	json_data = $.parseJSON(response);
		                
		                if(json_data.ERROR == 'TRUE'){
		                	$('.coupen-section').append(''
		                		+'<div class="flash-message">'
								    +'<div class="alert alert-danger alert-dismissible">'
								        +'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
								        +json_data.DATA
								    +'</div>'
								+'</div>'
		            		);

		            		if($('.checkout_discount').text().split('%')[0] >= 0){
								$('.checkout_grandtotal').text(parseInt($('.checkout_subtotal').text().split('Rs.')[1]) - (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) * (parseInt($('.checkout_discount').text().split('%')[0])) / 100) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]));
								$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
							}else if($('.checkout_discount').text().split('Rs.')[1] != 'undefined'){
								$('.checkout_grandtotal').text('Rs.' + (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]) - parseInt($('.checkout_discount').text().split('Rs.')[1])));
								$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
							}
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

			            		if($('.checkout_discount').text().split('%')[0] >= 0){
									$('.checkout_grandtotal').text(parseInt($('.checkout_subtotal').text().split('Rs.')[1]) - (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) * (parseInt($('.checkout_discount').text().split('%')[0])) / 100) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]));
									$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
								}else if($('.checkout_discount').text().split('Rs.')[1] != 'undefined'){
									$('.checkout_grandtotal').text('Rs.' + (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]) - parseInt($('.checkout_discount').text().split('Rs.')[1])));
									$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
								}
			            	}else{
			            		if($('.checkout_subtotal').text().split('Rs.')[1] >= json_data.DATA.min_order_amount && $('.checkout_subtotal').text().split('Rs.')[1] <= json_data.DATA.max_order_amount || $('.checkout_subtotal').text().split('Rs.')[1] <= json_data.DATA.min_order_amount && $('.checkout_subtotal').text().split('Rs.')[1] <= json_data.DATA.max_order_amount){
			            			$('.coupen-section').append(''
				                		+'<div class="flash-message">'
										    +'<div class="alert alert-success alert-dismissible">'
										        +'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
										        +'Coupon applied successfully.'
										    +'</div>'
										+'</div>'
				            		);

									if(json_data.DATA.discount_type == 1){
				                		$('.checkout_discount').text('Rs.'+json_data.DATA.discount_offer);
				                		$('.checkout_grandtotal').text('Rs.' + (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]) - parseInt($('.checkout_discount').text().split('Rs.')[1])));
				                		$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
				                		$('#coupon_id').val(json_data.DATA.coupon_id);
				                	}else if(json_data.DATA.discount_type == 0){
				                		$('.checkout_discount').text(json_data.DATA.discount_offer+'%');
					                	$('.checkout_grandtotal').text(parseInt($('.checkout_subtotal').text().split('Rs.')[1]) - (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) * (parseInt($('.checkout_discount').text())) / 100) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]));
				                		$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
				                		$('#coupon_id').val(json_data.DATA.coupon_id);
				                	}
			            		}else if($('.checkout_subtotal').text().split('Rs.')[1] >= json_data.DATA.min_order_amount && $('.checkout_subtotal').text().split('Rs.')[1] > json_data.DATA.max_order_amount){
			            			$('.coupen-section').append(''
				                		+'<div class="flash-message">'
										    +'<div class="alert alert-danger alert-dismissible">'
										        +'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
										        +'This coupon is valid for max '+json_data.DATA.max_order_amount+' order amount.'
										    +'</div>'
										+'</div>'
				            		);

				            		$('.checkout_grandtotal').text('Rs.' + (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]) - parseInt($('.checkout_discount').text().split('Rs.')[1])));
			            			$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
			            		}else if($('.checkout_subtotal').text().split('Rs.')[1] == '0.00' || $('.checkout_subtotal').text().split('Rs.')[1] < json_data.DATA.min_order_amount && $('.checkout_subtotal').text().split('Rs.')[1] != json_data.DATA.max_order_amount){
			            			$('.coupen-section').append(''
				                		+'<div class="flash-message">'
										    +'<div class="alert alert-danger alert-dismissible">'
										        +'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
										        +'This coupon is valid for min '+json_data.DATA.min_order_amount+' order amount.'
										    +'</div>'
										+'</div>'
				            		);

				            		if($('.checkout_discount').text().split('%')[0] >= 0){
										$('.checkout_grandtotal').text(parseInt($('.checkout_subtotal').text().split('Rs.')[1]) - (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) * (parseInt($('.checkout_discount').text().split('%')[0])) / 100) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]));
										$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
									}else if($('.checkout_discount').text().split('Rs.')[1] != 'undefined'){
										$('.checkout_grandtotal').text('Rs.' + (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]) - parseInt($('.checkout_discount').text().split('Rs.')[1])));
										$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
									}
			            		}else if($('.checkout_subtotal').text().split('Rs.')[1] < json_data.DATA.min_order_amount && $('.checkout_subtotal').text().split('Rs.')[1] < json_data.DATA.max_order_amount || $('.checkout_subtotal').text().split('Rs.')[1] > json_data.DATA.min_order_amount && $('.checkout_subtotal').text().split('Rs.')[1] > json_data.DATA.max_order_amount){
			            			$('.coupen-section').append(''
				                		+'<div class="flash-message">'
										    +'<div class="alert alert-danger alert-dismissible">'
										        +'<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
										        +'This coupon is valid for min '+json_data.DATA.min_order_amount+' & max '+json_data.DATA.max_order_amount+' order amount.'
										    +'</div>'
										+'</div>'
				            		);

				            		if($('.checkout_discount').text().split('%')[0] >= 0){
										$('.checkout_grandtotal').text(parseInt($('.checkout_subtotal').text().split('Rs.')[1]) - (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) * (parseInt($('.checkout_discount').text().split('%')[0])) / 100) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]));
										$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
									}else if($('.checkout_discount').text().split('Rs.')[1] != 'undefined'){
										$('.checkout_grandtotal').text('Rs.' + (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]) - parseInt($('.checkout_discount').text().split('Rs.')[1])));
										$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
									}
			            		}
							}
		                }
		            }
		        });
	        }
		});
	//Apply Coupon ON Checkout End Here

	//Getting Cities By Country Id Start
		$(document).on('change', '#country', function(){
			var country_id = $(this).attr('data-id');
			
			$('#city_'+country_id).empty();

			$.ajax({
	            url : document.location.href.split('shopker.pk/')[0].toString()+'shopker.pk/get-ajax-cities/'+$(this).val(),
	            method : 'GET',
	            
	            success:function(response){
	                json_data = $.parseJSON(response);
	        		$('#city_'+country_id).append(json_data.DATA);
	            }
	        });
		});
	//Getting Cities By Country Id End

	//Getting Areas By City Id & Update Shipping Price Start
		$(document).on('change', '#city_0', function(){
			if($(this).attr('data-id') == 2){
				$('#area').empty();

				$.ajax({
		            url : document.location.href.split('shopker.pk/')[0].toString()+'shopker.pk/get-ajax-areas/'+$(this).val(),
		            method : 'GET',

		            success:function(response){
		                json_data = $.parseJSON(response);
		                $('#area').append(json_data.DATA);
		            }
		        });

				if($('#city_0 option:selected').text() == 'LAHORE'){
					if($('.checkout_discount').attr('data-total-weight') <= '0.5'){
						$('.checkout_shipping_fee').text('Rs.'+($('.checkout_discount').attr('data-half-kg-0')));
						$('#shipping_charges').val($('.checkout_discount').attr('data-half-kg-0'));
					}else if($('.checkout_discount').attr('data-total-weight') > '0.5' && $('.checkout_discount').attr('data-total-weight') <= '1'){
						$('.checkout_shipping_fee').text('Rs.'+($('.checkout_discount').attr('data-per-kg-0')));
						$('#shipping_charges').val($('.checkout_discount').attr('data-per-kg-0'));
					}else if($('.checkout_discount').attr('data-total-weight') > '1'){
						var shipping_amount = 0;
						for(var i = 0; i < $('.checkout_discount').attr('data-total-weight'); i++){
							shipping_amount = +$('.checkout_discount').attr('data-per-kg-0') + $('.checkout_discount').attr('data-addi-kg-0') * i;
						}

						$('#shipping_charges').val(shipping_amount);
						$('.checkout_shipping_fee').text('Rs.' + $('#shipping_charges').val());
						
						if($('.checkout_discount').text().split('%')[0] >= 0){
							$('.checkout_grandtotal').text(parseInt($('.checkout_subtotal').text().split('Rs.')[1]) - (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) * (parseInt($('.checkout_discount').text())) / 100) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]));
							$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
						}else if($('.checkout_discount').text().split('Rs.')[1] != 'undefined'){
							$('.checkout_grandtotal').text('Rs.' + (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]) - parseInt($('.checkout_discount').text().split('Rs.')[1])));
							$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
						}
					}
				}else if($('#city_0 option:selected').text() != 'LAHORE'){
					if($('.checkout_discount').attr('data-total-weight') <= '0.5'){
						$('.checkout_shipping_fee').text('Rs.'+($('.checkout_discount').attr('data-half-kg-1')));
						$('#shipping_charges').val($('.checkout_discount').attr('data-half-kg-1'));
					}else if($('.checkout_discount').attr('data-total-weight') > '0.5' && $('.checkout_discount').attr('data-total-weight') <= '1'){
						$('.checkout_shipping_fee').text('Rs.'+($('.checkout_discount').attr('data-per-kg-1')));
						$('#shipping_charges').val($('.checkout_discount').attr('data-per-kg-1'));
					}else if($('.checkout_discount').attr('data-total-weight') > '1'){
						var shipping_amount = 0;
					  	for(var i = 0; i < $('.checkout_discount').attr('data-total-weight'); i++){
							shipping_amount = +$('.checkout_discount').attr('data-per-kg-1') + $('.checkout_discount').attr('data-addi-kg-1') * i;
						}

						$('#shipping_charges').val(shipping_amount);
						$('.checkout_shipping_fee').text('Rs.' + $('#shipping_charges').val());
						
						if($('.checkout_discount').text().split('%')[0] >= 0){
							$('.checkout_grandtotal').text(parseInt($('.checkout_subtotal').text().split('Rs.')[1]) - (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) * (parseInt($('.checkout_discount').text().split('%')[0])) / 100) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]));
							$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
						}else if($('.checkout_discount').text().split('Rs.')[1] != 'undefined'){
							$('.checkout_grandtotal').text('Rs.' + (parseInt($('.checkout_subtotal').text().split('Rs.')[1]) + parseInt($('.checkout_shipping_fee').text().split('Rs.')[1]) - parseInt($('.checkout_discount').text().split('Rs.')[1])));
							$('#total').val($('.checkout_grandtotal').text().split('Rs.')[1]);
						}
					}
				}
			}
		});
	//Getting Areas By City Id & Update Shipping Price End

	//Navigate To Search Page Clicking Variant Start
		$(document).on('click', '.variant', function(){
			if(window.location.href.split('products')[0] == window.location.href.split('products')[0]){
				var url = window.location.replace(window.location.href.split('products')[0].toString()+'products/filter/variations/'+$(this).val());
			}
		});

		$(document).on('click', '#search_by_price', function(){
			var url = window.location.replace(window.location.href.split('products')[0].toString()+'products/filter/variations/'+$('#from_price').val()+','+$('#to_price').val());
		});
	//Navigate To Search Page Clicking Variant End
});