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
    <link rel="icon" type="icon/gif" href="{{ asset('public/assets/images/favicon.png') }}">
    @include('layouts.style')
    <style type="text/css">
        #myCarousel .thumbnail {
            margin-bottom: 0;
        }
        
        #myCarousel1 .thumbnail {
            margin-bottom: 0;
        }
        
        .carousel-control.left,
        .carousel-control.right {
            background-image: none !important;
        }
        
        .carousel-control {
            color: #fff;
            top: 40%;
            color: green;
            bottom: auto;
            padding-top: 4px;
            width: 30px;
            height: 30px;
            text-shadow: none;
            opacity: 1;
        }
        
        .carousel-control:hover {
            color: red;
        }
        
        .carousel-control.left,
        .carousel-control.right {
            background-image: none !important;
        }
        
        .carousel-control.right {
            left: auto;
            right: -32px;
        }
        
        .carousel-control.left {
            right: auto;
            left: -32px;
        }
        
        .carousel-indicators {
            bottom: -38px;
        }
        
        .carousel-indicators li {
            border-radius: 50%;
            width: 16px;
            height: 16px;
            margin-left: 10px;
            background: green;
            border: 1px solid #ccc;
        }
        
        .carousel-indicators .active {
            width: 16px;
            height: 16px;
            margin-top: 1px;
            margin-left: 10px;
            background: red;
            border-color: #3276b1;
        }
        
        #slider-text {
            padding-top: 40px;
            display: block
        }
        
        #slider-text #slider-text h2 {
            font-family: 'Josefin Sans', sans-serif;
            font-weight: 400;
            font-size: 30px;
            letter-spacing: 3px;
            margin: 30px auto;
            padding-left: 40px
        }
        
        #itemslider h4,
        #itemslider h5 {
            font-family: 'Josefin Sans', sans-serif;
            font-size: 16px
        }
        
        #slider-text h2::after {
            border-top: 2px solid #c7c7c7;
            content: "";
            position: absolute;
            bottom: 35px;
            width: 100%
        }
        
        #itemslider h4 {
            font-weight: 400;
            margin: 25px auto 3px
        }
        
        #itemslider h5 {
            font-weight: 700;
            margin: 10px auto 2px
        }
        
        #itemslider h6,
        #itemslider h6 {
            font-size: 14px;
            margin: 5px auto
        }
        
        .ratings {
            margin-top: 10px
        }
        
        #slider-control .left {
            margin-top: -205px;
            margin-left: -30px
        }
        
        #slider-control .right {
            margin-top: -205px;
            margin-right: -30px
        }
        
        @media screen and (max-width:992px) {
            #slider-control img {
                padding-top: 70px;
                margin: 0 auto
            }
        }
        
        .imgcolslider {
            padding-bottom: 40px;
            padding-top: 30px;
            cursor: pointer;
        }
        
        .carousel-showmanymoveone .carousel-control {
            width: 4%;
            background-image: none
        }
        
        .carousel-showmanymoveone .cloneditem-1,
        .carousel-showmanymoveone .cloneditem-2,
        .carousel-showmanymoveone .cloneditem-3,
        .carousel-showmanymoveone .cloneditem-4,
        .carousel-showmanymoveone .cloneditem-5 {
            display: none
        }
        
        @media all and (min-width:768px) {
            .carousel-showmanymoveone .carousel-inner>.active.left,
            .carousel-showmanymoveone .carousel-inner>.prev {
                left: -50%
            }
            .carousel-showmanymoveone .carousel-inner>.active.right,
            .carousel-showmanymoveone .carousel-inner>.next {
                left: 50%
            }
            .carousel-showmanymoveone .carousel-inner>.active,
            .carousel-showmanymoveone .carousel-inner>.left,
            .carousel-showmanymoveone .carousel-inner>.prev.right {
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner .cloneditem-1 {
                display: block
            }
        }
        
        @media all and (min-width:768px) and (transform-3d),
        all and (min-width:768px) and (-webkit-transform-3d) {
            .carousel-showmanymoveone .carousel-inner>.item.active.right,
            .carousel-showmanymoveone .carousel-inner>.item.next {
                -webkit-transform: translate3d(50%, 0, 0);
                transform: translate3d(50%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner>.item.active.left,
            .carousel-showmanymoveone .carousel-inner>.item.prev {
                -webkit-transform: translate3d(-50%, 0, 0);
                transform: translate3d(-50%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner>.item.active,
            .carousel-showmanymoveone .carousel-inner>.item.left,
            .carousel-showmanymoveone .carousel-inner>.item.prev.right {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
                left: 0
            }
        }
        
        @media all and (min-width:992px) {
            .carousel-showmanymoveone .carousel-inner>.active.left,
            .carousel-showmanymoveone .carousel-inner>.prev {
                left: -16.666%
            }
            .carousel-showmanymoveone .carousel-inner>.active.right,
            .carousel-showmanymoveone .carousel-inner>.next {
                left: 16.666%
            }
            .carousel-showmanymoveone .carousel-inner>.active,
            .carousel-showmanymoveone .carousel-inner>.left,
            .carousel-showmanymoveone .carousel-inner>.prev.right {
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner .cloneditem-2,
            .carousel-showmanymoveone .carousel-inner .cloneditem-3,
            .carousel-showmanymoveone .carousel-inner .cloneditem-4,
            .carousel-showmanymoveone .carousel-inner .cloneditem-5,
            .carousel-showmanymoveone .carousel-inner .cloneditem-6 {
                display: block
            }
        }
        
        @media all and (min-width:992px) and (transform-3d),
        all and (min-width:992px) and (-webkit-transform-3d) {
            .carousel-showmanymoveone .carousel-inner>.item.active.right,
            .carousel-showmanymoveone .carousel-inner>.item.next {
                -webkit-transform: translate3d(16.666%, 0, 0);
                transform: translate3d(16.666%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner>.item.active.left,
            .carousel-showmanymoveone .carousel-inner>.item.prev {
                -webkit-transform: translate3d(-16.666%, 0, 0);
                transform: translate3d(-16.666%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner>.item.active,
            .carousel-showmanymoveone .carousel-inner>.item.left,
            .carousel-showmanymoveone .carousel-inner>.item.prev.right {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
                left: 0
            }
        }
        
        .img-responsive {
            height: 100px !important;
        }
        
        .carousel-showmanymoveone1 .carousel-control {
            width: 4%;
            background-image: none
        }
        
        .carousel-showmanymoveone1 .cloneditem-1,
        .carousel-showmanymoveone1 .cloneditem-2,
        .carousel-showmanymoveone1 .cloneditem-3,
        .carousel-showmanymoveone1 .cloneditem-4,
        .carousel-showmanymoveone1 .cloneditem-5 {
            display: none
        }
        
        @media all and (min-width:768px) {
            .carousel-showmanymoveone1 .carousel-inner>.active.left,
            .carousel-showmanymoveone1 .carousel-inner>.prev {
                left: -50%
            }
            .carousel-showmanymoveone1 .carousel-inner>.active.right,
            .carousel-showmanymoveone1 .carousel-inner>.next {
                left: 50%
            }
            .carousel-showmanymoveone1 .carousel-inner>.active,
            .carousel-showmanymoveone1 .carousel-inner>.left,
            .carousel-showmanymoveone1 .carousel-inner>.prev.right {
                left: 0
            }
            .carousel-showmanymoveone1 .carousel-inner .cloneditem-1 {
                display: block
            }
        }
        
        @media all and (min-width:768px) and (transform-3d),
        all and (min-width:768px) and (-webkit-transform-3d) {
            .carousel-showmanymoveone1 .carousel-inner>.item.active.right,
            .carousel-showmanymoveone1 .carousel-inner>.item.next {
                -webkit-transform: translate3d(50%, 0, 0);
                transform: translate3d(50%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone1 .carousel-inner>.item.active.left,
            .carousel-showmanymoveone1 .carousel-inner>.item.prev {
                -webkit-transform: translate3d(-50%, 0, 0);
                transform: translate3d(-50%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone1 .carousel-inner>.item.active,
            .carousel-showmanymoveone1 .carousel-inner>.item.left,
            .carousel-showmanymoveone1 .carousel-inner>.item.prev.right {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
                left: 0
            }
        }
        
        @media all and (min-width:992px) {
            .carousel-showmanymoveone1 .carousel-inner>.active.left,
            .carousel-showmanymoveone1 .carousel-inner>.prev {
                left: -16.666%
            }
            .carousel-showmanymoveone1 .carousel-inner>.active.right,
            .carousel-showmanymoveone1 .carousel-inner>.next {
                left: 16.666%
            }
            .carousel-showmanymoveone1 .carousel-inner>.active,
            .carousel-showmanymoveone1 .carousel-inner>.left,
            .carousel-showmanymoveone1 .carousel-inner>.prev.right {
                left: 0
            }
            .carousel-showmanymoveone1 .carousel-inner .cloneditem-2,
            .carousel-showmanymoveone1 .carousel-inner .cloneditem-3,
            .carousel-showmanymoveone1 .carousel-inner .cloneditem-4,
            .carousel-showmanymoveone1 .carousel-inner .cloneditem-5,
            .carousel-showmanymoveone1 .carousel-inner .cloneditem-6 {
                display: block
            }
        }
        
        @media all and (min-width:992px) and (transform-3d),
        all and (min-width:992px) and (-webkit-transform-3d) {
            .carousel-showmanymoveone1 .carousel-inner>.item.active.right,
            .carousel-showmanymoveone1 .carousel-inner>.item.next {
                -webkit-transform: translate3d(16.666%, 0, 0);
                transform: translate3d(16.666%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone1 .carousel-inner>.item.active.left,
            .carousel-showmanymoveone1 .carousel-inner>.item.prev {
                -webkit-transform: translate3d(-16.666%, 0, 0);
                transform: translate3d(-16.666%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone1 .carousel-inner>.item.active,
            .carousel-showmanymoveone1 .carousel-inner>.item.left,
            .carousel-showmanymoveone1 .carousel-inner>.item.prev.right {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
                left: 0
            }
        }
        
        .img-responsive {
            height: 100px !important;
        }
        
        #secproslide {
            display: none;
        }
        
        @media only screen and (max-width: 991px) {
            #slider-control .left {
                margin-left: 30px !important;
            }
            #slider-control .right {
                margin-right: 43px !important;
            }
            #secproslide {
                display: block;
            }
        }
        
        .badge {
            background: #b20c0c;
            position: absolute;
            height: 40px;
            width: 40px;
            border-radius: 50%;
            line-height: 20px;
            font-size: 12px;
            top: 5px;
            right: 6%;
        }
        
        #carouselcontainer {
            margin-top: 50px;
            border: 1px solid #ccc;
            margin-bottom: 10px;
        }
    </style>

    <script>
        $(document).ready(function() {
            $('#itemslider').carousel({
                interval: 3000
            });

            $('.carousel-showmanymoveone .item').each(function() {
                var itemToClone = $(this);
                for(var i = 1; i < 6; i++){
                    itemToClone = itemToClone.next();

                    if(!itemToClone.length){
                        itemToClone = $(this).siblings(':first');
                    }

                    itemToClone.children(':first-child').clone().addClass("cloneditem-" + (i)).appendTo($(this));
                }
            });

            $('#itemslider1').carousel({
                interval: 3000
            });

            $('.carousel-showmanymoveone1 .item').each(function() {
                var itemToClone = $(this);

                for(var i = 1; i < 6; i++){
                    itemToClone = itemToClone.next();

                    if(!itemToClone.length){
                        itemToClone = $(this).siblings(':first');
                    }

                    itemToClone.children(':first-child').clone().addClass("cloneditem-" + (i)).appendTo($(this));
                }
            });
        });
    </script>
</head>

<body>
    @include('layouts.header') 
    @include('layouts.navigation')
    <!-- Banner -->
    <div class="container-fluid" id="catory" style="margin-top: 20px;">
        @include('layouts.messages')
        <div class="row">
            <div class="col-md-12" style="padding-left: 0px; padding-right: 0px;">
                <header>
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            @if(!empty($header_banners))
                            <li data-target="#carouselExampleIndicators" data-slide-to="{{ $header_banners[0]['id'] }}" class="active"></li>
                                @foreach($header_banners as $row)
                            <li data-target="#carouselExampleIndicators" data-slide-to="{{ $row['id'] }}"></li>
                                @endforeach
                            @endif
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            @if(!empty($header_banners))
                            <div class="carousel-item active" id="sliderimages" style="background-image: url('{{ $header_banners[1]['image'] }}'); background-size: 100% 480px; background-position: center;">
                                <div class="carousel-caption d-none d-md-block"></div>
                            </div>
                                @foreach($header_banners as $row)
                            <div class="carousel-item" id="sliderimages" style="background-image: url('{{ $row['image'] }}'); background-size: 100% 480px; background-position: center;">
                                <div class="carousel-caption d-none d-md-block"></div>
                            </div>
                            @endforeach
                        @endif
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev" style="">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" style="">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </header>
            </div>
        </div>
    </div>
    <div class="container" id="carouselcontainer">
        <div class="row dailydealheading">
            <div class="col-md-4 col-xs-3 col3width">
                <div id="dailydealres" style="font-size: 22px; color: white; margin-top: 10px;"><span style=" padding: 3px; background-image: linear-gradient(to left,green,black);">DAILY</span><span style="padding: 3px; background-image: linear-gradient(to right,red,black);"> DEALS</span>
                </div>
            </div>

            <div class="col-md-4 col-xs-3 col3width" align="center">
                <div style="margin-top: 10px;" class="pt-2 saleclass">
                    <span style="color: #7fbe3f; font-size: 16px;" class="saleend"><b>On Sale Now</b></span>
                    <span style=" margin-left: 2%; font-size: 16px;" class="saleend"><b>Ending Soon</b></span>
                </div>
            </div>
            <div class="col-md-2 col-xs-3" id="colmobilehide"></div>
            <div class="col-md-2 col-xs-3 col3width">
                <div align="center" class="pt-4">
                    <a href="{{ route('daily_deals_products') }}" class="viewmoreindex"><b>View More >></b></a>
                </div>
            </div>
        </div>
        <div class="row mt-5 mb-5">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="carousel carousel-showmanymoveone slide" id="itemslider">
                    <div class="carousel-inner">
                        <div class="item active">
                            @if(!empty($daily_deals))
                                @foreach($daily_deals as $row)
                            <div class="col-xs-6 col-sm-6 col-md-2 imgcolslider">
                                <a href="{{ route('product_details', $row['slug']) }}"><img src="{{ $row['image'] }}" class="img-responsive center-block" alt="{{ $row['image_alt'] }}"></a>
                                <span class="badge">Off <div style="margin-top: -7px;"> {{ $row['total_discount'] }}%</div></span>
                                <h4 class="text-center textmanage"><a href="{{ route('product_details', $row['slug']) }}">{{ $row['name'] }}</h4></a>
                                <h5 class="text-center">Rs. {{ $row['sale_price'] }}</h5>
                                <h6 class="text-center"><strike>Rs. {{ $row['cost_price'] }}</strike></h6>
                                <div align="center" class="ratings">
                                @if($row['total_stars'] == 5)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                @elseif($row['total_stars'] == 4)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @elseif($row['total_stars'] == 3)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @elseif($row['total_stars'] == 2)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @elseif($row['total_stars'] == 1)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @else 
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @endif
                                </div>
                                <div align="center" class="mb-2 mt-4">
                                    <span style="border: 1px solid #ccc; padding: 8px; border-radius: 5px;">40</span>
                                    <span>-</span>
                                    <span style="border: 1px solid #ccc; padding: 8px; border-radius: 5px;">23</span>
                                    <span>-</span>
                                    <span style="border: 1px solid #ccc; padding: 8px; border-radius: 5px;">01</span>
                                </div>
                                <div align="center" id="displayviewbtnhover">
                                    <a href="{{ route('product_details', $row['slug']) }}" class="btn btn-sm btnview">View more</a>
                                </div>
                            </div>
                                @endforeach
                            @endif
                        </div>
                    </div>
                    <div id="slider-control">
                        <a class="left carousel-control" href="#itemslider" data-slide="prev"><i class="fa fa-chevron-left fa-2x"></i></a>
                        <a class="right carousel-control" href="#itemslider" data-slide="next"><i class="fa fa-chevron-right fa-2x"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12" style="padding-right: 0px; padding-left: 0px;">
                <img src="{{ asset('public/assets/images/banner3.jpeg') }}" class="bannerimagesetting mt-4">
            </div>
        </div>
    </div>
    <!-- Item slider-->
    <div class="container mb-5" id="carouselcontainer">
        <div class="row dailydealheading">
            <div class="col-md-4 col-xs-4 col3width">
                <div id="dailydealres" style="font-size: 22px; color: white; margin-top: 10px;"><span style=" padding: 3px; background-image: linear-gradient(to left,green,black);">BEST</span><span style="padding: 3px; background-image: linear-gradient(to right,red,black);"> SELLING</span>
                </div>
            </div>
            <div class="col-md-6 col-xs-4"></div>
            <div class="col-md-2 col-xs-4">
                <div align="center" class="pt-4">
                    <a href="{{ route('best_selling_products') }}" class="viewmoreindex"><b>View More >></b></a>
                </div>
            </div>
        </div>
        <div class="row mt-5 mb-5">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="carousel carousel-showmanymoveone1 slide" id="itemslider1">
                    <div class="carousel-inner">
                        <div class="item active">
                            @if(!empty($best_selling))
                                @foreach($best_selling as $row)
                            <div class="col-xs-6 col-sm-6 col-md-2 imgcolslider">
                                <a href="{{ route('product_details', $row['slug']) }}"><img src="{{ $row['image'] }}" class="img-responsive center-block" alt="{{ $row['image_alt'] }}"></a>
                                @if($row['total_discount'] > 0)
                                <span class="badge">Off <div style="margin-top: -7px;"> {{ $row['total_discount'] }}%</div></span>
                                @endif
                                <h4 class="text-center textmanage" style="color: #529f3b;"><a href="{{ route('product_details', $row['slug']) }}">{{ $row['name'] }}</a></h4>
                                @if(!empty($row['sale_price']) > 0)
                                <h5 class="text-center">Rs. {{ $row['sale_price'] }}</h5>
                                @else
                                <h5 class="text-center">Rs. {{ $row['cost_price'] }}</h5>
                                @endif
                                @if(!empty($row['sale_price']) > 0)
                                <h6 class="text-center"><strike>Rs. {{ $row['cost_price'] }}</strike></h6>
                                @else
                                <h6 class="text-center" style="visibility:hidden"><strike>Rs. 00.00</strike></h6>
                                @endif
                                <div align="center" class="ratings">
                                @if($row['total_stars'] == 5)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                @elseif($row['total_stars'] == 4)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @elseif($row['total_stars'] == 3)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @elseif($row['total_stars'] == 2)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @elseif($row['total_stars'] == 1)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @else 
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @endif
                                </div>
                                <div align="center" id="displayviewbtnhover">
                                    <a href="{{ route('product_details', $row['slug']) }}" class="btn btn-sm btnview">View more</a>
                                </div>
                            </div>
                                @endforeach
                            @endif
                        </div>
                    </div>
                    <div id="slider-control">
                        <a class="left carousel-control" href="#itemslider1" data-slide="prev"><i class="fa fa-chevron-left fa-2x"></i></a>
                        <a class="right carousel-control" href="#itemslider1" data-slide="next"><i class="fa fa-chevron-right fa-2x"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12" style="padding-right: 0px; padding-left: 0px;">
                <img src="{{ asset('public/assets/images/banner3.jpeg') }}" class="bannerimagesetting mt-4">
            </div>
        </div>
    </div>
    <div class="container" id="carouselcontainer">
        <div class="row dailydealheading">
            <div class="col-md-4 col-xs-6 col6width">
                <div id="dailydealres" style="font-size: 22px; color: white; margin-top: 10px;"><span style=" padding: 3px; background-image: linear-gradient(to left,green,black);">LATEST</span><span style="padding: 3px; background-image: linear-gradient(to right,red,black);"> PRODUCT</span>
                </div>
            </div>
            <div class="col-md-6 col-xs-1"></div>
            <div class="col-md-2 col-xs-4 col6width">
                <div align="center" class="pt-4">
                    <a href="latestproducts.php" class="viewmoreindex latestviewbtn"><b>View More >></b></a>
                </div>
            </div>
        </div>
        <div class="container-fluid pb-2 pt-5">
            <div class="row" style="margin-top: 10px;">
                @if(!empty($latest_products))
                    @foreach($latest_products as $row)
                <div class="col-xs-6 col-sm-6 col-md-2 imgcolslider imagespace">
                    <a href="{{ route('product_details', $row['slug']) }}"><img src="{{ $row['image'] }}" class="img-responsive center-block" alt="{{ $row['image_alt'] }}"></a>
                    @if($row['total_discount'] > 0)
                    <span class="badge">Off<div style="margin-top: -7px;"> {{ $row['total_discount'] }}%</div></span>
                    @endif
                    <h4 class="text-center textmanage"><a href="{{ route('product_details', $row['slug']) }}">{{ $row['name'] }}</a></h4>
                    @if(!empty($row['sale_price']) > 0)
                    <h5 class="text-center">Rs. {{ $row['sale_price'] }}</h5>
                    @else
                    <h5 class="text-center">Rs. {{ $row['cost_price'] }}</h5>
                    @endif
                    @if(!empty($row['sale_price']) > 0)
                    <h6 class="text-center"><strike>Rs. {{ $row['cost_price'] }}</strike></h6>
                    @else
                    <h6 class="text-center" style="visibility:hidden"><strike>Rs. 00.00</strike></h6>
                    @endif
                    <div align="center" class="ratings">
                    @if($row['total_stars'] == 5)
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#008000;" class="fas fa-star"></i>
                    @elseif($row['total_stars'] == 4)
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                    @elseif($row['total_stars'] == 3)
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                    @elseif($row['total_stars'] == 2)
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                    @elseif($row['total_stars'] == 1)
                        <i style="color:#008000;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                    @else 
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                    @endif
                    </div>
                    <div align="center" id="displayviewbtnhover">
                        <a href="{{ route('product_details', $row['slug']) }}" class="btn btn-sm btnview">View more</a>
                    </div>
                </div>
                    @endforeach
                @endif
            </div>
        </div>
        <div class="row dailydealheading1">
            <div class="col-md-10"></div>
            <div class="col-md-2">
                <div align="center" class="pt-4 pb-5">

                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <hr/>
                <p class="text-justify">Shopker is an online marketplace that aims to be the best online shopping portal with the broadest range of products available. At shopker, we connect people & products by opening up a virtual world of possibility with the best available range of selection across so that you can get the greatest deals. We believe online shopping can be just as personal and engaging as entering a retail store. We promise to provide hassle-free online shopping experience all the way from product selection to timely delivery.
                    <br/> Our approach is based on 3 basic principles:
                    <ul style="color: #828282;list-style: circle;" class="pl-5">
                        <li>Clutter free presentation of products on the website</li>
                        <li> Easier selection process with expert reviews and description</li>
                        <li> Faster and timely delivery of your orders.</li>
                    </ul>
                </p>
                <hr/>
            </div>
        </div>
    </div>
    <script src="{{ asset('public/assets/vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('public/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    @include('layouts.footer')
</div>
    @include('layouts.script')
</body>
</html>