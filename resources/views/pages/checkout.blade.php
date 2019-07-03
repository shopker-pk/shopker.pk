@include('layouts.header')
	<div class="main-content shop-page checkout-page">
		<div class="container">
			@include('layouts.messages')
			<div class="breadcrumbs">
			</div>
			<div class="checkout-form content-form">
				<form action="{{ route('add_order') }}" method="post">
                	{{ csrf_field() }}
					<h4 class="main-title">Shipping Address</h4>
					@if(!empty($customer_details[0]['id']))
					<div class="row">
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<span class="label-text">First Name <span>*</span></span>
							<input type="text" id="first_name" name="first_name" class="input-info" value="{{ $customer_details[0]['first_name'] }}">
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<span class="label-text">Last Name <span>*</span></span>
							<input type="text" id="last_name" name="last_name" class="input-info" value="{{ $customer_details[0]['last_name'] }}">	
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<span class="label-text">Email <span>*</span><input type="hidden" id="coupon_id" name="coupon_id" value=""></span>
							<input type="text" id="email" name="email" class="input-info" value="{{ $customer_details[0]['email'] }}">	
						</div>
					</div>
					<div class="row">
						<input type="hidden" id="shipping_charges" name="shipping_charges" value="0">
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<span class="label-text">Phone NO# <span>*</span></span>
							<input type="text" id="phone_no" name="phone_no" class="input-info" placeholder="03xx-xxxxxxx" value="{{ $customer_details[0]['phone_no'] }}">
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<span class="label-text">Country <span>*</span></span>
							<select id="country" name="country" class="input-info" data-id="0">
	                            <option>Select Country</option>
	                            @if(!empty($countries))
	                                @foreach($countries as $row)
	                            <option value="{{ $row['code'] }}">{{ $row['name'] }}</option>
	                                @endforeach
	                            @endif
	                        </select>	
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<span class="label-text">City <span>*</span></span>
							<select id="city_0" name="city" class="input-info" data-id="2">
	                            <option>Select Country First !!</option>
	                        </select>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
							<span class="label-text">Area <span>*</span></span>
							<select id="area" name="area" class="input-info">
	                            <option>Please City First !!</option>
	                        </select>	
						</div>
						<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
							<span class="label-text">Address <span>*</span><input type="hidden" id="total" name="total" value=""></span>
							<input type="text" id="address" name="address" class="input-info" value="{{ $customer_details[0]['address'] }}">
						</div>
					</div>
					@else
						<span class="existing-customer">Existing Customer?</span>
	                    <a href="{{ route('customer_sign_in') }}">Sign In HERE</a><br>
	                    <span class="existing-customer">New Customer?</span>
	                    <a href="{{ route('customer_registration') }}">Sign Up HERE</a>
					@endif
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-4 coupen-section">
							<div class="shipping-form">
								<h4 class="subtitle">Discount Codes</h4>
								<span class="label-text">Enter Your Coupon code:</span>
								<input type="text" id="coupon_code" class="input-info">
								<div class="group-button">
									<a href="javascript:void(0);" id="apply_coupon" class="button submit">Apply</a>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-2 col-md-4"></div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="payment-form">
								<div class="total-checkout">
									<span class="text">Subtotal </span><span class="price checkout_subtotal"> Rs.{{ $subtotal }}</span><br>
									<span class="text">Discount </span><span class="price checkout_discount" data-total-weight="{{ $total_weight }}" data-half-kg-0="{{ $shipping_prices[0]['half_kg_0'] }}" data-half-kg-1="{{ $shipping_prices[0]['half_kg_1'] }}" data-per-kg-0="{{ $shipping_prices[0]['per_kg_0'] }}" data-per-kg-1="{{ $shipping_prices[0]['per_kg_1'] }}" data-addi-kg-0="{{ $shipping_prices[0]['additional_per_kg_0'] }}" data-addi-kg-1="{{ $shipping_prices[0]['additional_per_kg_1'] }}" data-type=""> Rs.0</span><br>
									<span class="text">Shipping Fee </span><span class="price checkout_shipping_fee"> Rs.0</span><br>
									<span class="text">Grand Total </span><span class="price checkout_grandtotal"> Rs.{{ $subtotal }}</span>
								</div>
								<div class="group-button">
									<button class="button submit">Place Order Now</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
@include('layouts.footer')