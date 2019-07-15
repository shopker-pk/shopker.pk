@include('layouts.header')
    <div class="main-content shop-page shoppingcart-content">
        <div class="container">
            @include('layouts.messages')
            <div class="breadcrumbs">
            </div>
            <div class="row content-form">
                <div class="col-xs-12 col-sm-12 col-md-8 col-lg-9 content-offset">
                    <div class="cart-content">
                        <table class="shopping-cart-content">
                            <tr class="title">
                                <td class="product-thumb"></td>
                                <td class="product-name">Product Name</td>
                                <td class="product-weight">Weight</td>
                                <td class="price">Unit Price</td>
                                <td class="quantity-item">Qty</td>  
                                <td class="total">SubTotal</td>
                                <td class="delete-item"></td>
                            </tr>
                            @if(!empty(Session::get('cart')))
                                @foreach(Session::get('cart') as $row)
                            <tr class="each-item">
                                <td class="product-thumb"><a href="{{ route('product_details', $row['slug']) }}"><img src="{{ $row['image'] }}" alt="{{ $row['name'] }}" style="width:214px; height:150px"></a></td>
                                <td class="product-name" data-title="Product Name"><a href="{{ route('product_details', $row['slug']) }}" class="product-name">{{ $row['name'] }}</a></td>
                                <td class="product-weight" id="view_cart_weight_{{ $row['id'] }}" data-title="Product Weight">{{ $row['weight'] }}</td>
                                <td class="price" data-title="Unit Price" data-sub_total="{{ $sub_total[] = $row['price'] * $row['quantity'] }}" id="view_cart_product_price_{{ $row['id'] }}">Rs.{{ $row['price'] }}</td>
                                <td class="quantity-item" data-title="Qty">
                                    <div class="quantity">
                                        <div class="group-quantity-button">
                                            <a class="minus" id="view_cart_minus_qty" data-product-id="{{ $row['id'] }}" href="javascript:void(0);"><i class="fa fa-minus" aria-hidden="true"></i></a>
                                            <input class="input-text qty text" type="text" size="4" title="Qty" id="view_cart_qty_{{ $row['id'] }}" value="{{ $row['quantity'] }}" name="quantity">
                                            <a class="plus" id="view_cart_add_qty" data-product-id="{{ $row['id'] }}" href="javascript:void(0);"><i class="fa fa-plus" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </td>
                                <td class="total each_product_subtotal" data-title="SubTotal" id="view_cart_product_subtotal_price_{{ $row['id'] }}">Rs.{{ $row['price'] * $row['quantity'] }}</td>
                                <td class="delete-item" data-title="Remove"><a href="{{ route('remove_product', $row['id']) }}"><i class="fa fa-times" aria-hidden="true"></i></a></td>
                            </tr>
                                @endforeach
                            @else
                            <tr>
                                <td>No Product Found In Cart !!</td>
                            </tr>
                            @endif
                            <tr class="checkout-cart group-button">
                                <td colspan="6" class="left">
                                    <div class="left">
                                        <a href="{{ route('home') }}" class="continue-shopping submit">Continue Shopping</a>
                                    </div>
                                    <form action="{{ route('update_cart') }}" method="post">
                                        {{ csrf_field() }}
                                        <div class="right">
                                            @if(!empty(Session::get('cart')))
                                                @foreach(Session::get('cart') as $row)
                                            <input type="hidden" name="product_id[]" value="{{ $row['id'] }}">
                                            <input type="hidden" id="view_cart_updated_qty_{{ $row['id'] }}" name="product_quantity[{{ $row['id'] }}][]" value="{{ $row['quantity'] }}">
                                            <input type="hidden" name="product_price[{{ $row['id'] }}][]" value="{{ $row['price'] }}">
                                            <input type="hidden" name="product_type[{{ $row['id'] }}][]" value="{{ $row['type'] }}">
                                            <input type="hidden" id="view_cart_updated_weight_{{ $row['id'] }}" name="product_weight_[{{ $row['id'] }}][]" value="{{ $row['weight'] * $row['quantity'] }}">
                                                @endforeach
                                            @endif
                                            <a href="{{ route('empty_cart') }}" class="submit update">Clear Shopping Cart</a>
                                            <button class="submit update">Update Shopping Cart</button>
                                        </div>
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 ">
                    <div class="proceed-checkout">
                        <h4 class="main-title">Proceed to Checkout</h4>
                        <div class="content">
                            <h5 class="title">cart Total</h5>
                            <div class="info-checkout">
                                <span class="text">Cart subtotal: </span><span class="item view_cart_subtotal">@if(!empty($sub_total)) Rs.{{ array_sum($sub_total) }} @else Rs.00.00 @endif</span>
                            </div>
                            <div class="info-checkout shipping">
                                <span class="text">Shipping:</span><span class="item">Charge On Checkout</span>
                            </div>
                            <div class="total-checkout">
                                <span class="text">Grand Total </span><span class="price view_cart_subtotal">@if(!empty($sub_total)) Rs.{{ array_sum($sub_total) }} @else Rs.00.00 @endif</span>
                            </div>
                            <div class="group-button">
                                <a href="{{ route('checkout') }}" class="button submit">Checkout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@include('layouts.footer')