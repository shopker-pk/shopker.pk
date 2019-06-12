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
                        <div class="card-body">
                            <div class="reviewproductoption">
                                <form action="{{ route('insert_order_reviews', $order_no) }}" method="post">
                                    {{ csrf_field() }}
                                    <div class="row">
                                        <div class="col-md-8">
                                            <h4>HOW DO YOU RATE THIS ORDER?</h4>
                                            <div class="row mb-5">
                                                <div class="col-md-12">
                                                    <div class="rate">
                                                        <input type="radio" id="star5" name="rate" value="5" />
                                                        <label for="star5" title="text" style="font-size: 40px;">5 stars</label>
                                                        <input type="radio" id="star4" name="rate" value="4" />
                                                        <label for="star4" title="text" style="font-size: 40px;">4 stars</label>
                                                        <input type="radio" id="star3" name="rate" value="3" />
                                                        <label for="star3" title="text"style="font-size: 40px;" >3 stars</label>
                                                        <input type="radio" id="star2" name="rate" value="2" />
                                                        <label for="star2" title="text"style="font-size: 40px;">2 stars</label>
                                                        <input type="radio" id="star1" name="rate" value="1" />
                                                        <label for="star1" title="text"style="font-size: 40px;">1 star</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <h4>WRITE YOUR OWN REVIEW</h4>
                                            <div class="row">
                                                <div class="col-md-12 form-group">
                                                    <label>Review</label>
                                                    <textarea class="form-control" id="review" name="review" rows="7"></textarea>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-2 form-group">
                                                    <button class="btn btnview1">Send</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
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