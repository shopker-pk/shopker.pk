<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3 sidebar">
    <h4 class="main-title">Filter by</h4>
    <div class="widget widget-categories">
        <h5 class="widgettitle">Categories</h5>
        <ul class="list-categories" data-count="{{ $count = 0 }}">
            @if(!empty($side_filter))
                @foreach($side_filter as $rows)
                    @foreach($rows['parent_cateogries'] as $key => $value)
            <li><input type="checkbox" id="cb_{{ $count }}" name="parent_category" class="variant" value="{{ $key }}"><label for="cb_{{ $count }}" class="label-text" data-count="{{ $count++ }}">{{ $value }}</label></li>
                    @endforeach
                @endforeach
            @endif
            @if(!empty($side_filter))
                @foreach($side_filter as $rows)
                    @foreach($rows['child_cateogries'] as $key => $value)
            <li><input type="checkbox" id="cb_{{ $count }}" name="parent_category" class="variant" value="{{ $key }}"><label for="cb_{{ $count }}" class="label-text" data-count="{{ $count++ }}">{{ $value }}</label></li>
                    @endforeach
                @endforeach
            @endif
            @if(!empty($side_filter))
                @foreach($side_filter as $rows)
                    @foreach($rows['sub_child_cateogries'] as $key => $value)
            <li><input type="checkbox" id="cb_{{ $count }}" name="parent_category" class="variant" value="{{ $key }}"><label for="cb_{{ $count }}" class="label-text" data-count="{{ $count++ }}">{{ $value }}</label></li>
                    @endforeach
                @endforeach
            @endif
        </ul>
    </div>
    <div class="widget widget-brand">
        <h5 class="widgettitle">Brand</h5>
        <ul class="list-categories">
            @if(!empty($side_filter))
                @foreach($side_filter as $rows)
                    @foreach($rows['brands'] as $key => $value)
            <li><input type="checkbox" id="cb_{{ $count }}" name="brands" value="{{ $key }}"><label for="cb_{{ $count }}" class="label-text" data-count="{{ $count++ }}">{{ $value }}</label></li>
                    @endforeach
                @endforeach
            @endif
        </ul>
    </div>
    <div class="widget widget_filter_price box-has-content">
        <h3 class="widgettitle">Filter by price</h3>
        <div class="price-filter">
            @if(!empty($side_filter))
                @foreach($side_filter as $row)
            <div data-label-reasult="price:" data-min="{{ $row['min_price'] }}" data-max="{{ $row['max_price'] }}" data-unit="Rs." class="slider-range-price " data-value-min="{{ $row['min_price'] }}" data-value-max="{{ $row['max_price'] }}"></div>
            <div class="amount-range-price">Price: <span class="from">Rs.{{ $row['min_price'] }}</span> - <span class="to">Rs.{{ $row['max_price'] }}</span></div>
                @endforeach
            @endif
        </div>
    </div>
    <div class="widget widget_filter_color box-has-content">
        <h3 class="widgettitle">Colors & Sizes</h3>
        <ul class="list-color">
            @if(!empty($side_filter))
                @foreach($side_filter as $rows)
                    @foreach($rows['variations'] as $key => $value)
            <li><input type="checkbox" id="cb_{{ $count }}" name="variations" value="{{ $key }}"><label for="cb_{{ $count }}" class="label-text" data-count="{{ $count++ }}">{{ $value }}</label></li>
                    @endforeach
                @endforeach
            @endif
        </ul>
    </div>
</div>