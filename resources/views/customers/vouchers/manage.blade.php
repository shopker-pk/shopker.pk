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
                                <b>My Vouchers</b>
                            </h4>
                            <div class="card-body" id="tableoverflow">
                                <table class="table">
                                    <thead class="bg-light">
                                        <th>Active</th>
                                        <th>Uses</th>
                                        <th>Voucher Code</th>
                                        <th>Valid Form</th>
                                        <th>Valid Until</th>
                                        <th>Value</th>
                                    </thead>
                                    <tbody>
                                        @if(!empty($vouchers))
                                            @foreach($vouchers as $row)
                                        <tr>
                                            <td style="width: 142px;"><p class="mt-3 text-dark recentorderdate">Active</p></td>
                                            <td style="width: 160px;">
                                                <p class="mt-3 text-dark recentorderdate">{{ $row['used_date'] }}</p>
                                            </td>
                                            <td style="width: 157px;">
                                                <p class="mt-3 text-dark recentorderdate">{{ $row['code'] }}</p>
                                            </td>
                                            <td style="width: 146px;">
                                                <p class="mt-3 text-dark recentorderdate">{{ $row['start_date'] }}</p>
                                            </td>
                                            <td style="width: 120px;">
                                                <p class="mt-3 text-dark recentorderdate">{{ $row['end_date'] }}</p>
                                            </td>
                                            <td style="width: 120px;">
                                                <p class="mt-3 text-dark recentorderdate">{{ $row['discount_offer'] }}</p>
                                            </td>
                                        </tr>
                                            @endforeach
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
    @include('layouts.footer')
</body>

</html>