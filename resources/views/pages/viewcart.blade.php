<!DOCTYPE html>
<html lang="en">

<head>
<title>{{ $page_title }}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="OneTech shop project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $meta_description }}" />
    <meta name="keywords" content="{{ $meta_keywords }}" /> 
    <link rel="icon" type="icon/gif" href="{{ $site_settings['favicon_image'] }}" alt="{{ $site_settings['site_title'] }}">
    @include('layouts.style')

    <style type="text/css">
        .cat_menu_container ul {
            display: none;
        }
        
        .cat_menu_container:hover ul {
            display: block;
        }
        
        select.form-control:not([size]):not([multiple]) {
            height: 35px;
        }
        /* Cart page Css start */
        
        .cart-page {
            padding-top: 20px;
            padding-bottom: 20px
        }
        
        .cart-page .block-title {
            border-bottom: 1px solid #ddd
        }
        
        .cart-page .block-title>h1 {
            border-bottom: 1px solid #80bd01;
            bottom: -1px;
            padding-bottom: 5px;
            position: relative;
            text-transform: uppercase;
            display: inline-block;
            margin-bottom: 0!important;
            font-size: 167%
        }
        
        .cart-page .product-image>img {
            border: 1px solid #f5f5f5
        }
        
        .cart-page .a-center .cart-price .price,
        .cart-page .product-name>a,
        .cart-page h2 {
            font-size: 100%;
            color: #2a2a2a
        }
        
        .cart-page h3 {
            font-size: 100%;
            text-transform: uppercase;
            margin-bottom: 5px
        }
        
        .cart-page .vendor-name {
            font-size: 110%;
            color: #9a9a9a;
            margin-bottom: 10px;
            text-transform: capitalize
        }
        
        .cart-table {
            width: 100%;
            margin-top: 15px
        }
        
        .cart-quantity-box a {
            border: 1px solid #d7d7d7;
            color: #b7b7b7!important;
            height: 32px;
            line-height: 32px;
            width: 30px;
            text-align: center
        }
        
        .cart-quantity-box .cart-item-decreament {
            border-right: 0 solid #ddd;
            float: left;
            padding: 0
        }
        
        .cart-quantity-box a.cart-item-increment {
            border-left: 0 solid #ddd;
            float: left
        }
        
        #shopping-cart-table .a-center .input-text {
            text-align: center;
            line-height: 29px;
            height: 32px!important;
            padding: 0;
            background: #fff;
            color: #2a2a2a;
            font-size: 110%;
            border: 1px solid #d7d7d7;
            width: 64px;
            float: left
        }
        
        #shopping-cart-table .btn-remove.btn-remove2 {
            font-size: 110%;
            color: #80bd01
        }
        
        .coupen-section {
            margin-top: 20px
        }
        
        .cart-page .btn-coupon.apply-coupon {
            padding: 8px 15px;
            background-color: #eaeaea;
            width: 100%;
            text-transform: uppercase;
            color: #474747;
            border: 0
        }
        
        #shopping-cart-totals-table .shipping td,
        #shopping-cart-totals-table .subtotal td {
            border-bottom: 1px solid #DDD;
            padding-bottom: 5px
        }
        
        .discount-form input {
            width: 100%
        }
        
        .cart-page .totals td {
            overflow: hidden;
            text-align: left;
            padding-right: 10px;
            width: 25%
        }
        
        .cart-page .totals td:first-child {
            width: 75%!important
        }
        
        #shopping-cart-totals-table {
            width: 100%;
            margin-bottom: 10px
        }
        
        #shopping-cart-totals-table .a-right {
            text-transform: uppercase;
            font-weight: 600
        }
        
        #shopping-cart-totals-table td:nth-child(2n) {
            text-align: right!important
        }
        
        #shopping-cart-totals-table .shipping td {
            padding-top: 5px
        }
        
        #shopping-cart-totals-table .discount td {
            padding-top: 5px;
            padding-bottom: 5px
        }
        
        #shopping-cart-totals-table .grandtotal td {
            border-top: 1px solid #DDD;
            padding-top: 5px
        }
        
        .cart-page .btn-continue,
        .cart-page .btn-proceed-checkout {
            padding: 15px 5px!important;
            text-transform: uppercase;
            width: 100%;
            text-align: center;
            display: inline-block
        }
        
        .cart-page .btn-continue {
            background: #eaeaea;
            color: #494949
        }
        
        .cart-page .data-table tr td {
            padding: 10px;
            vertical-align: middle;
            display: table-cell;
            width: auto
        }
        
        .cart-page #shopping-cart-table thead th {
            padding: 0
        }
        
        .slider-address.owl-theme .owl-nav .owl-next {
            top: 43%;
        }
        
        .slider-address.owl-theme .owl-nav .owl-prev {
            top: 43%;
            position: absolute;
        }
        
        .img-seller-logo {
            width: 150px;
            height: 110px;
        }
        
        .img-seller-banner {
            width: 840px;
            height: 288px;
        }
        /* Cart page css end */
        
        .heading-border-style h1,
        .heading-border-style.login-screen h2 {
            border-bottom: 1px solid #80bd01;
            display: inline-block;
            margin-bottom: -1px!important;
            padding-bottom: 7px;
            font-size: 133%!important;
            text-transform: uppercase!important;
            font-weight: 600;
        }
        
        .heading-border-style {
            border-bottom: 1px solid #ddd;
            margin-bottom: 15px;
            margin-top: 0px;
        }
        
        .login-page input[type="text"],
        input[type="password"] {
            width: 260px;
        }

        a.user-login-btn,
        span.existing-customer {
            font-weight: 600;
            font-size: 15px;
            text-transform: uppercase
        }

        span.existing-customer {
            color: #8c8c8c
        }   
    </style>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.pro_qty').prop('readonly', true);

            $('.plus-btn').click(function(){
                if(parseInt($('.qty_input_'+$(this).attr('data-id')).val()) + 1 > 10){
                    alert('Maximum Product limit is 10');
                }else{
                    $('.qty_input_'+$(this).attr('data-id')).val(parseInt($('.qty_input_'+$(this).attr('data-id')).val()) + 1);
                }
            });

            $('.minus-btn').click(function(){
                $('.qty_input_'+$(this).attr('data-id')).val(parseInt($('.qty_input_'+$(this).attr('data-id')).val()) - 1);
                if($('.qty_input_'+$(this).attr('data-id')).val() == 0){
                    $('.qty_input_'+$(this).attr('data-id')).val(1);
                }
            });
        });
    </script>
</head>

<body>
    @include('layouts.header') 
    @include('layouts.navigation')
    @include('layouts.messages')

    <div class="cart-page container">
        <div class="col-lg-12 col-md-12">
            <div class="heading-border-style">
                <div style="font-size: 22px; color: white;">
                    <span style=" padding: 3px; background-image: linear-gradient(to left,green,black);">Shipping</span><span style="padding: 3px; background-image: linear-gradient(to right,red,black);"> Details</span>
                </div>
            </div>
            <div class="clearfix"></div>
            <form action="{{ route('check_out') }}" method="post">
                {{ csrf_field() }}
                <div id="checkout-step-billing" class="step a-item" style="display: block;">
                    @if(!empty($customer_details[0]['id']))
                    <fieldset>
                        <ul class="form-list">
                            <li id="billing-new-address-form">
                                <fieldset class="">
                                    <ul>
                                        <div class="row">
                                            <div class="col-md-4 col-sm-3 ">
                                                <div class="form-group field-dynamicmodel-name required ">
                                                    <label class="required">
                                                        <p class="colorclass">First Name *</p>
                                                    </label>
                                                    <div class="input-box">
                                                        <input type="text" class="form-control" id="first_name" name="first_name" value="{{ $customer_details[0]['first_name'] }}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-3 ">
                                                <div class="form-group field-dynamicmodel-name required ">
                                                    <label class="required">
                                                        <p class="colorclass">Last Name *</p>
                                                    </label>
                                                    <div class="input-box">
                                                        <input type="text" class="form-control" id="last_name" name="last_name" value="{{ $customer_details[0]['last_name'] }}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-3">
                                                <div class="form-group field-dynamicmodel-email required">
                                                    <label class="required">
                                                        <p class="colorclass">Email *</p>
                                                    </label>
                                                    <div class="input-box">
                                                        <input type="text" class="form-control" id="email" name="email" value="{{ $customer_details[0]['email'] }}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-3">
                                                <div class="form-group field-dynamicmodel-phone required">
                                                    <label class="required">
                                                        <p class="colorclass">Phone *</p>
                                                    </label>
                                                    <div class="input-box">
                                                        <input type="text" class="form-control" placeholder="03xx-xxxxxxx" id="phone_no" name="phone_no" value="{{ $customer_details[0]['phone_no'] }}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-3">
                                                <div class="form-group field-dynamicmodel-city required">
                                                    <label class="required">
                                                        <p class="colorclass">Country *</p>
                                                    </label>
                                                    <div class="input-box">
                                                        <select class="form-control" id="country" name="country" data-id="3" required>
                                                            @if(!empty($countries))
                                                                <option>Select Country</option>
                                                                @foreach($countries as $row)
                                                            <option value="{{ $row['code'] }}">{{ $row['name'] }}</option>
                                                                @endforeach
                                                            @endif
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-3">
                                                <div class="form-group field-dynamicmodel-city required">
                                                    <label class="required">
                                                        <p class="colorclass">City *</p>
                                                    </label>
                                                    <div class="input-box">
                                                        <select class="form-control" id="city_3" name="city" required>
                                                            <option>Select Country First !!</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-3">
                                                <div class="form-group field-dynamicmodel-area required">
                                                    <label class="required">
                                                        <p class="colorclass">Area *</p>
                                                    </label>
                                                    <div class="input-box">
                                                        <select class="form-control" id="area" name="area" required>
                                                            <option>Please City First !!</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8 col-sm-6">
                                                <div class="form-group field-dynamicmodel-address required">
                                                    <label class="required">
                                                        <p class="colorclass">Address *</p>
                                                    </label>
                                                    <div class="input-box">
                                                        <input type="text" class="form-control" id="address" name="address" value="{{ $customer_details[0]['address'] }}">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ul>
                                </fieldset>
                            </li>
                        </ul>
                    </fieldset>
                    @else
                    <span class="existing-customer">Existing Customer?</span>
                    <a href="{{ route('customer_sign_in') }}">LOGIN HERE</a>
                    @endif
                </div>
            </div>
            <div class="col-lg-12 col-md-12">
                <div class="heading-border-style">
                    <div style="font-size: 22px; color: white; margin-top: 40px;">
                        <span style=" padding: 3px; background-image: linear-gradient(to left,green,black);">SHOPPING</span><span style="padding: 3px; background-image: linear-gradient(to right,red,black);"> CART</span>
                    </div>
                </div>
                <div class="clearfix"></div>
                <table id="shopping-cart-table" class="data-table cart-table">
                    <thead>
                        <tr class="">
                            <th class="hidden-mobile">&nbsp;</th>
                            <th><span class="nobr"></span></th>
                            <th class="hidden-mobile hidden"></th>
                            <th class="a-center quantity-column" style="font-weight: normal;">
                                <p class="colorclass">Quantity</p>
                            </th>
                            <th class="a-center" style="font-weight: normal;"><span><p class="colorclass">Unit Price</p></span></th>
                            <th class="a-center" style="font-weight: normal;">
                                <p class="colorclass">Total Price</p>
                            </th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr class="first last">
                            <td colspan="50" class="a-righ last"></td>
                        </tr>
                    </tfoot>
                    <tbody>
                        @if(!empty(Session::get('cart')))
                            @foreach(Session::get('cart') as $row)
                        <tr class="first last odd">
                            <td class="a-cente hidden-mobile" style="width:120px !important;">
                                <a href="{{ route('product_details', $row['slug']) }}" class="product-image">
                                    <img class="preloader lazy" src="{{ $row['image'] }}" height="100" width="100" alt="{{ $row['name'] }}">
                                </a>
                            </td>
                            <td>
                                <h5 class="product-name">
                                    <a href="{{ route('product_details', $row['slug']) }}" style="text-decoration: none;"><p style="color: black;font-size: 16px;">{{ $row['name'] }}</p></a>
                                </h5>
                                <h3 class="vendor-name" style="font-size: 14px;margin-top: -4px;">
                                    @if($row['store_slug'] != '#')
                                        <p>Seller: <a href="{{ route('get_stores', $row['store_slug']) }}" style="text-decoration: none;">{{ $row['store_name'] }}</a></p>
                                    @else
                                    <p>Seller: Sold BY Shopker</p>
                                    @endif
                                </h3>
                                <p style="font-size: 12px;">Size : L</p>
                                <a href="{{ route('remove_product', $row['id']) }}" title="Remove item" class="btn-remove btn-remove2">
                                    <i class="fa fa-trash"></i> Remove item 
                                </a>
                            </td>
                            <td class="a-center">
                                <div class="cart-quantity-box" style="margin-left:-10px;">
                                    <div class="input-group mb-3" style="display: flex;">
                                        <div class="input-group-prepend">
                                            <div class="btn btn-success btn-sm minus-btn" id="minus-btn" data-id="{{ $row['id'] }}"><i class="fa fa-minus"></i></div>
                                        </div>
                                        <input type="hidden" name="products[]" value="{{ $row['id'] }}">
                                        <input type="hidden" name="price[]" value="{{ $row['price'] }}">
                                        <input type="hidden" name="type[]" value="{{ $row['type'] }}">
                                        <input type="hidden" name="seller_id[]" value="{{ $row['seller_id'] }}">
                                        <input type="hidden" id="weight_{{ $row['id'] }}" data-id="{{ $row['id'] }}" class="weight" value="{{ $row['weight'] }}">
                                        <input type="number" id="quantity_{{ $row['id'] }}" name="quantity[]" class="product_quantity_{{ $row['id'] }} qty_input_{{ $row['id'] }} pro_qty" style="width: 100px; text-align: center;" value="{{ $row['quantity'] }}" min="1" data-id="{{ $row['id'] }}">
                                        <div class="input-group-prepend">
                                            <div class="btn btn-success btn-sm plus-btn" id="plus-btn" data-id="{{ $row['id'] }}"><i class="fa fa-plus"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="a-center">
                                <span class="cart-price" style="margin-left:-8px;">
                                    <span class="price"><p class="colorclass" id="product_price_{{ $row['id'] }}">{{ $row['price'] }}</p></span>
                                </span>
                            </td>
                            <td class="a-center">
                                <span class="cart-price" style="margin-left:-8px;">
                                    <span class="price product_price"><p class="colorclass" id="product_total_price_{{ $row['id'] }}">{{ $row['price'] * $row['quantity'] }}</p></span>
                                </span>
                            </td>
                        </tr>
                            <input type="hidden" value="{{ $sub_total[] = $row['price'] * $row['quantity'] }}">
                            @endforeach
                        @endif
                    </tbody>
                </table>
                <div class="row coupen-section">
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div class="discount">
                            <div class="discount-form">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <div class="input-box">
                                            <input type="text" class="form-control" id="coupon_code" placeholder="Enter Coupon Code">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pL0">
                                        <div class="buttons-set">
                                            <div class="loginbtn" align="center" id="apply_coupon">
                                                <input type="button" style="font-size:15px;margin-top: 1px;" value="Apply Coupon">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-3 col-xs-12 offset-lg-3">
                        <div class="totals">
                            <table id="shopping-cart-totals-table" cellpadding="0" cellspacing="0" border="0">
                                <tbody>
                                    <tr class="subtotal">
                                        <td class="a-right" colspan="2">
                                            <p class="colorclass">SUBTOTAL</p>
                                        </td>
                                        <td class="a-right">
                                            <span class="price">
                                                <p class="colorclass" id="cart_total">@if(!empty($sub_total)) {{ array_sum($sub_total) }} @else 00.00 @endif</p>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr class="shipping">
                                        <td class="a-right" colspan="2">
                                            <p class="colorclass">DISCOUNT</p>
                                        </td>
                                        <td class="a-right">
                                            <span class="price">
                                                <p class="colorclass" id="discount" data-id="">0</p>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr class="shipping">
                                        <td class="a-right" colspan="2">
                                            <p class="colorclass">SHIPPING</p>
                                        </td>
                                        <td class="a-right">
                                            <span class="price">
                                                <p class="colorclass" id="shipping_price">0</p>
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr class="grandtotal">
                                        <td class="a-right" colspan="2">
                                            <strong><p class="colorclass">Grand Total</p></strong>
                                        </td>
                                        <td class="a-right">
                                            <strong>
                                                <p class="colorclass" id="total">@if(!empty($sub_total)) {{ array_sum($sub_total) }} @else 00.00 @endif</p>
                                            </strong>
                                            @if(!empty($sub_total))
                                            <input type="hidden" id="order_sub_total" name="sub_total" value="{{ array_sum($sub_total) }}">
                                            <input type="hidden" id="order_total" name="total" value="{{ array_sum($sub_total) }}">
                                            <input type="hidden" id="delivery_charges" name="delivery_charges" value="0">
                                            @endif
                                            <input type="hidden" id="coupon_id" name="coupon_id" value="">
                                            <input type="hidden" id="per_kg_0" value="{{ $shipping_prices[0]['per_kg_0'] }}">
                                            <input type="hidden" id="per_kg_1" value="{{ $shipping_prices[0]['per_kg_1'] }}">
                                            <input type="hidden" id="half_kg_0" value="{{ $shipping_prices[0]['half_kg_0'] }}">
                                            <input type="hidden" id="half_kg_1" value="{{ $shipping_prices[0]['half_kg_1'] }}">
                                            <input type="hidden" id="additional_per_kg_0" value="{{ $shipping_prices[0]['additional_per_kg_0'] }}">
                                            <input type="hidden" id="additional_per_kg_1" value="{{ $shipping_prices[0]['additional_per_kg_1'] }}">
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="loginbtn" align="center">
                                        <a href="{{ route('home') }}">
                                            <button>Add More Items</button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 pL0">
                                    <ul class="checkout-types">
                                        <li>
                                            <div class="loginbtn" align="center">
                                                <button>Order Now</button>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    @include('layouts.footer')
</body>

</html>