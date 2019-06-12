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
                                <b>My Orders Reviews</b>
                            </h4>
                            <div class="card-body" id="tableoverflow">
                                <table class="table">
                                    <thead class="bg-light">
                                        <th>Order NO#</th>
                                        <th>Your Review</th>
                                        <th>Vendor Review</th>
                                    </thead>
                                    <tbody>
                                        @if(!empty($orders_reviews))
                                            @foreach($orders_reviews as $row)
                                        <tr>
                                            <td style="width: 142px;"><p class="mt-3 text-dark recentorderdate">{{ $row['order_no'] }}</p></td>
                                            <td style="width: 424px;">
                                                @if(!empty($row['buyer_comment']))
                                                <div align="left" class="ratings">
                                                @if($row['buyer_stars'] == 5)
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                @elseif($row['buyer_stars'] == 4)
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                @elseif($row['buyer_stars'] == 3)
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                @elseif($row['buyer_stars'] == 2)
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                @elseif($row['buyer_stars'] == 1)
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
                                                <p class="mt-2 text-dark">{{ $row['buyer_review_date'].' '.$row['buyer_review_time'] }}</p>
                                                <p class="text-dark">{{ $row['buyer_comment'] }}</p>
                                                @else
                                                    <a href="{{ route('add_order_review', $row['order_no']) }}"><p class="text-primary">Reply</p></a>
                                                @endif
                                            </td>
                                            <td style="width: 424px;">
                                                <p class="mt-2 text-dark">{{ $row['store_name'] }}</p>
                                                @if(!empty($row['vendor_comment']))
                                                <div align="left" class="ratings">
                                                @if($row['vendor_stars'] == 5)
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                @elseif($row['vendor_stars'] == 4)
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                @elseif($row['vendor_stars'] == 3)
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                @elseif($row['vendor_stars'] == 2)
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#008000;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                                @elseif($row['vendor_stars'] == 1)
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
                                                <p class="mt-2 text-dark">{{ $row['vendor_review_date'].' '.$row['vendor_review_time'] }}</p>
                                                <p class="text-dark">{{ $row['vendor_comment'] }}</p>
                                                @else
                                                    No review given by seller.
                                                @endif
                                            </td>
                                        </tr>
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        {{ $orders_reviews[0]['pagination'] }}
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('layouts.footer')
</body>

</html>