<?php

namespace App\Traits;


//codigo necesario para construir todas las repsuestas de la api
trait ApiResponse {

    //respuestas sactifactorias
    private function successResponse($data, $code) {
        return response()->json($data, $code);
    }

    protected function errorResponse($message, $code) {
        return response()->json(['error' => $message, 'code' => $code], $code);
    }

    protected function showAll(Collection $collection, $code = 200) {
        return $this->successResponse(['data' => $collection], $code);
    }

    protected function showOne(Model $instance, $code = 200) {
        return $this->successResponse(['data' => $instance], $code);
    }

}
