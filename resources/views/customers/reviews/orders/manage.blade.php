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
                            <h4><b>My Orders Reviews</b></h4>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-responsive table-striped">
                                    <thead class="bg-info">
                                        <th>Order NO#</th>
                                        <th>Your Review</th>
                                        <th>Vendor Review</th>
                                    </thead>
                                    <tbody>
                                        @if(!empty($orders_reviews))
                                            @foreach($orders_reviews as $row)
                                        <tr>
                                            <td>{{ $row['order_no'] }}</td>
                                            <td>
                                                @if(!empty($row['buyer_comment']))
                                                <div class="rating">
                                                    <ul class="list-star">
                                                        @if($row['buyer_stars'] == 5)
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        @elseif($row['buyer_stars'] == 4)
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        @elseif($row['buyer_stars'] == 3)
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        @elseif($row['buyer_stars'] == 2)
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        @elseif($row['buyer_stars'] == 1)
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        @else
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        @endif
                                                    </ul>
                                                </div>
                                                <br>
                                                <br>
                                                <p>{{ $row['buyer_review_date'].' '.$row['buyer_review_time'] }}</p>
                                                <p>{{ $row['buyer_comment'] }}</p>
                                                @else
                                                <a href="javascript::void(0);" data-toggle="modal" data-target="#reviewsModal_{{ $row['order_no'] }}">Reply</a>
                                                @endif
                                            </td>
                                            <td>
                                                <p>{{ $row['store_name'] }}</p>
                                                @if(!empty($row['vendor_comment']))
                                                <div class="rating">
                                                    <ul class="list-star">
                                                        @if($row['vendor_stars'] == 5)
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        @elseif($row['vendor_stars'] == 4)
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        @elseif($row['vendor_stars'] == 3)
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        @elseif($row['vendor_stars'] == 2)
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        @elseif($row['vendor_stars'] == 1)
                                                        <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        @else
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        @endif
                                                    </ul>
                                                </div>
                                                <p>{{ $row['vendor_review_date'].' '.$row['vendor_review_time'] }}</p>
                                                <p>{{ $row['vendor_comment'] }}</p>
                                                @endif
                                            </td>
                                        </tr>
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                                @if(!empty($orders_reviews))
                                    @foreach($orders_reviews as $row)
                                <div class="modal fade" id="reviewsModal_{{ $row['order_no'] }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title text-uppercase" id="exampleModalLabel">How do you rate order NO#:{{ $row['order_no'] }}</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <form action="{{ route('insert_order_reviews', $row['order_no']) }}" method="post">
                                                {{ csrf_field() }}
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <div class="add-review">
                                                                <div class="rating">
                                                                    <span class="text">Your rating</span>
                                                                    <form>
                                                                        <fieldset>
                                                                            <span class="star-cb-group">
                                                                                <input type="radio" id="rating-5" name="rate" value="5" /><label for="rating-5">5</label>
                                                                                <input type="radio" id="rating-4" name="rate" value="4" /><label for="rating-4">4</label>
                                                                                <input type="radio" id="rating-3" name="rate" value="3" /><label for="rating-3">3</label>
                                                                                <input type="radio" id="rating-2" name="rate" value="2" /><label for="rating-2">2</label>
                                                                                <input type="radio" id="rating-1" name="rate" value="1" /><label for="rating-1">1</label>
                                                                                <input type="radio" id="rating-0" name="rate" value="0" class="star-cb-clear" /><label for="rating-0">0</label>
                                                                            </span>
                                                                        </fieldset>
                                                                    </form>
                                                                </div>
                                                                <textarea id="review" name="review" rows="6" class="input-info input-content" placeholder="Your review"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row modal-footer">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-success">Add</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                        {{ $orders_reviews[0]['pagination'] }}
                    </div>
                </div>
                @include('customers.layouts.navigation')
            </div>
        </div>
    </div>
@include('layouts.footer')