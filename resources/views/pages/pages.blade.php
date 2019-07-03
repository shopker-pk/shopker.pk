@include('layouts.header') 
    {!! str_replace("\xc2\xa0",' ', html_entity_decode($pages['content'])) !!}
@include('layouts.footer')