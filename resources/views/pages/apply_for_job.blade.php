@include('layouts.header')
	<div class="main-content shop-page about-page">
		<div class="container">
			@include('layouts.messages')
			<div class="breadcrumbs"></div>
			<div class="row about-info content-form  personal-details">
				<div class="col-xs-12 col-sm-10 col-md-12"></div>
			</div>
			<div class="about-content row">
				<h4 class="title text-uppercase">Career Details</h4>
				<div class="login-register-form content-form row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-left">
						<form action="{{ route('apply_job') }}" method="post" enctype="multipart/form-data">
							{{ csrf_field() }}
							<div class="register-form">
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
										<span class="label-text">Name <span>*</span></span>
										<input type="text" id="name" name="name" class="input-info">
									</div>
									<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
										<span class="label-text">Email Address<span>*</span></span>
										<input type="email" id="email" name="email" class="input-info">	
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
										<span class="label-text">Job title <span>*</span></span>
										<input type="text" id="job_title" name="job_title" class="input-info">
									</div>
									<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
										<span class="label-text">Phone number<span>*</span></span>
										<input type="text" id="phone_no" name="phone_no" class="input-info">	
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12 col-sm-12 col-lg-12 col-md-12">
										<span class="label-text">Message<span>*</span></span>
										<textarea rows="8" id="message" name="message" class="input-info input-note"></textarea>
									</div>
								</div>
								<span class="label-text">Upload Cv <span>*</span></span>
								<input type="file" id="cv" name="cv" class="input-info">
								<div class="group-button">
									<button class="button submit">SUBMIT</button>
								</div>		
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
@include('layouts.footer')