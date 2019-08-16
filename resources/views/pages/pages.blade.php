@include('layouts.header') 
	<div class="main-content shop-page contact-page">
        <div class="container">
	    	@include('layouts.messages')
	        <div class="breadcrumbs">
	        </div>
	        <div class="row content-form ">
    			{!! str_replace("\xc2\xa0",' ', html_entity_decode($pages['content'])) !!}
			</div>
		</div>
	</div>
@include('layouts.footer')