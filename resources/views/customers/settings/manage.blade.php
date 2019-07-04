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
                            Edit Profile
                        </div>
                        <div class="panel-body">
                            <div class="login-register-form content-form row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <form action="{{ route('update_profile_settings') }}" method="post" enctype="multipart/form-data">
                                        {{ csrf_field() }}
                                        <div class="register-form">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">First name <span>*</span></span>
                                                    <input type="text" class="input-info" id="first_name" name="first_name" value="{{ old('first_name', $customer_details[0]['first_name']) }}">
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">Last name</span>
                                                    <input type="text" class="input-info" id="last_name" name="last_name" value="{{ old('last_name', $customer_details[0]['last_name']) }}">    
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">Email *</span>
                                                    <input type="text" class="input-info" id="email" name="email" value="{{ old('email', $customer_details[0]['email']) }}" disabled>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">Phone *</span>
                                                    <input type="text" class="input-info" id="phone_no" name="phone_no" value="{{ old('phone_no', $customer_details[0]['phone_no']) }}">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6 col-md-12 col-lg-12">
                                                    <span class="label-text">Address *</span>
                                                    <input type="text" class="input-info" id="address" name="address" value="{{ old('address', $customer_details[0]['address']) }}">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">Country *</span>
                                                    <select class="input-info" id="country" name="country">
                                                        @if(!empty($countries))
                                                            @foreach($countries as $row)
                                                        <option value="{{ $row['code'] }}" @if(old('country', $customer_details[0]['country_id']) == $row['code']) selected @endif>{{ $row['name'] }}</option>
                                                            @endforeach
                                                        @endif
                                                    </select>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">City *</span>
                                                    <select class="input-info" id="city" name="city">
                                                        @if(!empty($cities))
                                                            @foreach($cities as $row)
                                                        <option value="{{ $row['id'] }}" @if(old('city', $customer_details[0]['city_id']) == $row['id']) selected @endif>{{ $row['name'] }}</option>
                                                            @endforeach
                                                        @endif
                                                    </select>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">Password *</span>
                                                    <input type="password" class="input-info" type="password" id="password" name="password" value="{{ old('password') }}">
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">Confirm password *</span>
                                                    <input type="password" class="input-info" id="confirm_password" name="confirm_password" value="{{ old('confirm_password') }}">  
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">Birthday *</span>
                                                    <input type="date" class="input-info" id="dob" name="dob" value="{{ old('dob', date('Y-m-d', strtotime($customer_details[0]['dob']))) }}">
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">Gender *</span>
                                                    <select class="input-info" id="gender" name="gender">
                                                        <option value="0" @if(old('gender', $customer_details[0]['gender_id']) == 0) selected @endif>Male</option>
                                                        <option value="1" @if(old('gender', $customer_details[0]['gender_id']) == 1) selected @endif>Female</option>
                                                    </select>   
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">Image *</span>
                                                    <input type="file" class="input-info" id="single_image" name="profile_image" data-id="1">
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                    <span class="label-text">Image Preview *</span>
                                                    <img src="{{ $customer_details[0]['image'] }}" class="single_image_preview_1" alt="Profile Image" height="250"> 
                                                </div>
                                            </div>
                                            <div class="group-button"><button class="button submit">SUBMIT</a></button>        
                                        </div>
                                    </form>
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