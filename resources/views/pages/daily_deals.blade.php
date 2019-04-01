<!DOCTYPE html>
<html lang="en">

<head>
    <title>Shopker</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="OneTech shop project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>

    @include('layouts.style')
    <style type="text/css">
        .cat_menu_container ul {
            display: none;
        }
        
        .cat_menu_container:hover ul {
            display: block;
        }
        
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
            bottom: -30px;
        }
        
        .carousel-indicators li {
            border-radius: 0;
            width: 10px;
            height: 10px;
            background: green;
            border: 1px solid #ccc;
        }
        
        .carousel-indicators .active {
            width: 12px;
            height: 12px;
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
</head>

<body>
    @include('layouts.header') 
    @include('layouts.navigation')
    <div class="container-fluid" style="margin-bottom: 10px; padding: 0px; overflow: hidden;">
        <div class="row">
            <div class="col-md-12">
                <div class="vendorbanner">
                    <img src="{{ asset('public/assets/images/daily.jpg') }}" width="100%">
                </div>
            </div>
        </div>
    </div>
    <div class="container" style="margin-bottom: 100px;">
        @include('layouts.messages')
        <section id="service">
            <div class="row" style="margin-top: 10px;">
                <div class="col-md-10">
                    <div class="row ">
                        <div class="col">
                            <div class="container-fluid">
                                <div class="row" style="margin-top: 10px;">
                                    @if(!empty($daily_deals))
                                        @foreach($daily_deals as $row)
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
                                    @else
                                        No Product Found !!
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9"></div>
                        <div class="col-md-3" align="right">
                            {{ $daily_deals[0]['pagination'] }}
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <script type="text/javascript">
        // RangeSlider Workaround
        const comission = document.querySelector('#comission input');
        const comissionLabel = document.getElementById('comissionLabel');
        const comissionLabelPrefix = comissionLabel.innerHTML;
        const comissionRange = document.createElement('label');

        comissionRange.id = 'rangeLimits';
        comissionRange.className = 'row';
        comissionRange.innerHTML = `<span class="col-6 text-left">${comission.getAttribute('min')}</span><span class="col-6 text-right">${comission.getAttribute('max')}</span>`;
        document.querySelector('#comission').appendChild(comissionRange);

        comissionLabel.innerHTML = `${comissionLabelPrefix}${comission.value}%`;

        comission.addEventListener('input', function() {
            comissionLabel.innerHTML = `${comissionLabelPrefix}${Number(comission.value).toFixed(2)}%`;
        }, false);

        // Bootstrap Tooltips Actuivation
        $(function() {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>
    @include('layouts.footer')
</body>

</html>