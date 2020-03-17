<?php
namespace App\Http\Controllers\FrontControllers;//importante definir controlador


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MainController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
 
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function main_usuarios()
    {
        return 'usuarios';
    }
}
