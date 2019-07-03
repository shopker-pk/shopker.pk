<li class="box-minicart">
    <div class="minicart ">
        <div class="cart-block  box-has-content">
            <a href="{{ route('view_cart') }}" class="cart-icon"><i class="fa fa-shopping-basket" aria-hidden="true"></i><span class="count">@if(!empty(Session::get('cart'))) {{ count(Session::get('cart')) }} @else 0 @endif</span></a>
        </div>
        <div class="cart-inner">
            <h5 class="title">You have <span class="count-item">@if(!empty(Session::get('cart'))) {{ count(Session::get('cart')) }} @else 0 @endif</span> item(s) in your cart</h5>
            <ul class="list-item">
                @if(!empty(Session::get('cart')))
                    @foreach(Session::get('cart') as $row)
                <li class="product-item">
                    <a href="{{ route('product_details', $row['slug']) }}" class="thumb"><img src="{{ $row['image'] }}" alt="{{ $row['name'] }}" style="width:80px; height:80px;"></a>
                    <div class="info">
                        <a href="{{ route('product_details', $row['slug']) }}" class="product-name">{{ $row['name'] }}</a>
                        <div class="product-item-qty">
                            <span class="number price">
                            <span class="qty" data-sub_total="{{ $sub_total[] = $row['price'] * $row['quantity'] }}">{{ $row['quantity'] }}</span> x <span>Rs.{{ $row['price'] }}</span>
                            </span>
                        </div>
                    </div>
                </li>
                    @endforeach
                @endif
            </ul>
            <div class="subtotal">
                <span class="text">Total : </span>
                <span class="total-price">@if(!empty($sub_total)) Rs.{{ array_sum($sub_total) }} @else Rs.00.00 @endif</span>
            </div>
            <div class="group-button-checkout">
                <a href="{{ route('view_cart') }}">View cart</a>
                <a href="{{ route('checkout') }}">Checkout</a>
            </div>
        </div>
    </div>
</li>