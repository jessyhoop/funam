<?php

namespace App\Traits;
 use Illuminate\Support\Collection;//importante para el showall el uso de la colecction
  use Illuminate\Database\Eloquent\Model;//importante

//codigo necesario para construir todas las respuestas de la api

trait ApiResponse {

    //respuestas sactifactorias
    private function successResponse($data, $code) {
        return response()->json($data, $code);
    }

    protected function errorResponse($message, $code) {
        return response()->json(['error' => $message, 'code' => $code], $code);
    }

    protected function showAll(Collection $collection, $code = 200) {
        return $this->successResponse($collection, $code);
    }

    protected function showOne(Model $instance, $code = 200) {
        return $this->successResponse(['data' => $instance], $code);
    }
}
