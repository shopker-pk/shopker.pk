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
                                <b>My Profile</b>
                            </h4>
                            <div class="card-body">
                                <form action="{{ route('update_profile_settings') }}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="userpersnalinfo pl-3">
                                                <div class="row pr-4">
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">First Name</div>
                                                        <input type="text" id="first_name" name="first_name" class="form-control" value="{{ old('first_name', $customer_details[0]['first_name']) }}">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Last Name</div>
                                                        <input type="text" id="last_name" name="last_name" class="form-control" value="{{ old('last_name', $customer_details[0]['last_name']) }}">
                                                    </div>
                                                </div>
                                                <div class="row pr-4">
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Email</div>
                                                        <input type="text" id="email" name="email" class="form-control" value="{{ old('email', $customer_details[0]['email']) }}" disabled>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Phone</div>
                                                        <input type="text" id="phone_no" name="phone_no" class="form-control" value="{{ old('phone_no', $customer_details[0]['phone_no']) }}">
                                                    </div>
                                                </div>
                                                <div class="row pr-4">
                                                    <div class="col-md-12">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Address</div>
                                                        <div class="form-group">
                                                            <textarea id="address" name="address" class="form-control">{{ old('address', $customer_details[0]['address']) }}</textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row pr-4">
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Country</div>
                                                        <select id="country" name="country" class="form-control" style="height: 36px;">
                                                            @if(!empty($countries))
                                                                @foreach($countries as $row)
                                                            <option value="{{ $row['code'] }}" @if(old('country', $customer_details[0]['country_id']) == $row['code']) selected @endif>{{ $row['name'] }}</option>
                                                                @endforeach
                                                            @endif
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">City</div>
                                                        <select id="city" name="city" class="form-control" style="height: 36px;">
                                                            @if(!empty($cities))
                                                                @foreach($cities as $row)
                                                            <option value="{{ $row['id'] }}" @if(old('city', $customer_details[0]['city_id']) == $row['id']) selected @endif>{{ $row['name'] }}</option>
                                                                @endforeach
                                                            @endif
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row pr-4">
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Password</div>
                                                        <input type="password" id="password" name="password" class="form-control" value="{{ old('password') }}">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Confirm Password</div>
                                                        <input type="password" id="confirm_password" name="confirm_password" class="form-control" value="{{ old('confirm_password') }}">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Birthday</div>
                                                        <input type="date" id="dob" name="dob" value="{{ old('dob', $customer_details[0]['dob']) }}" class="form-control">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Gender</div>
                                                        <select id="gender" name="gender" class="form-control" style="height: 36px;">
                                                            <option value="0" @if(old('gender', $customer_details[0]['gender_id']) == 0) selected @endif>Male</option>
                                                            <option value="1" @if(old('gender', $customer_details[0]['gender_id']) == 1) selected @endif>Female</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row pr-4">
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Image</div>
                                                        <input type="file" id="single_image" name="profile_image" data-id="1" class="form-control" style="height: 40px;">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class=" pb-3 pt-4" style="font-size: 16px; color: black;">Image Preview</div>
                                                        <img src="{{ $customer_details[0]['image'] }}" class="single_image_preview_1" alt="Profile Image" style="width:150px; height:150px"/>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-8"></div>
                                                    <div class="col-md-4 pr-5 pb-4 mt-5 pt-5">
                                                        <div><a href="#">Subscribe to our Newsletter</a></div>
                                                        <button class="btn mt-3 text-uppercase" id="useredit">Update</button>
                                                    </div>
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