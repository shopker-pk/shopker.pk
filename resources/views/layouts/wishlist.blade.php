<li class="box-minicart">
    <div class="minicart wishlist-icon">
        <div class="cart-block  box-has-content">
            <a href="#" class="cart-icon"><i class="fa fa-heart-o" aria-hidden="true"></i><span class="count">@if(!empty(Session::get('wishlists'))) {{ count(Session::get('wishlists')) }} @else 0 @endif</span></a>
        </div>
        <div class="cart-inner">
            <h5 class="title">You have <span class="count-item">@if(!empty(Session::get('wishlists'))) {{ count(Session::get('wishlists')) }} @else 0 @endif</span> item(s) in your wishlist</h5>
            <ul class="list-item">
                @if(!empty(Session::get('wishlists')))
                    @foreach(Session::get('wishlists') as $row)
                <li class="product-item">
                    <a href="{{ route('product_details', $row['slug']) }}" class="thumb"><img src="{{ $row['image'] }}" alt="{{ $row['name'] }}" style="width:80px; height:80px;"></a>
                    <div class="info">
                        <a href="{{ route('product_details', $row['slug']) }}" class="product-name">{{ $row['name'] }}</a>
                    </div>
                </li>
                    @endforeach
                @else
                No Product Found !!
                @endif
            </ul>
            <div class="">
                <a href="{{ route('manage_wishlist') }}" class="btn btn-success view-more-button">View Wishlist</a>
            </div>
        </div>
    </div>
</li>