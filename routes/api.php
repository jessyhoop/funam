<?php

use Illuminate\Http\Request;

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});
//rutas para las apis
//Route::resource('buyers', 'Buyer\BuyerController', ['only' => ['index', 'show']]);
//Route::resource('categories', 'Category\CategoryController', ['except' => ['create', 'edit']]);
//Route::resource('products', 'Product\ProductController', ['only' => ['index', 'show']]);
//Route::resource('transactions', 'Transaction\TransactionController', ['only' => ['index', 'show']]);
//Route::resource('sellers', 'Seller\SellerController', ['only' => ['index', 'show']]);
//Route::resource('users', 'User\UserController', ['except' => ['create', 'edit']]);
//http://localhost/funam/public/usuarios/main_usuarios
Route::get('admin/home', 'ControllerAdmin@index');
//Route::get('admin/inicio', 'ControllerAdmin@initcon'); //admin
//http://localhost/funam/public/users
//Route::resource('admin/users', 'User\UserController');
//carreras
//Route::get('admin/carreras/jk/{id}', 'CarreraController@sd');
//Route::resource('admin/carreras', 'CarreraController');
Route::group(['prefix' => 'admin/carreras'], function () {
    Route::get('get_by_id/{carrera}', 'CarreraController@get_by_id');
    Route::get('get_all', 'CarreraController@get_all');
    Route::get('get_all_inactives', 'CarreraController@get_all_inactives');
    Route::post('create', 'CarreraController@create');
    Route::post('update', 'CarreraController@update');
//    Route::put('update/{id}', 'CarreraController@update');
    Route::get('inactivate/{carrera}', 'CarreraController@inactivate');
    Route::get('reactivate/{carrera}', 'CarreraController@reactivate');
    Route::resource('carreras.alumnos '
            . '', 'AlumnoCarreraController@index');
});

//----------------------------A L U M N O S -----------
Route::group(['prefix' => 'admin/alumnos'], function () {
    Route::get('get_by_id/{alumno}', 'AlumnoController@get_by_id');
    Route::get('get_all', 'AlumnoController@get_all');
    Route::get('get_all_inactives', 'AlumnoController@get_all_inactives');
    Route::post('create', 'AlumnoController@create');
    Route::post('update', 'AlumnoController@update');
    Route::get('inactivate/{alumno}', 'AlumnoController@inactivate');
    Route::get('reactivate/{alumno}', 'AlumnoController@reactivate');
});

//----------------------------C O N T R O L  --------------------------
Route::group(['prefix' => 'admin/controles'], function () {
    Route::get('get_by_id/{control}', 'ControlController@get_by_id');
    Route::get('get_all', 'ControlController@get_all');
    Route::get('get_all_inactives', 'ControlController@get_all_inactives');
    Route::post('create', 'ControlController@create');
    Route::post('update', 'ControlController@update');
    Route::get('inactivate/{control}', 'ControlController@inactivate');
    Route::get('reactivate/{control}', 'ControlController@reactivate');
});

//----------------------------R E C I B O  --------------------------
Route::group(['prefix' => 'admin/recibos'], function () {
    Route::get('get_by_id/{recibo}', 'ReciboController@get_by_id');
    Route::get('get_all', 'ReciboController@get_all');
    Route::get('get_all_inactives', 'ReciboController@get_all_inactives');
    Route::post('create', 'ReciboController@create');
    Route::post('update', 'ReciboController@update');
    Route::get('inactivate/{recibo}', 'ReciboController@inactivate');
    Route::get('reactivate/{recibo}', 'ReciboController@reactivate');
});
//----------------------------R O L  --------------------------
Route::group(['prefix' => 'admin/roles'], function () {
    Route::get('get_by_id/{rol}', 'RolController@get_by_id');
    Route::get('get_all', 'RolController@get_all');
    Route::get('get_all_inactives', 'RolController@get_all_inactives');
    Route::post('create', 'RolController@create');
    Route::post('update', 'RolController@update');
    Route::get('inactivate/{rol}', 'RolController@inactivate');
    Route::get('reactivate/{rol}', 'RolController@reactivate');
});
//----------------------------S A L A  --------------------------
Route::group(['prefix' => 'admin/salas'], function () {
    Route::get('get_by_id/{sala}', 'SalaController@get_by_id');
    Route::get('get_all', 'SalaController@get_all');
    Route::get('get_all_inactives', 'SalaController@get_all_inactives');
    Route::post('create', 'SalaController@create');
    Route::post('update', 'SalaController@update');
    Route::get('inactivate/{sala}', 'SalaController@inactivate');
    Route::get('reactivate/{sala}', 'SalaController@reactivate');
});
//---------------------------- U S U A R I  O  --------------------------
Route::group(['prefix' => 'admin/usuarios'], function () {
    Route::get('get_by_id/{usuario}', 'UsuarioController@get_by_id');
    Route::get('get_all', 'UsuarioController@get_all');
    Route::get('get_all_inactives', 'UsuarioController@get_all_inactives');
    Route::post('create', 'UsuarioController@create');
    Route::post('update', 'UsuarioController@update');
    Route::get('inactivate/{usuario}', 'UsuarioController@inactivate');
    Route::get('reactivate/{usuario}', 'UsuarioController@reactivate');
});








// admin.v1.photos.index
// admin.v1.photos.show
// etc.
// 
// 
//----ien--
//Route::resource('admin/carreras/get_all', 'CarreraController');
//--------------pruebas---------
//Route::resource('carre', 'PhotoController', ['as' => 'admin']);
;
