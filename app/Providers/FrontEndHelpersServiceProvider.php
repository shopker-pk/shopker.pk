<?php
namespace App\Providers;
use Illuminate\Support\ServiceProvider;

class FrontEndHelpersServiceProvider extends ServiceProvider{
    function register(){
        foreach (glob(app_path().'/Helpers/FrontEnd/*.php') as $filename){
            require_once($filename);
        }
    }
}