@include('layouts.header')
	<div class="main-content home-page main-content-home2">
		<div class="wrapper">
			<div class="masonry">
				{!! $get_all_categories !!}
    		</div>
		</div>
	</div>
@include('layouts.footer')