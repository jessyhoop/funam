<?php

namespace App\Http\Controllers\AdminControllers;//importante definir controlador

use Illuminate\Http\Request;
//use App\Http\Controllers\ApiController;
use App\Http\Controllers\Controller;




class AuthController extends Controller
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
    public function index()
    {
        return view('welcome');
    }
    public function initcon()
    {
//        return 'view('admin.views.login')';
        return view('login');
//        return 'vie';
    }
}
