@include('layouts.header')
    <div class="main-content shop-page about-page">
        <div class="container">
            @include('layouts.messages')
            <div class="breadcrumbs">
            </div>
            <div class="row about-info content-form  personal-details">
                <div class="col-xs-12 col-sm-10 col-md-12">
                    <div class="info">
                        <h3 class="main-title custom-title">SELL WITH SHOPKER</h3>
                    </div>
                </div>
            </div>
            <form action="{{ route('vendor_registeration') }}" method="post" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="about-content row">
                    <h4 class="title text-uppercase">Personal details</h4>
                    <div class="login-register-form content-form row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-left">
                            <div class="register-form">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">First Name <span>*</span></span>
                                        <input type="text" id="first_name" name="first_name" class="input-info" value="{{ old('first_name') }}">
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Last Name</span>
                                        <input type="text" id="last_name" name="last_name" class="input-info" value="{{ old('last_name') }}">  
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Phone Number <span>*</span></span>
                                        <input type="text" id="phone_no" name="phone_no" class="input-info" placeholder="03xx-xxxxxxx *" value="{{ old('phone_no') }}">
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Email</span>
                                        <input type="text" id="email" name="email" class="input-info" value="{{ old('email') }}">  
                                    </div>
                                </div>
                                <span class="label-text">Address <span>*</span></span>
                                <input type="text" id="address" name="address" class="input-info" value="{{ old('address') }}">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Country <span>*</span></span>
                                        <select id="country" name="country" class="input-info" data-id="0">
                                            <option>Select Country!!</option>
                                            @foreach($countries as $row)
                                            <option value="{{ $row['code'] }}">{{ $row['name'] }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">City <span>*</span></span>
                                        <select id="city_0" name="city" class="input-info" data-id="0">
                                            <option>Select City!!</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Password *</span>
                                        <input type="password" type="password" id="password" name="password" class="input-info">
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Confirm Password *</span>
                                        <input type="password" id="confirm_password" name="confirm_password" class="input-info">  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about-content row">
                    <h4 class="title text-uppercase">Business Details</h4>
                    <div class="login-register-form content-form row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-left">
                            <div class="register-form">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Business Name <span>*</span></span>
                                        <input type="text" id="bussiness_name" name="bussiness_name" class="input-info" value="{{ old('bussiness_name') }}">
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Store Name</span><span>*</span>
                                        <input type="text" id="store_name" name="store_name" class="input-info" value="{{ old('store_name') }}">  
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Store Email<span>*</span></span>
                                        <input type="text" id="store_email" name="store_email" class="input-info" value="{{ old('store_email') }}">
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Phone Number</span><span>*</span>
                                        <input type="text" id="store_phone_no" name="store_phone_no" class="input-info" placeholder="03xx-xxxxxxx *" value="{{ old('store_phone_no') }}">  
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Store Cell No#<span>*</span></span>
                                        <input type="text" id="store_cell_no" name="store_cell_no" class="input-info" value="{{ old('store_cell_no') }}">
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">CNIC</span><span>*</span>
                                        <input type="text" id="cnic" name="cnic" class="input-info" value="{{ old('cnic') }}">  
                                    </div>
                                </div>
                                <span class="label-text">Store Address <span>*</span></span>
                                <input type="text" id="store_address" name="store_address" class="input-info">
                                <span class="label-text">Warehouse Address <span>*</span></span>
                                <input type="text" id="warehouse_address" name="warehouse_address" class="input-info" value="{{ old('warehouse_address') }}">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Country <span>*</span></span>
                                        <select id="country" name="store_country" class="input-info" data-id="1">
                                            <option>Select Country!!</option>
                                            @foreach($countries as $row)
                                            <option value="{{ $row['code'] }}">{{ $row['name'] }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">City <span>*</span></span>
                                        <select id="city_1" name="store_city" class="input-info" data-id="1">
                                            <option>Select City!!</option>
                                        </select>
                                    </div>
                                </div>
                                <span class="label-text">NTN Number <span>*</span></span>
                                <input type="text" id="ntn_no" name="ntn_no" class="input-info" value="{{ old('ntn_no') }}">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about-content row">
                    <h4 class="title text-uppercase">Bank Account Details</h4>
                    <div class="login-register-form content-form row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-left">
                            <div class="register-form">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Bank Name <span>*</span></span>
                                        <input type="text" id="name" name="name" class="input-info" value="{{ old('name') }}">
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Bank Title</span><span>*</span>
                                        <input type="text" id="title" name="title" class="input-info" value="{{ old('title') }}">  
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Bank A/C <span>*</span></span>
                                        <input type="text" id="account_no" name="account_no" class="input-info" value="{{ old('account_no') }}">
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <span class="label-text">Branch Code</span><span>*</span>
                                        <input type="text" id="branch_code" name="branch_code" class="input-info" value="{{ old('branch_code') }}">  
                                    </div>
                                </div>
                                <span class="label-text">Choose file <span>*</span></span>
                                <input type="file" id="cheque_image" name="cheque_image" class="input-info">
                                <div class="group-button"><button class="button submit">SUBMIT</button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
@include('layouts.footer')