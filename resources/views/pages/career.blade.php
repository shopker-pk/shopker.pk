@include('layouts.header') 
    <div class="main-content shop-page about-page">
        <div class="container">
            @include('layouts.messages')
            <div class="breadcrumbs">
            </div>
            <div class="row about-info content-form">
                <div class="col-xs-12 col-sm-5 col-md-6">
                    <img src="{{ asset('public/assets/images/career1.png') }}" alt="" height="400">
                </div>
                <div class="col-xs-12 col-sm-7 col-md-6">
                    <div class="info">
                        <h3 class="main-title">Careers</h3>
                        <p class="des">We hire and invest on people develop.
                            We provide a highly professional work experience that cannot be matched elsewhere.</p>
                        <p>
                            We hire and invest on people develop.
                            We provide a highly professional work experience that cannot be matched elsewhere. 
                            Shopker.pk  is dedicated to developing high performing and engaged employees who take ownership, show bias for action, enjoy solving big challenges and continue to deliver superior results. We would not be where we are today if it wasn’t for our employees who think big every day and come up with new innovative solutions to improve our processes and delight our customers. 
                            If you are looking for rewarding career and you have the courage to learn then drop us your CV and we will get in touch with you.
                        </p>
                    </div>
                </div>
            </div>
            <div class="about-content">
                <div class="row">
                    <div class="col-md-12">
                        <h4>
                            If you are looking for rewarding career and you have the courage to learn then drop us your CV and we will get in touch with you.
                        </h4>
                    </div>
                </div>
                <div class="row apply-job">
                    <div class="col-md-12">
                        <button class="title btn btn-success view-more-button">
                            Apply for Job
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@include('layouts.footer')