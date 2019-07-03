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
                            <h4><b>My Vouchers</b></h4>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-responsive table-striped">
                                    <thead class="bg-info">
                                        <th>Active</th>
                                        <th>Uses</th>
                                        <th>Voucher Code</th>
                                        <th>Valid From</th>
                                        <th>Valid Until</th>
                                        <th>Value</th>
                                    </thead>
                                    <tbody>
                                        @if(!empty($vouchers))
                                            @foreach($vouchers as $row)
                                        <tr>
                                            <td>Active</td>
                                            <td>{{ $row['used_date'] }}</td>
                                            <td>{{ $row['code'] }}</td>
                                            <td>{{ $row['start_date'] }}</td>
                                            <td>{{ $row['end_date'] }}</td>
                                            <td>{{ $row['discount_offer'] }}</td>
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