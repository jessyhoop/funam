<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider {

    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot() {
        //

        parent::boot();
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
    public function map() {
        $this->mapApiRoutes();

        $this->mapWebRoutes();

        //
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
// original   protected function mapWebRoutes() {
//        Route::middleware('web')
//                ->namespace($this->namespace)
//                ->group(base_path('routes/web.php'));
//    }
//    ---------------------division admin y public-------------------------
    protected function mapWebRoutes() {
        $adminScope = config('app.app_scope');
        if ($adminScope == 'front') {
            $this->namespace = 'App\Http\Controllers\FrontControllers';
        }
        if ($adminScope == 'admin') {
            $this->namespace = 'App\Http\Controllers\AdminControllers';
        }
        Route::middleware('web')
                ->namespace($this->namespace)
                ->group(base_path('routes/web.php'));
    }

//    nnuevas rutas
//    protected function mapWebRoutes() {
//        Route::middleware('web')
//                 ->name('public.')
//                ->namespace($this->namespace)
//                ->group(base_path('routes/public.php'));
//    }

    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapApiRoutes() {
        $adminScope = config('app.app_scope');
        if ($adminScope == 'front') {
            $this->namespace = 'App\Http\Controllers\FrontControllers';
        }
        if ($adminScope == 'admin') {
            $this->namespace = 'App\Http\Controllers\AdminControllers';
        }
//        sin peticion a api se omite
        Route::middleware('api')
                ->namespace($this->namespace)
                ->group(base_path('routes/api.php'));
//        Route::prefix('api')
//             ->middleware('api')
//             ->namespace($this->namespace)
//             ->group(base_path('routes/api.php'));
    }

}
