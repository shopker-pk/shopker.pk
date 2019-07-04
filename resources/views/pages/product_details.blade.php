@include('layouts.header')
    <div class="main-content shop-page main-content-detail">
        <div class="container">
            @include('layouts.messages')
            <div class="breadcrumbs">
                <!-- <a href="#">Home</a> \ <span class="current">Detail</span> -->
                <a href="{{ route('home') }}" style="color:#e52;">Home</a>  <i class="fa fa-angle-right"></i> 
                <a href="{{ route('products_by_categories', $product_details['parent_slug']) }}" style="color:#e52;">{{ $product_details['parent_category'] }}</a>  <i class="fa fa-angle-right"></i> 
                <a href="{{ route('products_by_categories', $product_details['child_slug']) }}" style="color:#e52;">{{ $product_details['child_category'] }}</a>  <i class="fa fa-angle-right"></i> 
                <a href="{{ route('products_by_categories', $product_details['sub_child_slug']) }}" style="color:#e52;">{{ $product_details['sub_child_category'] }}</a>  <i class="fa fa-angle-right"></i> 
                <a href="{{ route('product_details', $product_details['product_slug']) }}" style="color:#e52;">{{ $product_details['product_name'] }}</a>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-7 col-md-8 col-lg-9 content-offset">
                    <div class="about-product row">
                        <div class="details-thumb col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="owl-carousel nav-style3 has-thumbs" data-autoplay="true" data-nav="true" data-dots="false" data-loop="true" data-slidespeed="800" data-margin="0"  data-responsive = '{"0":{"items":1}, "480":{"items":2}, "768":{"items":1}, "1024":{"items":1}, "1200":{"items":1}}'>
                                @if(!empty($product_images))
                                    @foreach($product_images as $row)
                                <div class="details-item"><img src="{{ $row }}" alt="" style="width:400px; height:400px;"></div>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                        <div class="details-info col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <a href="javascript:void(0);" class="product-name">{{ $product_details['product_name'] }}</a>
                            <div class="rating">
                                <ul class="list-star">
                                    @if($product_details['total_stars'] == 5)
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    @elseif($product_details['total_stars'] == 4)
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    @elseif($product_details['total_stars'] == 3)
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    @elseif($product_details['total_stars'] == 2)
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    @elseif($product_details['total_stars'] == 1)
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    @else
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    @endif
                                </ul>
                                <span class="count">{{ $product_details['total_ratings'] }} Review(s)</span>
                            </div>
                            <p class="description">Brand: <a href="{{ route('search_products', $product_details['brand_slug']) }}" >{{ $product_details['brand_name'] }}</a> | <a href="javascript::void(0)";>More {{ $product_details['sub_child_category'] }} from {{ $product_details['brand_name'] }}</p>
                            <div class="price">
                                @if(!empty($product_details['sale_price']))
                                <span class="del"><strike>Rs.{{ $product_details['cost_price'] }}</strike></span>
                                <span class="ins">Rs.{{ $product_details['sale_price'] }}</span>
                                @else
                                <span class="ins">Rs.{{ $product_details['cost_price'] }}</span>
                                @endif
                            </div>
                            <div class="group-social">
                                <ul class="list-socials">
                                    <li><a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(route('product_details', $product_details['product_slug'])) }}&display=popup" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="https://twitter.com/intent/tweet?url={{ urlencode(route('product_details', $product_details['product_slug'])) }}" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="https://www.instagram.com/?url={{ urlencode(route('product_details', $product_details['product_slug'])) }}" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    <li><a href="https://api.whatsapp.com/send?text={{ urlencode(route('product_details', $product_details['product_slug'])) }}" target="_blank"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                            <div class="quantity">
                                <div class="group-quantity-button">
                                    <a class="minus" href="#"><i class="fa fa-minus" aria-hidden="true"></i></a>
                                    <input class="input-text qty text detail_qty" type="text" size="4" title="Qty" value="1" name="quantity">
                                    <a class="plus" href="#"><i class="fa fa-plus" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div class="group-button">
                                <div class="inner">
                                    <form method="post" action="{{ route('add_to_cart') }}" id="add_to_cart_form">
                                    {{ csrf_field() }}
                                    <input type="hidden" id="product_id" name="product_id" value="{{ $product_details['product_id'] }}">
                                    @if(!empty($product_details['sale_price']))
                                    <input type="hidden" id="product_price" name="product_price" value="{{ $product_details['sale_price'] }}">
                                    <input type="hidden" id="product_type" name="product_type" value="0">
                                    @else
                                    <input type="hidden" id="product_price" name="product_price" value="{{ $product_details['cost_price'] }}">
                                    <input type="hidden" id="product_type" name="product_type" value="1">
                                    @endif
                                    <input type="hidden" id="quantity_add_to_cart" name="quantity" value="">
                                    <a class="add-to-cart" id="add_to_cart_btn"><span class="text">ADD TO CART</span><span class="icon"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></span></a>
                                    </form>
                                    <form method="post" action="{{ route('buy_now') }}" id="buy_now_form">
                                    {{ csrf_field() }}
                                    <input type="hidden" id="product_id" name="product_id" value="{{ $product_details['product_id'] }}">
                                    @if(!empty($product_details['sale_price']))
                                    <input type="hidden" id="product_price" name="product_price" value="{{ $product_details['sale_price'] }}">
                                    <input type="hidden" id="product_type" name="product_type" value="0">
                                    @else
                                    <input type="hidden" id="product_price" name="product_price" value="{{ $product_details['cost_price'] }}">
                                    <input type="hidden" id="product_type" name="product_type" value="1">
                                    @endif
                                    <input type="hidden" id="quantity_buy_now" name="quantity" value="">
                                    <a class="add-to-cart" id="buy_now_btn"><span class="text">BUY NOW</span><span class="icon"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></span></a>
                                    </form>
                                    <a href="{{ route('add_wishlists', $product_details['product_id']) }}" class="wishlist-button"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="kt-tab nav-tab-style2">
                        <ul class="nav list-nav">
                            <li class="active"><a data-animated="fadeIn" data-toggle="pill" href="#tab1">Description</a></li>
                            <li><a data-animated="zoomInUp" data-toggle="pill" href="#tab2">Specification</a></li>
                            <li><a data-animated="zoomInUp" data-toggle="pill" href="#tab3">Video</a></li>
                            <li><a data-animated="zoomInUp" data-toggle="pill" href="#tab4">Other Information</a></li>
                            <li><a data-animated="rotateInDownLeft" data-toggle="pill" href="#tab5">Reviews</a></li>
                        </ul>                       
                        <div class="tab-content">
                            <div id="tab1" class="tab-panel active ">
                                <div class="description">
                                    <h3><b>{{ $product_details['product_name'] }}</b></h3>
                                    <p>{{ $product_details['description'] }}</p>
                                </div>
                            </div>
                            <div id="tab2" class="tab-panel">
                                <div class="additional">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                            <p>Lorem ipsum dolor sit amet isse potenti sesquam ante aliquet lacusemper elit. Cras neque nulla convallis non comodo euismod nonsese isse potent.</p>
                                            <ul>
                                                @foreach($product_details['key_features'] as $row)
                                                <li>{{ $row }}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab3" class="tab-panel">
                                <div class="additional">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                            <div class="embed-responsive embed-responsive-16by9">
                                                <iframe class="embed-responsive-item" src="{{ $product_details['video_url'] }}" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab4" class="tab-panel">
                                <div class="additional">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                            <ul>
                                                <h4><li>Weight : {{ $product_details['weight'] }} KG</li></h4>
                                                <h4><li>Brand : {{ $product_details['brand_name'] }}</li></h4>
                                                <h4><li>SKU : {{ $product_details['sku_code'] }}</li></h4>
                                                <h4><li>Whats in the Box : {{ $product_details['what_in_the_box'] }}</li></h4>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab5" class="tab-panel">
                                <div class="custom-review">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <div class="customer-review">
                                                <h3 class="title supper-title">CUSTOMER REVIEWS <span class="count">( {{ $product_details['total_ratings'] }} Reviews )</span></h3>
                                                <ul class="list-review">
                                                    @if(!empty($product_reviews))
                                                        @foreach($product_reviews as $row)
                                                    <li class="review-item">
                                                        <div class="character">
                                                            <div class="rating">
                                                                <ul class="list-star">
                                                                    @if($row['stars'] == 5)
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    @elseif($row['stars'] == 4)
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    @elseif($row['stars'] == 3)
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    @elseif($row['stars'] == 2)
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    @elseif($row['stars'] == 1)
                                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    @else
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                    @endif
                                                                </ul>
                                                            </div>
                                                            <a href="#" class="author">{{ $row['user_name'] }}</a>
                                                            <div class="time-review">{{ date('D M Y', strtotime($row['buyer_created_date'])) }}</div>
                                                        </div>
                                                        <div class="review-content">
                                                            <p class="content">{{ $row['buyer_comment'] }}</p>
                                                        </div>
                                                    </li>
                                                        @endforeach
                                                    @endif
                                                </ul>
                                            </div>
                                        </div>
                                        @if(!empty($customer_details[0]['id']))
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <div class="add-review">
                                                <h3 class="title supper-title">ADD A REVIEW</h3>
                                                <form action="{{ route('insert_products_reviews') }}" method="post">
                                                    {{ csrf_field() }}
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                                        <input type="text" class="input-info" placeholder="Your name">
                                                    </div>
                                                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                                        <input type="text" class="input-info" placeholder="Your email">
                                                    </div>
                                                </div>
                                                <textarea rows="6"  class="input-info input-content" placeholder="Your review"></textarea>
                                                <div class="rating">
                                                    <span class="text">Your rating</span>
                                                    <input type="hidden" id="product_id" name="product_id" value="{{ $product_details['product_id'] }}">
                                                    <fieldset>
                                                        <span class="star-cb-group">
                                                            <input type="radio" id="rating-5" name="rate" value="5" /><label for="rating-5">5</label>
                                                            <input type="radio" id="rating-4" name="rate" value="4" checked="checked" /><label for="rating-4">4</label>
                                                            <input type="radio" id="rating-3" name="rate" value="3" /><label for="rating-3">3</label>
                                                            <input type="radio" id="rating-2" name="rate" value="2" /><label for="rating-2">2</label>
                                                            <input type="radio" id="rating-1" name="rate" value="1" /><label for="rating-1">1</label>
                                                            <input type="radio" id="rating-0" name="rate" value="0" class="star-cb-clear" /><label for="rating-0">0</label>
                                                        </span>
                                                    </fieldset>
                                                </div>
                                                <button class="submit btn btn-success">SUBMIT</button>
                                                </form>
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-5 col-md-4 col-lg-3 sidebar">
                    <div class="equal-container widget-featrue-box">
                        <div class="row">
                            <div class="col-ts-12 col-xs-4 col-sm-12 col-md-12 col-lg-12 featrue-item">
                                <div class="featrue-box layout2 equal-elem">
                                    <img src="{{ $product_details['store_logo'] }}" height="70" alt="{{ $product_details['store_logo_alt'] }}">
                                    <div class="block-inner">
                                        <p class="title parent-item">Sold By</p>
                                        <p class="des child-item"><a href="{{ route('get_stores', $product_details['store_slug']) }}"> {{ $product_details['store_name'] }}</a></p>
                                        <p class="title parent-item">Warranty</p>
                                        <p class="des">{{ $product_details['warranty_type'] }}</p>
                                        <p class="title parent-item">Delivery</p>
                                        <p class="des">3 to 7 Working Days</p>
                                        <a href="{{ route('get_stores', $product_details['store_slug']) }}"><p class="title text-uppercase parent-item">go to store</p></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="products-arrivals">
                <div class="section-head box-has-content">
                    <h4 class="section-title">Related Products</h4>
                </div>
                <div class="section-content">
                    <div class="owl-carousel product-list-owl nav-style2 equal-container" data-autoplay="false" data-nav="true" data-dots="false" data-loop="false" data-slidespeed="800" data-margin="0"  data-responsive = '{"0":{"items":1}, "480":{"items":2}, "650":{"items":3}, "1024":{"items":4}, "1200":{"items":5}}'>
                        @if(!empty($related_products))
                            @foreach($related_products as $row)
                        <div class="row-item">
                            <div class="product-item layout1">
                                <div class="product-inner equal-elem">
                                    @if(!empty($row['total_discount']))
                                    <ul class="group-flash">
                                        <li><span class="sale flash">-{{ $row['total_discount'] }}%</span></li>
                                    </ul>
                                    @endif
                                    <div class="thumb">
                                        <a href="{{ route('product_details', $row['slug']) }}" class="thumb-link"><img src="{{ $row['image'] }}" alt="{{ $row['image_alt'] }}" style="width:214px; height:214px;"></a>
                                    </div>
                                    <div class="info">
                                        <div class="rating">
                                            <ul class="list-star">
                                                @if($row['total_stars'] == 5)
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                @elseif($row['total_stars'] == 4)
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                @elseif($row['total_stars'] == 3)
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                @elseif($row['total_stars'] == 2)
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                @elseif($row['total_stars'] == 1)
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                @else
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                @endif
                                            </ul>
                                            <span class="count">{{ $row['total_stars'] }} Review(s)</span>
                                        </div>
                                        <a href="{{ route('product_details', $row['slug']) }}" class="product-name">{{ $row['name'] }}</a>
                                        <div class="price">
                                            @if(!empty($row['sale_price']))
                                            <span class="del">{{ $row['cost_price'] }}</span>
                                            <span class="ins">{{ $row['sale_price'] }}</span>
                                            @else
                                            <span class="ins">{{ $row['cost_price'] }}</span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="group-button">
                                        <div class="inner">
                                            <a href="{{ route('add_wishlists', $row['id']) }}" class="wishlist-button"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            @endforeach
                        @else
                            NO Daily Deal Found !!
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@include('layouts.footer')