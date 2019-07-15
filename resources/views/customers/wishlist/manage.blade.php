@include('layouts.header')
    <div class="main-content shop-page main-content-grid">
        <div class="container">
            <div class="breadcrumbs">
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-7 col-md-8 col-lg-9 content-offset">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h4><b>My Wishlist</b></h4>
                        </div>
                        <div class="panel-body wishlist-panel">
                            <div class="table-responsive">
                                <table class="table table-striped wishlist-table">
                                    <thead class="bg-info order-details">
                                        <tr>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if(!empty($wishlist))
                                            @foreach($wishlist as $row)
                                        <tr>
                                            <td>
                                            <img src="{{ $row['image'] }}" height="30" alt="{{ $row['image_alt'] }}">
                                            </td>
                                            <td>{{ $row['name'] }} <a href="{{ route('delete_wishlist', $row['id']) }}"><i class="fa fa-trash"></i></a></td>
                                            <td>{{ $row['cost_price'] }}</td>
                                            <td><a href="{{ route('product_details', $row['slug']) }}" class="btn btn-info"><i class="fa fa-shopping-cart"></i></a></td>
                                            <td></td>
                                        </tr>
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        {{ $wishlist[0]['pagination'] }}
                    </div>
                </div>
                @include('customers.layouts.navigation')
            </div>
        </div>
    </div>
@include('layouts.footer')