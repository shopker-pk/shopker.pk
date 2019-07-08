@include('layouts.header')
    <div class="main-content shop-page main-content-grid">
        <div class="container">
            @include('layouts.messages')
            <div class="row">
                <div class="col-xs-12 col-sm-7 col-md-8 col-lg-9 content-offset">
                    <div class="main-banner">
                        <div class="banner banner-effect1">
                            <a href="#"><img src="images/banner22.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="categories-content">
                        <h4 class="shop-title">Grid Category</h4>
                        <div class="top-control box-has-content">
                            <div class="control">
                                <div class="filter-choice"></div>
                                <div class="select-item"></div>
                                <div class="control-button">
                                    <a href="#" class="grid-button active"><span class="icon"><i class="fa fa-th-large" aria-hidden="true"></i> </span>Grid</a>
                                    <a href="#" class="list-button"><span class="icon"><i class="fa fa-th-list" aria-hidden="true"></i></span> List</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-container auto-clear grid-style equal-container box-has-content">
                            @if(!empty($query))
                                @foreach($query as $row)
                            <div class="product-item layout1 col-ts-12 col-xs-6 col-sm-6 col-md-4 col-lg-4 no-padding">
                                <div class="product-inner equal-elem">
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
                            @else
                            No Products Found !!
                            @endif
                        </div>
                        <div class="pagination">
                            {{ $query[0]['pagination']  }}
                        </div>
                    </div>
                </div>
                @include('layouts.products_filter')
            </div>
        </div>
    </div>
@include('layouts.footer')