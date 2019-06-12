<h5>Hello, {{ $customer_details[0]['first_name'].' '.$customer_details[0]['last_name'] }}</h5>
<img src="{{ asset('public/assets/images/verifiedaccount.png') }}" width="108" height="21" class="mb-4"> 
<a href="{{ route('dashboard') }}" style="text-decoration: none;"><p style="font-size: 16px; color: black;"><b>Manage My Account</b></p></a>
<a href="{{ route('manage_vouchers') }}" style="text-decoration: none;"><p style="font-size: 16px; color: black;"><b>My Vouchers</b></p></a>
<a href="{{ route('manage_orders') }}" style="text-decoration: none;"><p style="font-size: 16px; color: black;"><b>My Orders</b></p></a>
<a href="{{ route('manage_products_reviews') }}" style="text-decoration: none;"><p style="font-size: 16px; color: black;"><b>My Products Reviews</b></p></a>
<a href="{{ route('manage_orders_reviews') }}" style="text-decoration: none;"><p style="font-size: 16px; color: black;"><b>My Orders Reviews</b></p></a>
<a href="{{ route('manage_wishlist') }}" style="text-decoration: none;"><p style="font-size: 16px; color: black;"><b>My Wishlist</b></p></a>