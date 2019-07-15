<div class="col-lg-7 col-md-3 col-sm-3 col-xs-6 midle-content custom_middle_header">
    <div class="header-nav container-vertical-wapper ">
        <div class="header-nav-inner">
            <div class="box-header-nav">
                <div class=" container-wapper">
                    <a class="menu-bar mobile-navigation" href="#">
                        <span class="icon">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                        <span class="text">Main Menu</span>
                    </a>
                    <a href="#" class="header-top-menu-mobile"><span class="fa fa-cog" aria-hidden="true"></span></a>
                    <ul id="menu-main-menu" class="main-menu clone-main-menu ovic-clone-mobile-menu box-has-content">
                        <li class="menu-item">
                            <a href="{{ route('home') }}" class="kt-item-title ovic-menu-item-title" title="Home">HOME</a>
                        </li>
                        <li class="menu-item menu-item-has-children">
                            <a href="javascript:void(0)" class="kt-item-title ovic-menu-item-title" title="Sub Menu"> Sub Menu </a>
                            <ul class="sub-menu">
                                {!! $parent_categories_menus !!}
                            </ul>
                        </li>
                        <li class="menu-item menu-item-has-children">
                            <a href="javascript:void(0)" class="kt-item-title ovic-menu-item-title" title="Megamenu">Megamenu </a>
                            <div class="sub-menu mega-menu mega-menu1" style="width: 1170px; left: -524.734px;">
                                <div class="row">
                                    {!! $child_subchildcategories_menu !!}
                                </div>
                            </div>
                        </li>
                        <li class="menu-item menu-item-has-children">
                            <a href="#" class="kt-item-title ovic-menu-item-title" title="PAGES">My Account</a>
                            <ul class="sub-menu">
                                @if(!empty(Session::get('customer_details')['id'] && Session::get('customer_details')['role'] == 3))
                                <li><a href="{{ route('checkout') }}">Checkout</a></li>
                                <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                                <li><a href="{{ route('view_cart') }}">Shopping Cart</a></li>
                                <li><a href="{{ route('manage_wishlist') }}">My Wishlist</a></li>
                                @else
                                <li><a href="{{ route('checkout') }}">Checkout</a></li>
                                <li><a href="{{ route('customer_sign_in') }}">Login</a></li>
                                <li><a href="{{ route('view_cart') }}">Shopping Cart</a></li>
                                @endif
                            </ul>
                        </li>
                        <li class="menu-item">
                            @if(!empty(Session::get('customer_details')['id'] && Session::get('customer_details')['role'] == 3))
                            <a href="{{ route('manage_orders') }}" class="kt-item-title ovic-menu-item-title" title="Track my order">TRACK MY ORDER</a>
                            @endif
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>