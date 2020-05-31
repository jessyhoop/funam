<?php

namespace App\Traits;
  use Illuminate\Database\Eloquent\Model;//importante
 use Illuminate\Support\Collection;//importante para el showall el uso de la colecction

//codigo necesario para construir todas las respuestas de la api

trait ApiResponse {

    //respuestas sactifactorias
    private function successResponse($data, $code,$mensaje='') {
//        return response()->json(["data"=>$data], $code);
        return response()->json(["data"=>$data,'mensaje'=>$mensaje],$code);
    }

    protected function errorResponse($message, $code) {
        return response()->json(['mensaje' =>$message, 'status' => $code], $code);
    }

    protected function showAll(Collection $collection, $code = 200) {
//        return $this->successResponse(['data'=>$collection], $code);
        return $this->successResponse($collection, $code);
    }

    protected function showOne(Model $instance, $mensaje='', $code = 200) {
        return $this->successResponse( $instance, $code,$mensaje);
    }
}
