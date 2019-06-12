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
                                <b>Manage My Account</b>
                            </h4>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="userpersnalinfo pl-3" style="padding-bottom: 45px;">
                                            <div class=" pb-3 pt-2" style="font-size: 16px; color: black;">Personal Account
                                                <span style="font-size: 12px;">| <a href="{{ route('edit_profile_settings') }}" style="text-decoration: none;"> Edit</a></span>
                                            </div>
                                            <h5 class="pl-4">{{ $customer_details[0]['first_name'].' '.$customer_details[0]['last_name'] }}</h5>
                                            <h5 class="pl-4">{{ $customer_details[0]['email'] }}</h5>
                                            <h5 class="pl-4">{{ $customer_details[0]['phone_no'] }}</h5>
                                            <a href="#" style="text-decoration: none;"><h5 class="pl-4 mt-5">Subscribe to our Newsletter</h5></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="row pt-4">
                                    <div class="col-md-12">
                                        <div class="userpersnalinfo3" id="tableoverflow">
                                            <h4 class="pl-3">Recent Orders</h4>
                                            <table class="table">
                                                <thead class="bg-light">
                                                    <th>Order #</th>
                                                    <th>Placed On</th>
                                                    <th>Items</th>
                                                    <th>Total</th>
                                                    <th></th>
                                                </thead>
                                                <tbody>
                                                    @if(!empty($orders))
                                                        @foreach($orders as $row)
                                                    <tr>
                                                        <td style="width: 142px;">
                                                            <p class="mt-3 text-dark">{{ $row['order_no'] }}</p>
                                                        </td>
                                                        <td style="width: 160px;">
                                                            <p class="mt-3 text-dark recentorderdate">{{ $row['order_date'] }}</p>
                                                        </td>
                                                        <td style="width: 297px;">
                                                            <img src="{{ $row['featured_image'] }}" width="40" height="40">
                                                        </td>
                                                        <td>
                                                            <p class="mt-3 text-dark recentorderdate">{{ $row['total'] }}</p>
                                                        </td>
                                                        <td style="width: 120px;">
                                                            <a href="#" style="text-decoration: none;">
                                                                <p style="font-size: 14px;color: blue; padding-top: 10px;">Manage</p>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                        @endforeach
                                                    @else
                                                        No Orders Found !!
                                                    @endif
                                                </tbody>
                                            </table>
                                        </div>
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
</body>

</html>