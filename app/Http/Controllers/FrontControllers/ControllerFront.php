<?php

namespace App\Http\Controllers\FrontControllers;//importante definir controlador

use Illuminate\Http\Request;
//use App\Http\Controllers\ApiController;
use App\Http\Controllers\Controller;




class ControllerFront extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
//    public function __construct()  //se comenta para que no utilize la utenticacion
//    {
//        $this->middleware('auth');
//    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    
    public function initcon()
    {
        return 'que traanza soy el front';
    }
}
