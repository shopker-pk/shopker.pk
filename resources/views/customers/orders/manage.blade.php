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
                                <b>My Orders</b>
                            </h4>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <!-- Classic tabs -->
                                        <div class="classic-tabs">
                                            <ul class="nav tabs-cyan" id="myClassicTab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link waves-light active show" id="all-tab-classic" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">All</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link waves-light" id="pending-tab-classic" data-toggle="tab" href="#pending" role="tab" aria-controls="pending" aria-selected="false">Pending</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link waves-light" id="in_process-tab-classic" data-toggle="tab" href="#in_process" role="tab" aria-controls="in_process" aria-selected="false">In Process</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link waves-light" id="ready_to_ship-tab-classic" data-toggle="tab" href="#ready_to_ship" role="tab" aria-controls="ready_to_ship" aria-selected="false">Ready to Ship</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link waves-light" id="shipped-tab-classic" data-toggle="tab" href="#shipped" role="tab" aria-controls="shipped" aria-selected="false">Shipped</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link waves-light" id="delivered-tab-classic" data-toggle="tab" href="#delivered" role="tab" aria-controls="delivered" aria-selected="false">Delivered</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link waves-light" id="cancelled-tab-classic" data-toggle="tab" href="#cancelled" role="tab" aria-controls="cancelled" aria-selected="false">Cancelled</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content border-right border-bottom border-left rounded-bottom" id="myClassicTabContent">
                                                <!--All Orders-->
                                                <div class="tab-pane fade active show" id="all" role="tabpanel" aria-labelledby="all-tab-classic">
                                                    <div class="row pt-4 pr-3">
                                                        <div class="col-md-12">
                                                            @if(!empty($all_orders))
                                                                @foreach($all_orders as $row)
                                                            <div class="userpersnalinfo1 ml-3 mt-3 mb-3">
                                                                <div class="row pl-3 pt-1 pb-2" style=" border-bottom: 1px solid black;">
                                                                    <div class="col-md-4 pt-2">
                                                                        <div style="font-size: 14px; color: black;">Order <a href="">{{ $row['order_no'] }}</a> </div>
                                                                        <div style="font-size: 12px; color: black;">Placed on {{ $row['order_date_time'] }}</div>
                                                                    </div>
                                                                    <div class="col-md-6"></div>
                                                                    <div class="col-md-2 pt-3">
                                                                        <a href="#">MANAGER</a>
                                                                    </div>
                                                                </div>
                                                                <div class="row pl-3 pt-4 pb-2">
                                                                    <div class="col-md-2" align="center">
                                                                        <img src="{{ $row['featured_image'] }}" width="80" height="80">
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <p style="font-size: 14px; padding-top: 10px; color: black;">{{ $row['name'] }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p>Qty : {{ $row['quantity']  }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p class="orderstatus">{{ $row['order_status'] }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                                @endforeach
                                                            @else
                                                                No Orders Found !!
                                                            @endif
                                                        </div>
                                                    </div>
                                                    {{ $all_orders[0]['pagination'] }}
                                                </div>
                                                <!--Pending Orders-->
                                                <div class="tab-pane fade" id="pending" role="tabpanel" aria-labelledby="pending-tab-classic">
                                                    <div class="row pt-4 pr-3">
                                                        <div class="col-md-12">
                                                            @if(!empty($pending_orders))
                                                                @foreach($pending_orders as $row)
                                                            <div class="userpersnalinfo1 ml-3 mt-3 mb-3">
                                                                <div class="row pl-3 pt-1 pb-2" style=" border-bottom: 1px solid black;">
                                                                    <div class="col-md-4 pt-2">
                                                                        <div style="font-size: 14px; color: black;">Order <a href="">{{ $row['order_no'] }}</a> </div>
                                                                        <div style="font-size: 12px; color: black;">Placed on {{ $row['order_date_time'] }}</div>
                                                                    </div>
                                                                    <div class="col-md-6"></div>
                                                                    <div class="col-md-2 pt-3">
                                                                        <a href="#">MANAGER</a>
                                                                    </div>
                                                                </div>
                                                                <div class="row pl-3 pt-4 pb-2">
                                                                    <div class="col-md-2" align="center">
                                                                        <img src="{{ $row['featured_image'] }}" width="80" height="80">
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <p style="font-size: 14px; padding-top: 10px; color: black;">{{ $row['name'] }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p>Qty : {{ $row['quantity']  }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p class="orderstatus">{{ $row['order_status'] }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                                @endforeach
                                                            @else
                                                                No Orders Found !!
                                                            @endif
                                                        </div>
                                                    </div>
                                                    {{ $all_orders[0]['pagination'] }}
                                                </div>
                                                <!-- In Process Orders-->
                                                <div class="tab-pane fade" id="in_process" role="tabpanel" aria-labelledby="in_process-tab-classic">
                                                    <div class="row pt-4 pr-3">
                                                        <div class="col-md-12">
                                                            @if(!empty($in_process_orders))
                                                                @foreach($in_process_orders as $row)
                                                            <div class="userpersnalinfo1 ml-3 mt-3 mb-3">
                                                                <div class="row pl-3 pt-1 pb-2" style=" border-bottom: 1px solid black;">
                                                                    <div class="col-md-4 pt-2">
                                                                        <div style="font-size: 14px; color: black;">Order <a href="">{{ $row['order_no'] }}</a> </div>
                                                                        <div style="font-size: 12px; color: black;">Placed on {{ $row['order_date_time'] }}</div>
                                                                    </div>
                                                                    <div class="col-md-6"></div>
                                                                    <div class="col-md-2 pt-3">
                                                                        <a href="#">MANAGER</a>
                                                                    </div>
                                                                </div>
                                                                <div class="row pl-3 pt-4 pb-2">
                                                                    <div class="col-md-2" align="center">
                                                                        <img src="{{ $row['featured_image'] }}" width="80" height="80">
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <p style="font-size: 14px; padding-top: 10px; color: black;">{{ $row['name'] }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p>Qty : {{ $row['quantity']  }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p class="orderstatus">{{ $row['order_status'] }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                                @endforeach
                                                            @else
                                                                No Orders Found !!
                                                            @endif
                                                        </div>
                                                    </div>
                                                    {{ $in_process_orders[0]['pagination'] }}
                                                </div>
                                                <!-- Ready To Ship Orders-->
                                                <div class="tab-pane fade" id="ready_to_ship" role="tabpanel" aria-labelledby="ready_to_ship-tab-classic">
                                                    <div class="row pt-4 pr-3">
                                                        <div class="col-md-12">
                                                            @if(!empty($ready_to_ship_orders))
                                                                @foreach($ready_to_ship_orders as $row)
                                                            <div class="userpersnalinfo1 ml-3 mt-3 mb-3">
                                                                <div class="row pl-3 pt-1 pb-2" style=" border-bottom: 1px solid black;">
                                                                    <div class="col-md-4 pt-2">
                                                                        <div style="font-size: 14px; color: black;">Order <a href="">{{ $row['order_no'] }}</a> </div>
                                                                        <div style="font-size: 12px; color: black;">Placed on {{ $row['order_date_time'] }}</div>
                                                                    </div>
                                                                    <div class="col-md-6"></div>
                                                                    <div class="col-md-2 pt-3">
                                                                        <a href="#">MANAGER</a>
                                                                    </div>
                                                                </div>
                                                                <div class="row pl-3 pt-4 pb-2">
                                                                    <div class="col-md-2" align="center">
                                                                        <img src="{{ $row['featured_image'] }}" width="80" height="80">
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <p style="font-size: 14px; padding-top: 10px; color: black;">{{ $row['name'] }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p>Qty : {{ $row['quantity']  }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p class="orderstatus">{{ $row['order_status'] }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                                @endforeach
                                                            @else
                                                                No Orders Found !!
                                                            @endif
                                                        </div>
                                                    </div>
                                                    {{ $ready_to_ship_orders[0]['pagination'] }}
                                                </div>
                                                <!-- Shipped Orders-->
                                                <div class="tab-pane fade" id="shipped" role="tabpanel" aria-labelledby="shipped-tab-classic">
                                                    <div class="row pt-4 pr-3">
                                                        <div class="col-md-12">
                                                            @if(!empty($shipped_orders))
                                                                @foreach($shipped_orders as $row)
                                                            <div class="userpersnalinfo1 ml-3 mt-3 mb-3">
                                                                <div class="row pl-3 pt-1 pb-2" style=" border-bottom: 1px solid black;">
                                                                    <div class="col-md-4 pt-2">
                                                                        <div style="font-size: 14px; color: black;">Order <a href="">{{ $row['order_no'] }}</a> </div>
                                                                        <div style="font-size: 12px; color: black;">Placed on {{ $row['order_date_time'] }}</div>
                                                                    </div>
                                                                    <div class="col-md-6"></div>
                                                                    <div class="col-md-2 pt-3">
                                                                        <a href="#">MANAGER</a>
                                                                    </div>
                                                                </div>
                                                                <div class="row pl-3 pt-4 pb-2">
                                                                    <div class="col-md-2" align="center">
                                                                        <img src="{{ $row['featured_image'] }}" width="80" height="80">
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <p style="font-size: 14px; padding-top: 10px; color: black;">{{ $row['name'] }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p>Qty : {{ $row['quantity']  }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p class="orderstatus">{{ $row['order_status'] }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                                @endforeach
                                                            @else
                                                                No Orders Found !!
                                                            @endif
                                                        </div>
                                                    </div>
                                                    {{ $shipped_orders[0]['pagination'] }}
                                                </div>
                                                <!-- Delivered Orders-->
                                                <div class="tab-pane fade" id="delivered" role="tabpanel" aria-labelledby="delivered-tab-classic">
                                                    <div class="row pt-4 pr-3">
                                                        <div class="col-md-12">
                                                            @if(!empty($delivered_orders))
                                                                @foreach($delivered_orders as $row)
                                                            <div class="userpersnalinfo1 ml-3 mt-3 mb-3">
                                                                <div class="row pl-3 pt-1 pb-2" style=" border-bottom: 1px solid black;">
                                                                    <div class="col-md-4 pt-2">
                                                                        <div style="font-size: 14px; color: black;">Order <a href="">{{ $row['order_no'] }}</a> </div>
                                                                        <div style="font-size: 12px; color: black;">Placed on {{ $row['order_date_time'] }}</div>
                                                                    </div>
                                                                    <div class="col-md-6"></div>
                                                                    <div class="col-md-2 pt-3">
                                                                        <a href="#">MANAGER</a>
                                                                    </div>
                                                                </div>
                                                                <div class="row pl-3 pt-4 pb-2">
                                                                    <div class="col-md-2" align="center">
                                                                        <img src="{{ $row['featured_image'] }}" width="80" height="80">
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <p style="font-size: 14px; padding-top: 10px; color: black;">{{ $row['name'] }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p>Qty : {{ $row['quantity']  }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p class="orderstatus">{{ $row['order_status'] }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                                @endforeach
                                                            @else
                                                                No Orders Found !!
                                                            @endif
                                                        </div>
                                                    </div>
                                                    {{ $delivered_orders[0]['pagination'] }}
                                                </div>
                                                <!--Cancelled Orders-->
                                                <div class="tab-pane fade" id="cancelled" role="tabpanel" aria-labelledby="cancelled-tab-classic">
                                                    <div class="row pt-4 pr-3">
                                                        <div class="col-md-12">
                                                            @if(!empty($canceled_orders))
                                                                @foreach($canceled_orders as $row)
                                                            <div class="userpersnalinfo1 ml-3 mt-3 mb-3">
                                                                <div class="row pl-3 pt-1 pb-2" style=" border-bottom: 1px solid black;">
                                                                    <div class="col-md-4 pt-2">
                                                                        <div style="font-size: 14px; color: black;">Order <a href="">{{ $row['order_no'] }}</a> </div>
                                                                        <div style="font-size: 12px; color: black;">Placed on {{ $row['order_date_time'] }}</div>
                                                                    </div>
                                                                    <div class="col-md-6"></div>
                                                                    <div class="col-md-2 pt-3">
                                                                        <a href="#">MANAGER</a>
                                                                    </div>
                                                                </div>
                                                                <div class="row pl-3 pt-4 pb-2">
                                                                    <div class="col-md-2" align="center">
                                                                        <img src="{{ $row['featured_image'] }}" width="80" height="80">
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <p style="font-size: 14px; padding-top: 10px; color: black;">{{ $row['name'] }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p>Qty : {{ $row['quantity']  }}</p>
                                                                    </div>
                                                                    <div class="col-md-1 pt-3">
                                                                        <p class="orderstatus">{{ $row['order_status'] }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                                @endforeach
                                                            @else
                                                                No Orders Found !!
                                                            @endif                                                 
                                                        </div>
                                                    </div>
                                                    {{ $canceled_orders[0]['pagination'] }}
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
        </div>
    </div>
    @include('layouts.footer')
</body>

</html>