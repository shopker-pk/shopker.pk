<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3 sidebar">
    <h4 class="main-title">Filter by</h4>
    <div class="widget widget-categories">
        <h5 class="widgettitle">Categories</h5>
        <ul class="list-categories" data-count="{{ $count = 0 }}">
            @if(!empty($side_filter))
                @foreach($side_filter as $rows)
                    @foreach($rows['parent_cateogries'] as $key => $value)
                        @if(!empty($value))
            <li><input type="checkbox" id="cb_{{ $count }}" name="parent_category" class="variant" value="{{ $key }}"><label for="cb_{{ $count }}" class="label-text" data-count="{{ $count++ }}">{{ $value }}</label></li>
                        @endif
                    @endforeach
                @endforeach
            @endif
            @if(!empty($side_filter))
                @foreach($side_filter as $rows)
                    @foreach($rows['child_cateogries'] as $key => $value)
                        @if(!empty($value))
            <li><input type="checkbox" id="cb_{{ $count }}" name="parent_category" class="variant" value="{{ $key }}"><label for="cb_{{ $count }}" class="label-text" data-count="{{ $count++ }}">{{ $value }}</label></li>
                        @endif
                    @endforeach
                @endforeach
            @endif
            @if(!empty($side_filter))
                @foreach($side_filter as $rows)
                    @foreach($rows['sub_child_cateogries'] as $key => $value)
                        @if(!empty($value))
            <li><input type="checkbox" id="cb_{{ $count }}" name="parent_category" class="variant" value="{{ $key }}"><label for="cb_{{ $count }}" class="label-text" data-count="{{ $count++ }}">{{ $value }}</label></li>
                        @endif
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
                        @if(!empty($value))
            <li><input type="checkbox" id="cb_{{ $count }}" name="brands" class="variant" value="{{ $key }}"><label for="cb_{{ $count }}" class="label-text" data-count="{{ $count++ }}">{{ $value }}</label></li>
                        @endif
                    @endforeach
                @endforeach
            @endif
        </ul>
    </div>
    <div class="widget widget_filter_price box-has-content">
        <h3 class="widgettitle">Filter by price</h3>
        @if(!empty($side_filter))
            @foreach($side_filter as $row)
        <div class="row">
            <div class="col-md-4">
                <input type="number" id="from_price" name="from_price" class="form-control" min="{{ $row['min_price'] }}" max="{{ $row['max_price'] }}">
            </div>
            <div class="col-md-1">-</div>
            <div class="col-md-4">
                <input type="number" id="to_price" name="to_price" class="form-control" min="{{ $row['min_price'] }}" max="{{ $row['max_price'] }}">
            </div>
            <div class="col-md-1">
                <span class="bg-info btn btn-info" id="search_by_price" name="search_by_price"><i class="fa fa-chevron-right"></i></span>
            </div>
        </div>
            @endforeach
        @endif
    </div>
    <div class="widget widget_filter_color box-has-content">
        <h3 class="widgettitle">Colors & Sizes</h3>
        <ul class="list-color">
            @if(!empty($side_filter))
                @foreach($side_filter as $rows)
                    @foreach($rows['variations'] as $key => $value)
                        @if(!empty($value))
            <li><input type="checkbox" id="cb_{{ $count }}" name="variations" class="variant" value="{{ $value }}"><label for="cb_{{ $count }}" class="label-text" data-count="{{ $count++ }}">{{ $value }}</label></li>
                        @endif
                    @endforeach
                @endforeach
            @endif
        </ul>
    </div>
</div>