<div class="container-fluid menucontainer" style="margin-top: -40px;">
    <div class="row categorydiv" style="background-image: linear-gradient(to left, #fd0000, black);">
        <div class="col-md-2">
            <div class="main_nav_content d-flex flex-row" style="width: 100%; background-color:  #f70000;">
                <!-- Categories Menu -->
                <div class="cat_menu_container checkmenu" style="background-image: linear-gradient(to left, #2c0000, black);">
                    <div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
                        <div class="cat_burger"><span></span><span></span><span></span></div>
                        <div class="cat_menu_text" style="padding: 0px 80px 0px 0px;font-size: 15px; ">categories</div>
                    </div>
                    <ul class="cat_menu mymenu" style="height: auto; width: 220px;">
                        <!-- Mega menus Start -->
                        @if(!empty($mega_menus))
                            {!! str_replace('\xc2\xa0',' ', html_entity_decode($mega_menus)) !!}
                        @endif
                        <!-- Mega menus End -->
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>