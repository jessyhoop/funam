<?php

namespace App\Providers;
use App\Http\Request;//usar para admin y public
use Illuminate\Support\Facades\Schema; //LINEA NECEASARIA PARA EL TAMAÑO DE LA CADENA
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider {

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register() {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
//    public function boot() {
//        Schema::defaultStringLength(190);
//    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    
    //funcion que se agregara para la separacion de admin y public
    public function boot(Request $request) {
        $path_array = $request->segments();
        $admin_route = config('app.admin_route');

        //If URL path is having "admin" then mark the current scope as Admin
        if (in_array($admin_route, $path_array)) {
            config(['app.app_scope' => 'admin']);
        }


        $app_scope = config('app.app_scope');

        //if App scope is admin then define View/Theme folder path
        if ($app_scope == 'admin') {
            $path = resource_path('admin/views');
        } else {
            $path = resource_path('front/views');
        }

        view()->addLocation($path);
    }

}
