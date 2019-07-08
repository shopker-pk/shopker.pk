@include('layouts.header')
    <div class="main-content home-page main-content-home2">
        <div class="container">
            @include('layouts.messages')
            <div class="main-slideshow slideshow2">
                <div class="owl-carousel nav-style1 owl-background" data-autoplay="true" data-nav="true" data-dots="false" data-loop="true" data-slidespeed="800" data-margin="0"  data-responsive = '{"0":{"items":1}, "640":{"items":1}, "768":{"items":1}, "1024":{"items":1}, "1200":{"items":1}}' data-height="400">
                    @if(!empty($header_banners))
                        @foreach($header_banners as $row)
                    <div class="slide-item item1 item-background" data-background="{{ $row['image'] }}">
                        <div class="slide-img"><img src="{{ $row['image'] }}" alt="{{ $row['image_alt'] }}" style="width:1170px; height:511px;"></div>
                        <div class="slide-content">
                            @if(!empty($row['url']))
                            <a href="{{ $row['url'] }}" class="button">View More</a>
                            @else
                            <a href="javascript:void(0);" class="button">View More</a>
                            @endif
                        </div>
                    </div>
                        @endforeach
                    @endif
                </div>
            </div>
            <div class="featrue-box-list equal-container">
                <div class="row">
                    <div class="col-ss-12 col-xs-12 col-sm-4 col-md-4 col-lg-4 item">
                        <div class="featrue-box layout1 equal-elem">
                            <div class="block-icon"><a href="#"><span class="fa fa-truck"></span></a></div>
                            <div class="block-inner">
                                <a href="#" class="title">Free Shipping & Return</a>
                                <p class="des">Free shipping on all orders over Rs.1999</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-ss-12 col-xs-12 col-sm-4 col-md-4 col-lg-4 featrue-item">
                        <div class="featrue-box layout1 equal-elem">
                            <div class="block-icon"><a href="#"><span class="fa fa-retweet"></span></a></div>
                            <div class="block-inner">
                                <a href="#"  class="title">Money back guarantee</a>
                                <p class="des">100% money back guarantee</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-ss-12 col-xs-12 col-sm-4 col-md-4 col-lg-4 featrue-item">
                        <div class="featrue-box layout1 equal-elem">
                            <div class="block-icon"><a href="#"><span class="fa fa-life-ring"></span></a></div>
                            <div class="block-inner">
                                <a href="#"  class="title">Online support 24/7</a>
                                <p class="des">Online support 24/7</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row box-products">
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <div class="box-product-item">
                        <div class="head">
                            <h5 class="title">Best Selling</h5>
                        </div>
                        <div class="content">
                            <div class="product-list-owl owl-carousel nav-style2 equal-container" data-autoplay="false" data-nav="true" data-dots="false" data-loop="true" data-slidespeed="800" data-margin="0"  data-responsive = '{"0":{"items":1}, "480":{"items":2,"margin":0},"700":{"items":3,"margin":-1}, "768":{"items":1}, "1024":{"items":1}, "1200":{"items":1}}'>
                                @if(!empty($best_selling))
                                    @foreach($best_selling as $row)
                                <div class="product-item layout1">
                                    <div class="product-inner equal-elem">
                                        @if(!empty($row['total_discount']))
                                        <ul class="group-flash">
                                            <li><span class="sale flash">-{{ $row['total_discount'] }}%</span></li>
                                        </ul>
                                        @endif
                                        <div class="thumb">
                                            <a href="javascript:void(0);" class="quickview-button" data-id="{{ $row['id'] }}"><span class="icon"><i class="fa fa-eye" aria-hidden="true"></i></span> Quick View</a>
                                            <a href="{{ route('product_details', $row['slug']) }}" class="thumb-link"><img src="{{ $row['image'] }}" alt="{{ $row['image_alt'] }}" style="width:290px; height:290px;"></a>
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
                                                <span class="del">Rs.{{ $row['cost_price'] }}</span>
                                                <span class="ins">Rs.{{ $row['sale_price'] }}</span>
                                                @else
                                                <span class="ins">Rs.{{ $row['cost_price'] }}</span>
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
                                    @endforeach
                                @else
                                <div class="product-item layout1">
                                    <div class="product-inner equal-elem">
                                        <img src="{{ asset('public/assets/images/65864565_350196712312592_751187452198125568_n.png') }}" style=" height: 376px;">
                                    </div>
                                </div>
                                <div class="product-item layout1">
                                    <div class="product-inner equal-elem">
                                        <img src="{{ asset('public/assets/images/65864565_350196712312592_751187452198125568_n.png') }}" style=" height: 376px;">
                                    </div>
                                </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-4 col-md-4">
                    <div class="box-product-item">
                        <div class="head">
                            <h5 class="title">Daily Deals</h5>
                        </div>
                        <div class="content">
                            <div class="owl-carousel nav-style2" data-autoplay="false" data-nav="true" data-dots="false" data-loop="true" data-slidespeed="800" data-margin="0.1"  data-responsive = '{"0":{"items":1}, "560":{"items":2}, "768":{"items":1}, "1024":{"items":1}, "1200":{"items":1}}' data-count="{{ $count = 0 }}">
                                @if(!empty($daily_deals))
                                    @foreach($daily_deals as $row)
                                <div class="product-item layout1">
                                    <div class="product-inner equal-elem">
                                        @if(!empty($row['total_discount']))
                                        <ul class="group-flash">
                                            <li><span class="sale flash">-{{ $row['total_discount'] }}%</span></li>
                                        </ul>
                                        @endif
                                        <div class="thumb">
                                            <a href="javascript:void(0);" class="quickview-button" data-id="{{ $row['id'] }}"><span class="icon"><i class="fa fa-eye" aria-hidden="true"></i></span> Quick View</a>
                                            <a href="{{ route('product_details', $row['slug']) }}" class="thumb-link"><img src="{{ $row['image'] }}" alt="{{ $row['image_alt'] }}" style="width:290px; height:290px;"></a>
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
                                                <span class="del">Rs.{{ $row['cost_price'] }}</span>
                                                <span class="ins">Rs.{{ $row['sale_price'] }}</span>
                                                @else
                                                <span class="ins">Rs.{{ $row['cost_price'] }}</span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="kt-countdown timer_1" data-y="{{ date('Y') }}" data-m="{{ date('m') }}" data-w="{{ date('d') }}" data-d="{{ date('d') }}" data-h_{{ $count }}="{{ $row['deal_hours'] }}" data-i_{{ $count }}="{{ $row['deal_minutes'] }}" data-s_{{ $count }}="{{ $row['deal_seconds'] }}" data-increment="{{ $count++ }}"></div>
                                        <div class="group-button">
                                            <div class="inner">
                                                <a href="{{ route('add_wishlists', $row['id']) }}" class="wishlist-button"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    @endforeach
                                @else
                                <div class="product-item layout1">
                                    <div class="product-inner equal-elem">
                                        <img src="{{ asset('public/assets/images/65762221_705145879945984_8909968625452974080_n.png') }}" style=" height: 376px;">
                                    </div>
                                </div>
                                <div class="product-item layout1">
                                    <div class="product-inner equal-elem">
                                        <img src="{{ asset('public/assets/images/65762221_705145879945984_8909968625452974080_n.png') }}" style=" height: 376px;">
                                    </div>
                                </div> 
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <div class="box-product-item">
                        <div class="head">
                            <h5 class="title">New arrivals</h5>
                        </div>
                        <div class="content">
                            <div class="product-list-owl owl-carousel nav-style2 equal-container" data-autoplay="false" data-nav="true" data-dots="false" data-loop="true" data-slidespeed="800" data-margin="0"  data-responsive = '{"0":{"items":1}, "480":{"items":2,"margin":0},"700":{"items":3,"margin":-1}, "768":{"items":1}, "1024":{"items":1}, "1200":{"items":1}}'>
                                @if(!empty($latest_products))
                                    @foreach($latest_products as $row)
                                <div class="product-item layout1">
                                    <div class="product-inner equal-elem">
                                        @if(!empty($row['total_discount']))
                                        <ul class="group-flash">
                                            <li><span class="sale flash">-{{ $row['total_discount'] }}%</span></li>
                                        </ul>
                                        @endif
                                        <div class="thumb">
                                           <a href="javascript:void(0);" class="quickview-button" data-id="{{ $row['id'] }}"><span class="icon"><i class="fa fa-eye" aria-hidden="true"></i></span> Quick View</a>
                                            <a href="{{ route('product_details', $row['slug']) }}" class="thumb-link"><img src="{{ $row['image'] }}" alt="{{ $row['image_alt'] }}" style="width:290px; height:290px;"></a>
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
                                                <span class="del">Rs.{{ $row['cost_price'] }}</span>
                                                <span class="ins">Rs.{{ $row['sale_price'] }}</span>
                                                @else
                                                <span class="ins">Rs.{{ $row['cost_price'] }}</span>
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
                                    @endforeach
                                @else
                                    No New Arrival Product Found !!
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-banner">
                <div class="col-xs-12 col-sm-5">
                    <div class="banner banner-effect1">
                        @if($bottom_top_banners)
                        <a href="{{ $bottom_top_banners['url'] }}"><img src="{{ $bottom_top_banners['image'] }}" alt="{{ $bottom_top_banners['image_alt'] }}" style="width:470px; height:191px;"></a>
                        @endif
                    </div>
                </div>
                <div class="col-xs-12 col-sm-7">
                    <div class="banner banner-effect1">
                        @if($bottom_center_banners)
                        <a href="{{ $bottom_center_banners['url'] }}"><img src="{{ $bottom_center_banners['image'] }}" alt="{{ $bottom_center_banners['image_alt'] }}" style="width:690px; height:191px;"></a>
                        @endif
                    </div>
                </div>
            </div>
            @if(!empty($daily_deals))
            <div class="group-product layout1">
                <div class="kt-tab nav-tab-style1">
                    <div class="section-head box-has-content">
                        <h4 class="section-title">Daily Deals</h4>
                        <ul class="nav list-nav">
                        </ul>
                    </div>
                    <div class="section-content">
                        <div class="tab-content">
                            <div id="tab1" class="tab-panel active">
                                <div class="owl-carousel product-list-owl nav-style2 equal-container" data-autoplay="false" data-nav="true" data-dots="false" data-loop="false" data-slidespeed="800" data-margin="0"  data-responsive = '{"0":{"items":1}, "480":{"items":2,"margin":0}, "700":{"items":3,"margin":-1}, "992":{"items":4}, "1200":{"items":5}}'>
                                    @foreach($daily_deals as $row)
                                    <div class="row-item">
                                        <div class="product-item layout1">
                                            <div class="product-inner equal-elem">
                                                @if(!empty($row['total_discount']))
                                                <ul class="group-flash">
                                                    <li><span class="sale flash">-{{ $row['total_discount'] }}%</span></li>
                                                </ul>
                                                @endif
                                                <div class="thumb">
                                                    <a href="javascript:void(0);" class="quickview-button" data-id="{{ $row['id'] }}"><span class="icon"><i class="fa fa-eye" aria-hidden="true"></i></span> Quick View</a>
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
                                                        <span class="del">Rs.{{ $row['cost_price'] }}</span>
                                                        <span class="ins">Rs.{{ $row['sale_price'] }}</span>
                                                        @else
                                                        <span class="ins">Rs.{{ $row['cost_price'] }}</span>
                                                        @endif
                                                    </div>
                                                    <div class="kt-countdown timer_1" data-y="{{ date('Y') }}" data-m="{{ date('m') }}" data-w="{{ date('d') }}" data-d="{{ date('d') }}" data-h_{{ $count }}="{{ $row['deal_hours'] }}" data-i_{{ $count }}="{{ $row['deal_minutes'] }}" data-s_{{ $count }}="{{ $row['deal_seconds'] }}" data-increment="{{ $count++ }}"></div>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
            @endif
            @if(!empty($best_selling))
            <div class="group-product layout1">
                <div class="kt-tab nav-tab-style1">
                    <div class="section-head box-has-content">
                        <h4 class="section-title">Best Selling Products</h4>
                        <ul class="nav list-nav">
                        </ul>
                    </div>
                    <div class="section-content">
                        <div class="tab-content">
                            <div id="tab1" class="tab-panel active">
                                <div class="owl-carousel product-list-owl nav-style2 equal-container" data-autoplay="false" data-nav="true" data-dots="false" data-loop="false" data-slidespeed="800" data-margin="0"  data-responsive = '{"0":{"items":1}, "480":{"items":2,"margin":0}, "700":{"items":3,"margin":-1}, "992":{"items":4}, "1200":{"items":5}}'>
                                    @foreach($best_selling as $row)
                                    <div class="row-item">
                                        <div class="product-item layout1">
                                            <div class="product-inner equal-elem">
                                                @if(!empty($row['total_discount']))
                                                <ul class="group-flash">
                                                    <li><span class="sale flash">-{{ $row['total_discount'] }}%</span></li>
                                                </ul>
                                                @endif
                                                <div class="thumb">
                                                    <a href="javascript:void(0);" class="quickview-button" data-id="{{ $row['id'] }}"><span class="icon"><i class="fa fa-eye" aria-hidden="true"></i></span> Quick View</a>
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
                                                        <span class="del">Rs.{{ $row['cost_price'] }}</span>
                                                        <span class="ins">Rs.{{ $row['sale_price'] }}</span>
                                                        @else
                                                        <span class="ins">Rs.{{ $row['cost_price'] }}</span>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>      
        </div>
        @endif
        <div class="products-view">
            <div class="container">
                <div class="group-product layout1">
                    <div class="kt-tab nav-tab-style1">
                        <div class="section-head box-has-content">
                            <h4 class="section-title">Latest Products</h4>
                            <ul class="nav list-nav">
                            </ul>
                        </div>
                        <div class="section-content">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 content-offset">
                                    <div class="categories-content">
                                        <div class="product-container auto-clear grid-style equal-container box-has-content">
                                            @if(!empty($latest_products))
                                                @foreach($latest_products as $row)
                                            <div class="product-item latest-products layout1 col-ts-12 col-xs-6 col-sm-6 no-padding" style="width: 20%">
                                                <div class="product-inner equal-elem">
                                                    @if(!empty($row['total_discount']))
                                                    <ul class="group-flash">
                                                        <li><span class="sale flash">-{{ $row['total_discount'] }}%</span></li>
                                                    </ul>
                                                    @endif
                                                    <div class="thumb">
                                                        <a href="javascript:void(0);" class="quickview-button" data-id="{{ $row['id'] }}"><span class="icon"><i class="fa fa-eye" aria-hidden="true"></i></span> Quick View</a>
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
                                                            <span class="del">Rs.{{ $row['cost_price'] }}</span>
                                                            <span class="ins">Rs.{{ $row['sale_price'] }}</span>
                                                            @else
                                                            <span class="ins">Rs.{{ $row['cost_price'] }}</span>
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
                                                @endforeach
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
@include('layouts.footer')