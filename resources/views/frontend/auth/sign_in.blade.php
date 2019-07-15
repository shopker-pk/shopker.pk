@include('layouts.header')
    <div class="main-content shop-page login-page">
        <div class="container">
            @include('layouts.messages')
            <div class="breadcrumbs">
            </div>
            <div class="login-register-form content-form row">
                <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2"></div>
                <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                    <form action="{{ route('validating_credentials') }}" method="post">
                        {{ csrf_field() }}
                        <div class="register-form">
                            <h4 class="main-title">Sign In</h4>
                            <h5 class="note-title">Personal Infomation</h5>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Email *</span>
                                    <input type="text" id="email" name="email" class="input-info">
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                    <span class="label-text">Password *</span>
                                    <input type="password" id="password" name="password" class="input-info">  
                                </div>
                            </div>
                            <div class="group-button"><button class="button submit">Sign In</button></div>        
                        </div>
                        <a href="{{ route('forget_password') }}">Forget Password ?</a>
                    </form>

                </div>

                <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2">
                </div>
            </div>
        </div>
    </div>
@include('layouts.footer')