@include('layouts.header')
    <div class="main-content shop-page login-page">
        <div class="container">
            @include('layouts.messages')
            <div class="breadcrumbs">
            </div>
            <div class="login-register-form content-form row">
                <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2"></div>
                <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                    <form action="{{ route('customer_registration') }}" method="post">
                        {{ csrf_field() }}
                        <div class="register-form">
                            <h4 class="main-title">Sign Up</h4>
                            <h5 class="note-title">Personal Infomation</h5>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Fist name <span>*</span></span>
                                    <input type="text" id="first_name" name="first_name" class="input-info">
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Last Name <span>*</span></span>
                                    <input type="text" id="last_name" name="last_name" class="input-info">  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Email Address <span>*</span></span>
                                    <input type="text" id="email" name="email" class="input-info">
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Phone No# <span>*</span></span>
                                    <input type="text" id="phone_no" name="phone_no" class="input-info" placeholder="03xx-xxxxxxx *" value="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Password *</span>
                                    <input type="password" id="password" name="password" class="input-info">
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Confirm Password *</span>
                                    <input type="password" id="confirm_password" name="confirm_password" class="input-info">  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Gender *</span>
                                    <select id="gender" name="gender" class="input-info">
                                        <option value="0">Male</option>
                                        <option value="1">Female</option>
                                    </select>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Date Of Birth *</span>
                                    <input type="date" id="dob" name="dob" class="input-info">  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span id="country" name="country" class="label-text">Country *</span>
                                    <select id="country" name="country" class="input-info" data-id="0">
                                        <option>Select Country!!</option>
                                        <option value="PK">Pakistan</option>
                                    </select>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">City *</span>
                                    <select id="city_0" name="city" class="input-info" data-id="0">
                                    </select>
                                </div>
                            </div>
                            <div class="check-box">
                                <input type="checkbox" id="register-check" name="newsletter" class="login-check" value="0"> <label class="text-label" for="register-check">Sign Up for Newsletter</label>
                            </div>
                            <div class="group-button"><button class="button submit">Sign Up</button></div>        
                        </div>
                    </form>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2"></div>
            </div>
        </div>
    </div>
@include('layouts.footer')