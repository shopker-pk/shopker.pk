<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Parent Categories</a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                <ul class="">
                    @if(!empty($side_filter))
                        @foreach($side_filter as $rows)
                            @foreach($rows['parent_cateogries'] as $key => $value)
                    <div class="">
                        <input type="checkbox" id="variant" name="parent_category" value="{{ $key }}"><span style="margin-left:10px; font-size:12px;">{{ $value }} </span>
                    </div>
                            @endforeach
                        @endforeach
                    @endif
                </ul>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingTwo">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Child Categories</a>
            </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="panel-body">
                @if(!empty($side_filter))
                    @foreach($side_filter as $rows)
                        @foreach($rows['child_cateogries'] as $key => $value)
                <div class="">
                    <input type="checkbox" id="variant" name="child_category" value="{{ $key }}"><span style="margin-left:10px; font-size:12px;">{{ $value }} </span>
                </div>
                        @endforeach
                    @endforeach
                @endif
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingThree">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Sub Child Categories</a>
            </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="panel-body">
                @if(!empty($side_filter))
                    @foreach($side_filter as $rows)
                        @foreach($rows['sub_child_cateogries'] as $key => $value)
                <div class="">
                    <input type="checkbox" id="variant" name="sub_child_category" value="{{ $key }}"><span style="margin-left:10px; font-size:12px;">{{ $value }} </span>
                </div>
                        @endforeach
                    @endforeach
                @endif
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingFour">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                    Price
                </a>
            </h4>
        </div>
        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
            <div class="panel-body">
                @if(!empty($side_filter))
                    @foreach($side_filter as $row)
                <div class="row"><b style="font-size: 11px;">{{ $row['min_price'] }}</b> <input id="variant" name="prices" type="text" class="span2 range_slider" value="" data-slider-min="{{ $row['min_price'] }}" data-slider-max="{{ $row['max_price'] }}" data-slider-step="5" data-slider-value="[250,450]" style="margin-left: 13px;width:115px;" /> <b  style="font-size: 11px;margin-left: 4px;">{{ $row['max_price'] }}</b>
                    @endforeach
                @endif
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingFive">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                    Brands
                </a>
            </h4>
        </div>
        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
            <div class="panel-body">
                @if(!empty($side_filter))
                    @foreach($side_filter as $rows)
                        @foreach($rows['brands'] as $key => $value)
                <div class="">
                    <input type="checkbox" id="variant" name="brands" value="{{ $key }}"><span style="margin-left:10px; font-size:12px;">{{ $value }} </span>
                </div>
                        @endforeach
                    @endforeach
                @endif
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingSix">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">Variations</a>
            </h4>
        </div>
        <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
            <div class="panel-body">
                <div class="">
                    @if(!empty($side_filter))
                    @foreach($side_filter as $rows)
                        @foreach($rows['variations'] as $key => $value)
                <div class="">
                    <input type="checkbox" id="variant" name="variations" value="{{ $value }}"><span style="margin-left:10px; font-size:12px;">{{ $value }} </span>
                </div>
                        @endforeach
                    @endforeach
                @endif
                </div>
            </div>
        </div>
    </div>
</div>