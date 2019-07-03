@include('layouts.header')
    <div class="main-content shop-page main-content-grid">
        <div class="container">
            <div class="breadcrumbs">
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-7 col-md-8 col-lg-9 content-offset">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h4><b>My Orders</b></h4>
                        </div>
                        <div class="panel-body">
                            <div class="panel">
                                <div class="panel-heading">
                                    <ul class="nav nav-pills">
                                        <li class="active"><a href="#all" data-toggle="tab">All</a></li>
                                        <li><a href="#pending" data-toggle="tab">Pending</a></li>
                                        <li><a href="#process" data-toggle="tab">In Process</a></li>
                                        <li><a href="#readyforship" data-toggle="tab">Ready to Ship</a></li>
                                        <li><a href="#shipped" data-toggle="tab">Shipped</a></li>
                                        <li><a href="#delivered" data-toggle="tab">Delivered</a></li>
                                        <li><a href="#cancelled" data-toggle="tab">Cancelled</a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">
                                    <div class="tab-content">
                                        <div id="all" class="tab-pane fade in active">
                                            @if(!empty($all_orders))
                                                @foreach($all_orders as $row)
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <div class="table-responsive">
                                                        <table class="table table-striped">
                                                            <thead class="bg-info order-details">
                                                                <tr>
                                                                    <th>
                                                                        Order #{{ $row['order_no'] }}<br>
                                                                        Placed on {{ $row['order_date_time'] }}
                                                                    </th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                    <img src="{{ $row['featured_image'] }}" height="30">
                                                                    </td>
                                                                    <td>{{ $row['name'] }}</td>
                                                                    <td>Qty:{{ $row['quantity'] }}</td>
                                                                    <td><p class="status-badge">{{ $row['order_status'] }}</p></td>
                                                                    <td></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                                @endforeach
                                            @endif
                                            {{ $all_orders[0]['pagination'] }}
                                        </div>
                                        <div id="pending" class="tab-pane fade in">
                                            @if(!empty($pending_orders))
                                                @foreach($pending_orders as $row)
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <div class="table-responsive">
                                                        <table class="table table-striped">
                                                            <thead class="bg-info order-details">
                                                                <tr>
                                                                    <th>
                                                                        Order #{{ $row['order_no'] }}<br>
                                                                        Placed on {{ $row['order_date_time'] }}
                                                                    </th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                    <img src="{{ $row['featured_image'] }}" height="30">
                                                                    </td>
                                                                    <td>{{ $row['name'] }}</td>
                                                                    <td>Qty:{{ $row['quantity'] }}</td>
                                                                    <td><p class="status-badge">{{ $row['order_status'] }}</p></td>
                                                                    <td></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                                @endforeach
                                            @endif
                                            {{ $pending_orders[0]['pagination'] }}
                                        </div>
                                        <div id="process" class="tab-pane fade in">
                                            @if(!empty($in_process_orders))
                                                @foreach($in_process_orders as $row)
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <div class="table-responsive">
                                                        <table class="table table-striped">
                                                            <thead class="bg-info order-details">
                                                                <tr>
                                                                    <th>
                                                                        Order #{{ $row['order_no'] }}<br>
                                                                        Placed on {{ $row['order_date_time'] }}
                                                                    </th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                    <img src="{{ $row['featured_image'] }}" height="30">
                                                                    </td>
                                                                    <td>{{ $row['name'] }}</td>
                                                                    <td>Qty:{{ $row['quantity'] }}</td>
                                                                    <td><p class="status-badge">{{ $row['order_status'] }}</p></td>
                                                                    <td></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                                @endforeach
                                            @endif
                                            {{ $in_process_orders[0]['pagination'] }}
                                        </div>
                                        <div id="readyforship" class="tab-pane fade in">
                                            @if(!empty($ready_to_ship_orders))
                                                @foreach($ready_to_ship_orders as $row)
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <div class="table-responsive">
                                                        <table class="table table-striped">
                                                            <thead class="bg-info order-details">
                                                                <tr>
                                                                    <th>
                                                                        Order #{{ $row['order_no'] }}<br>
                                                                        Placed on {{ $row['order_date_time'] }}
                                                                    </th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                    <img src="{{ $row['featured_image'] }}" height="30">
                                                                    </td>
                                                                    <td>{{ $row['name'] }}</td>
                                                                    <td>Qty:{{ $row['quantity'] }}</td>
                                                                    <td><p class="status-badge">{{ $row['order_status'] }}</p></td>
                                                                    <td></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                                @endforeach
                                            @endif
                                            {{ $ready_to_ship_orders[0]['pagination'] }}
                                        </div>
                                        <div id="shipped" class="tab-pane fade in">
                                            @if(!empty($shipped_orders))
                                                @foreach($shipped_orders as $row)
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <div class="table-responsive">
                                                        <table class="table table-striped">
                                                            <thead class="bg-info order-details">
                                                                <tr>
                                                                    <th>
                                                                        Order #{{ $row['order_no'] }}<br>
                                                                        Placed on {{ $row['order_date_time'] }}
                                                                    </th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                    <img src="{{ $row['featured_image'] }}" height="30">
                                                                    </td>
                                                                    <td>{{ $row['name'] }}</td>
                                                                    <td>Qty:{{ $row['quantity'] }}</td>
                                                                    <td><p class="status-badge">{{ $row['order_status'] }}</p></td>
                                                                    <td></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                                @endforeach
                                            @endif
                                            {{ $shipped_orders[0]['pagination'] }}
                                        </div>
                                        <div id="delivered" class="tab-pane fade in">
                                            @if(!empty($delivered_orders))
                                                @foreach($delivered_orders as $row)
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <div class="table-responsive">
                                                        <table class="table table-striped">
                                                            <thead class="bg-info order-details">
                                                                <tr>
                                                                    <th>
                                                                        Order #{{ $row['order_no'] }}<br>
                                                                        Placed on {{ $row['order_date_time'] }}
                                                                    </th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                    <img src="{{ $row['featured_image'] }}" height="30">
                                                                    </td>
                                                                    <td>{{ $row['name'] }}</td>
                                                                    <td>Qty:{{ $row['quantity'] }}</td>
                                                                    <td><p class="status-badge">{{ $row['order_status'] }}</p></td>
                                                                    <td></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                                @endforeach
                                            @endif
                                            {{ $delivered_orders[0]['pagination'] }}
                                        </div>
                                        <div id="cancelled" class="tab-pane fade in">
                                            @if(!empty($canceled_orders))
                                                @foreach($canceled_orders as $row)
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <div class="table-responsive">
                                                        <table class="table table-striped">
                                                            <thead class="bg-info order-details">
                                                                <tr>
                                                                    <th>
                                                                        Order #{{ $row['order_no'] }}<br>
                                                                        Placed on {{ $row['order_date_time'] }}
                                                                    </th>
                                                                    <th></th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                    <img src="{{ $row['featured_image'] }}" height="30">
                                                                    </td>
                                                                    <td>{{ $row['name'] }}</td>
                                                                    <td>Qty:{{ $row['quantity'] }}</td>
                                                                    <td><p class="status-badge">{{ $row['order_status'] }}</p></td>
                                                                    <td></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                                @endforeach
                                            @endif
                                            {{ $canceled_orders[0]['pagination'] }}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @include('customers.layouts.navigation')
            </div>
        </div>
    </div>
@include('layouts.footer')