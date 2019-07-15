@include('layouts.header')
    <div class="main-content shop-page main-content-grid">
        <div class="container">
            @include('layouts.messages')
            <div class="breadcrumbs">
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-7 col-md-8 col-lg-9 content-offset">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h4><b>Manage My Account</b></h4>
                        </div>
                        <div class="panel-body">
                            <div class="panel">
                                <div class="panel-body personal-account">
                                    <h4>Personal Account</h4> | <a href="{{ route('edit_profile_settings') }}">Edit</a>
                                    <h5>{{ $customer_details[0]['first_name'].' '.$customer_details[0]['last_name'] }}</h5>
                                    <p>{{ $customer_details[0]['email'] }}</p>
                                    <p>{{ $customer_details[0]['phone_no'] }}</p>
                                    <p><a href="#"><b>Subscribe to our newsletter</b></a></p>
                                </div>
                            </div>
                            <h4>Recent Orders</h4>
                            <div class="table-responsive">
                                <table class="table table-responsive table-striped">
                                    <thead class="bg-info">
                                        <th>Order</th>
                                        <th>Placed on</th>
                                        <th>Items</th>
                                        <th>Total</th>
                                    </thead>
                                    <tbody>
                                        @if(!empty($orders))
                                            @foreach($orders as $row)
                                        <tr>
                                            <td>{{ $row['order_no'] }}</td>
                                            <td>{{ $row['order_date'] }}</td>
                                            <td><img src="{{ $row['featured_image'] }}" height="30"></td>
                                            <td>{{ $row['total'] }}</td>
                                        </tr>
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                @include('customers.layouts.navigation')
            </div>
        </div>
    </div> 
@include('layouts.footer')