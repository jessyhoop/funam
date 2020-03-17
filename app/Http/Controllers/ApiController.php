<?php


namespace App\Http\Controllers;
use App\Traits\ApiResponse;

 

class ApiController extends Controller {
    //cualquier metodo se podra utilizar en otros ctrl de la api
//    -----------------------TRADES----------------------------
    //en lugar de hacer uso del trait en cada controlador solo lo hacemos aqui
    use ApiResponse;//podemos hacer uso de los metodo especificados
}
