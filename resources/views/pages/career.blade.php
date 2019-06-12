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

    <div class="container-fluid">
    	<div class="row">
    		<div class="col-md-12" id="careerbackground"></div>
    	</div>
    </div>
    <div class="container">
    	<div class="row">
    		<div class="col-md-12">
    			<div class="" align="center">
    				<h2 class="text-uppercase pt-4"><b>Career</b></h2>
    				<hr style="width: 50px; border: 1px solid #b20c0c;" />
    				<div class="row">
    					<div class="col-md-2"></div>
    					<div class="col-md-8">
    						<h4>We hire and invest on people develop. We provide a highly professional work experience that cannot be matched elsewhere. </h4>
    						<p style="color: black; font-size: 20px;">
    					</div>
    				</div>
    			</div>
    			<div class="row">
    				<div class="col-md-7">
    					<div class="wow fadeInLeft">
	    					<p class="text-dark mt-5 pt-5" style=" font-size: 18px;">
	    						We hire and invest on people develop.
                                We provide a highly professional work experience that cannot be matched elsewhere. 
                                Shopker.pk  is dedicated to developing high performing and engaged employees who take ownership, show bias for action, enjoy solving big challenges and continue to deliver superior results. We would not be where we are today if it wasn’t for our employees who think big every day and come up with new innovative solutions to improve our processes and delight our customers. 
                                If you are looking for rewarding career and you have the courage to learn then drop us your CV and we will get in touch with you.
	    					</p>
    					</div>
    				</div>
    				<div class="col-md-5 pt-4" align="center">
    					<div class="wow bounceIn"><img src="{{ asset('public/assets/images/career1.png') }}" height="200" width="200"></div>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>

   <div class="container-fluid mt-5 pt-5">
    	<div class="row">
    		<div class="col-md-12" id="cvbackground">
    			<div class="container">
    				<div class="row">
    					<div class="col-md-12">
    						<h1 class="text-white text-center text-uppercase">If you are looking for rewarding career and you have the courage to learn then drop us your CV and we will get in touch with you.</h1>
                            <div class="row">
                                <div class="col-md-4"></div>
                                <div class="col-md-4">
                                    <button class="btn btnview5 mt-4">Apply For Job</button>
                                </div>
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