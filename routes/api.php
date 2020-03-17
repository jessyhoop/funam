<?php

use Illuminate\Http\Request;

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});
//rutas para las apis
Route::resource('buyers', 'Buyer\BuyerController', ['only' => ['index', 'show']]);
Route::resource('categories', 'Category\CategoryController', ['except' => ['create', 'edit']]);
Route::resource('products', 'Product\ProductController', ['only' => ['index', 'show']]);
Route::resource('transactions', 'Transaction\TransactionController', ['only' => ['index', 'show']]);
Route::resource('sellers', 'Seller\SellerController', ['only' => ['index', 'show']]);
//Route::resource('users', 'User\UserController', ['except' => ['create', 'edit']]);
//http://localhost/funam/public/usuarios/main_usuarios
Route::get('admin/home', 'ControllerAdmin@index');
//Route::get('admin/inicio', 'ControllerAdmin@initcon'); //admin
//http://localhost/funam/public/users

Route::resource('admin/users', 'User\UserController');

//carreras
Route::resource('admin/carreras', 'CarreraController');