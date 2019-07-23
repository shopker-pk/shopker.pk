@include('layouts.header')
	<div class="main-content shop-page checkout-page">
		<div class="container">
			@include('layouts.messages')
			<div class="breadcrumbs">
			</div>
			<div class="checkout-form content-form">
				<div class="register-form">
                    <h4 class="main-title">Select Payment Method</h4>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2">
                            <div class="panel panel-default">
                            	<div id="header"></div>
								<form method="post" action="https://sandbox.jazzcash.com.pk/CustomerPortal/transactionmanagement/merchantform">  
									{{ csrf_field() }}
									<div id="jazz_data" data-merchant-id="{{ $merchant_id = 'MC8083' }}" data-password="{{ $password = '7w394he9xz' }}" data-return-url="{{ $return_url = 'http://localhost/shopker.pk/update-jazz-order' }}" data-hask-key="{{ $hash_key = '4t425f0547' }}" data-amount="{{ $amount = Session::get('shipping_details')['total'].'00' }}" data-bill-reference="{{ $bill_reference = '00001' }}" data-description="{{ $description = '00001' }}" data-language="{{ $language = 'EN' }}" data-currency="{{ $currency = 'PKR' }}" data-date-time="{{ $date_time = date('YmdHis') }}" data-expiry-date-time="{{ $expiry_date_time = date('YmdHis', strtotime('+8 Days')) }}" data-ref-no="{{ $ref_no = 'TXN'.date('YmdHis') }}" data-type="{{ $type= '' }}" data-version="{{ $version = '1.1' }}" $data-sub-merchant-id="{{ $data_sub_merchant_id = '' }}" data-discounted-amount="{{ $discounted_amount = '' }}" data-discounted-bank="{{ $discounted_bank = '' }}" data-ppmpf-1="{{ $ppmpf_1 = '' }}" data-ppmpf-2="{{ $ppmpf_2 = '' }}" data-ppmpf-3="{{ $ppmpf_3 = '' }}" data-ppmpf-4="{{ $ppmpf_4 = '' }}" data-ppmpf-5="{{ $ppmpf_5 = '' }}" data-hash-array="{{ print_r($HashArray = [$amount,$bill_reference,$description,$discounted_amount,$discounted_bank,$language,$merchant_id,$password,$return_url,$currency,$date_time,$expiry_date_time,$ref_no,$type,$version,$ppmpf_1,$ppmpf_2,$ppmpf_3,$ppmpf_4,$ppmpf_5]) }}" data-sorted-array="{{ $sorted_array = $hash_key }}" data-loop="<?php for($i = 0; $i < count($HashArray); $i++){ if($HashArray[$i] != 'undefined' && $HashArray[$i] != null && $HashArray[$i] != ""){$sorted_array .='&'.$HashArray[$i];}}?>" data-secure-hash="{{ $Securehash = hash_hmac('sha256', $sorted_array, $hash_key) }}"></div>
									<input type="hidden" name="pp_Version" value="{{ $version }}"/>
								    <input type="hidden" name="pp_TxnType" value="{{ $type }}"/>
								    <input type="hidden" name="pp_Language" value="{{ $language }}"/>
								    <input type="hidden" name="pp_MerchantID" value="{{ $merchant_id }}"/>
								    <input type="hidden" name="pp_SubMerchantID" value="{{ $data_sub_merchant_id }}"/>
								    <input type="hidden" name="pp_Password" value="{{ $password }}"/>
								    <input type="hidden" name="pp_TxnRefNo" value="{{ $ref_no }}"/>
								    <input type="hidden" name="pp_Amount" value="{{ $amount }}"/>
								    <input type="hidden" name="pp_TxnCurrency" value="{{ $currency }}"/>
								    <input type="hidden" name="pp_TxnDateTime" value="{{ $date_time }}"/>
								    <input type="hidden" id="pp_BillReference" name="pp_BillReference" value="1"/>
								    <input type="hidden" id="pp_Description" name="pp_Description" value="1"/>
									<input type="hidden" id="pp_DiscountedAmount" name="pp_DiscountedAmount" value="{{ $discounted_amount }}">
									<input type="hidden" id="pp_DiscountBank" name="pp_DiscountBank" value="{{ $discounted_bank }}">
								    <input type="hidden" name="pp_TxnExpiryDateTime" value="{{ $expiry_date_time }}"/>
								    <input type="hidden" name="pp_ReturnURL" value="{{ $return_url }}"/>
								    <input type="hidden" name="pp_SecureHash" value="{{ $Securehash }}"/>
								    <input type="hidden" name="ppmpf_1" value="{{ $ppmpf_1 }}"/>
								    <input type="hidden" name="ppmpf_2" value="{{ $ppmpf_2 }}"/>
								    <input type="hidden" name="ppmpf_3" value="{{ $ppmpf_3 }}"/>
								    <input type="hidden" name="ppmpf_4" value="{{ $ppmpf_4 }}"/>
								    <input type="hidden" name="ppmpf_5" value="{{ $ppmpf_5 }}"/>
	                            	<button class="btn btn-white" style="width: 168px;" id="pay_with_jazz_cash">
							    		<div class="panel-body" style="text-align:center;"><img src="{{ asset('public/assets/images/jazzcash.png') }}" style="padding: 10px; font-size: 30px; height: 100px;"><br>Pay With Jazz</div>
						    		</button>
					    		</form>
						  	</div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2">
                            <div class="panel panel-default">
						    	<form action="{{ route('add_order') }}" method="post">
						    		{{ csrf_field() }}
						    		<input type="hidden" name="payment_method" value="2">
						    		<input type="hidden" name="payment_status" value="1">
						    		<button class="btn btn-white" style="width: 168px;">
						    			<div class="panel-body" style="text-align:center;"><img src="https://laz-img-cdn.alicdn.com/tfs/TB1utb_r8jTBKNjSZFwXXcG4XXa-80-80.png" style="padding: 10px; font-size: 30px;"><br>Cash On Delivery</div>
					    			</button>
						    	</form>
						  	</div>
                        </div>
                    </div> 
				</div>
			</div>
		</div>
	</div>
@include('layouts.footer')