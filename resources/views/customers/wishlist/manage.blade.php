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
</head>

<body>
    @include('layouts.header') 
    @include('layouts.navigation')
    @include('layouts.messages')
    <div class="container">
        <div class="row" style="margin-bottom: 100px;">
            <div class="col-md-12 mb-5">
                <div class="row mt-5">
                    <div class="col-md-2">
                        @include('customers.layouts.navigation')
                    </div>
                    <div class="col-md-10">
                        <div class="card card-info">
                            <h4 class="card-header text-white" style="background-image: linear-gradient(to right,green, #31f93f)">
                                <b>My Wishlist</b>
                            </h4>
                            <div class="card-body" id="tableoverflow">
                                @if(!empty($wishlist))
                                    @foreach($wishlist as $row)
                                <div class="userpersnalinfo1 ml-3 mt-3 mb-3 pb-3">
                                    <div class="row pl-3 pt-4 pb-2">
                                        <div class="col-md-2" align="center">
                                            <img src="{{ $row['image'] }}" width="80" height="80" alt="{{ $row['image_alt'] }}">
                                        </div>
                                        <div class="col-md-5 followstoretextalign">
                                            <p style="font-size: 14px; padding-top: 10px; color: black;">{{ $row['name'] }}</p>
                                            <a href="{{ route('delete_wishlist', $row['id']) }}">
                                                <i class="far fa-trash-alt" style="font-size: 17px; margin-top: 6px;"></i>
                                            </a>
                                        </div>
                                        <div class="col-md-2 followstoretextalign">
                                            <div style="font-size: 18px; color: #008000;">{{ $row['cost_price'] }}</div>
                                            <div style="font-size: 14px;"><strike>{{ $row['sale_price'] }}</strike>
                                                @if($row['total_discount'] > 0)
                                                <span style="margin-left: 5px; font-size: 15px; color: black;">{{ $row['total_discount'] }}%</span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-2" align="center">
                                            <a href="{{ route('product_details', $row['slug']) }}">
                                                <button class="btn btnview1"><i class="fas fa-cart-plus"></i></button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                    @endforeach
                                @else
                                    No product found in wishlist !!
                                @endif
                            </div>
                        </div>
                        {{ $wishlist[0]['pagination'] }}
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('layouts.footer')
</body>

</html>