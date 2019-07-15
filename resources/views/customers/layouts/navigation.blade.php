<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3 sidebar">
    <h4 class="main-title">Hello {{ $customer_details[0]['first_name'].' '.$customer_details[0]['last_name'] }}</h4>
    <p class="verified-badge"><i class="fa fa-check"></i> verified customer</p>
    <div class="widget widget-categories">
        <h5 class="widgettitle"></h5>
        <ul class="list-categories my-account">
            <li><a href="{{ route('dashboard') }}">Manage My Account</a></li>
            <li><a href="{{ route('manage_vouchers') }}">My Vouchers</a></li>
            <li><a href="{{ route('manage_orders') }}">My Orders</a></li>
            <li><a href="{{ route('manage_products_reviews') }}">My Product Reviews</a></li>
            <li><a href="{{ route('manage_orders_reviews') }}">My Order Reviews</a></li>
            <li><a href="{{ route('manage_wishlist') }}">My Wishlist</a></li>
        </ul>
    </div>
</div>