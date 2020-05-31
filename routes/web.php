<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */
//Route::get('/', function () {//si n o especificas es public
//    return view('welcome');
//});
//Route::get('/home', function () {
//    return view('usuarios');
//});
//se va moficiar para traer todos los contraoladores que son para la creacon de usuarios y edicicon
//Auth::routes();

//vista admin
//http://localhost/funam/public/admin/login
//Route::get('admin/login', function() {
//    return view('login');//solo especificamos el nombre de la view
//});
//Route::get('admin/inicio', 'ControllerAdmin@initcon'); //admin
//Route::get('inicio', 'ControllerFront@initcon'); //public
////http://localhost/funam/public/inicio
////login
//
//    Route::get('admin/logins', 'AuthController@index');
//
////http://localhost/funam/public/admin/login
////http://localhost/funam/public/main_usuarios
//Route::get('/mainusuarios', 'MainnController@mainusuarios');