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
Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@login');
Route::post('logout', 'Auth\LoginController@logout')->name('logout');
Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('register', 'Auth\RegisterController@register');
Route::get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
Route::post('password/reset', 'Auth\ResetPasswordController@reset')->name('password.update');
Route::get('password/confirm', 'Auth\ConfirmPasswordController@showConfirmForm')->name('password.confirm');
Route::post('password/confirm', 'Auth\ConfirmPasswordController@confirm');
Route::get('email/verify', 'Auth\VerificationController@show')->name('verification.notice');
Route::get('email/verify/{id}/{hash}', 'Auth\VerificationController@verify')->name('verification.verify');
Route::post('email/resend', 'Auth\VerificationController@resend')->name('verification.resend');

//vista admin
//http://localhost/funam/public/admin/login
Route::get('admin/login', function() {
    return view('login');//solo especificamos el nombre de la view
});
Route::get('admin/inicio', 'ControllerAdmin@initcon'); //admin
Route::get('inicio', 'ControllerFront@initcon'); //public
//http://localhost/funam/public/inicio
//login

    Route::get('admin/logins', 'AuthController@index');

//http://localhost/funam/public/admin/login
//http://localhost/funam/public/main_usuarios
Route::get('/mainusuarios', 'MainnController@mainusuarios');