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

    <style type="text/css">
        .cat_menu_container ul {
            display: none;
        }

        .cat_menu_container:hover ul {
            display: block;
        }
        
        select.form-control:not([size]):not([multiple]) {
            height: 35px;
        }
        
        #alertmessage {
            display: none;
        }
    </style>
    <script>
        function abc() {
            $("#alertmessage").fadeTo(2000, 500).slideUp(500, function() {
                $("#alertmessage").slideUp(500);
            });
        }
    </script>
</head>

<body>
    @include('layouts.header') 
    @include('layouts.navigation')
    @include('layouts.messages')

    <div class="container" style="margin-bottom: 100px;">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="registrationheading" align="center">REGISTRATION TO START SELLING ON SHOPKER</div>
                <form action="{{ route('vendor_registeration') }}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <hr style="border: 1px solid red;" />
                    <div class="personaldetails" align="center">PERSONAL DETAILS</div>
                    <div class="row" style="margin-top: 30px;">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="first_name" name="first_name" class="form-control" placeholder="First Name *" >
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="last_name" name="last_name" class="form-control" placeholder="Last Name *" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="phone_no" name="phone_no" class="form-control" placeholder="03xx-xxxxxxx *">
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="email" name="email" class="form-control" placeholder="Email *" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <div class="wow fadeInRight">
                                <textarea id="address" name="address" class="form-control" placeholder="Address *" ></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <select id="country" name="country" class="form-control" data-id="1">
                                    <option>Select Country!!</option>
                                    @foreach($countries as $row)
                                    <option value="{{ $row['code'] }}">{{ $row['name'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <select id="city_1" name="city" class="form-control">
                                    <option>Select City!!</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="password" id="password" name="password" class="form-control" placeholder="Password *" >
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="password" id="confirm_password" name="confirm_password" class="form-control" placeholder="Conmfirm Password *" >
                            </div>
                        </div>
                    </div>
                    <hr style="border: 1px solid red;" />
                    <div class="personaldetails" align="center">BUSINESS DETAILS</div>
                    <div class="row" style="margin-top: 30px;">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="bussiness_name" name="bussiness_name" class="form-control" placeholder="Business Name *" >
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="text" name="store_name" id="store_name" class="form-control" placeholder="Store Name *" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="store_email" name="store_email" class="form-control" placeholder="Store Email *" >
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="text" id="store_phone_no" name="store_phone_no" class="form-control" placeholder="03xx-xxxxxxx *">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="store_cell_no" name="store_cell_no" class="form-control" placeholder="Store Cell NO#">
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="text" id="cnic" name="cnic" class="form-control" placeholder="CNIC *" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <textarea id="store_address" name="store_address" class="form-control" placeholder="Store Address *" ></textarea>
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <textarea id="warehouse_address" name="warehouse_address" class="form-control" placeholder="Warehouse Address *" ></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <select id="country" name="store_country" class="form-control" data-id="2">
                                    <option>Select Country!!</option>
                                    @foreach($countries as $row)
                                    <option value="{{ $row['code'] }}">{{ $row['name'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <select id="city_2" name="store_city" class="form-control">
                                    <option>Select City!!</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="ntn_no" name="ntn_no" class="form-control" placeholder="NTN #">
                            </div>
                        </div>
                    </div>
                    <hr style="border: 1px solid red;" />
                    <div class="personaldetails" align="center">BANK ACCOUNT DETAILS</div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="text" id="name" name="name" class="form-control" placeholder="Bank Name *" >
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="text" id="title" name="title" class="form-control" placeholder="Bank Title *" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInRight">
                                <input type="text" id="account_no" name="account_no" class="form-control" placeholder="Bank A/C *" >
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="text" id="branch_code" name="branch_code" class="form-control" placeholder="Branch Code *" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <div class="wow fadeInLeft">
                                <input type="file" id="cheque_image" name="cheque_image">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div align="center" class="submitbtn">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    @include('layouts.footer')
</body>

</html>