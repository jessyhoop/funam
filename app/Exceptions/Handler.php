<?php

namespace App\Exceptions;

use \App\Traits\ApiResponse;
use Exception;

namespace App\Exceptions\Handler;

use lluminate\Auth\AuthenticationException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler; //clase padre de las excepciones

class Handler extends ExceptionHandler {

    use ApiResponse;

    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
            //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Exception  $exception
     * @return void
     */
    public function report(Exception $exception) {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $exception
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $exception) {
        return parent::render($request, $exception);
    }

//    protected function unauthenticated($request, AuthenticationException $exception) {
//        return $request->expectsJson() ?
//                response()->json(['message' => $exception->getMessage()], 401) : redirect()->guest($exception->redirectTo() ?? route('login'));
//    }
//    protected function unauthenticated($request, AuthenticationException $exception) {
//        return $request->expectsJson() ? response()->json(['message' => $exception->getMessage()], 401) : redirect()->guest($exception->redirectTo() ?? route('login'));
//    }
//
////    //metodo nuevo para obtener respuesta json de error retornamos respuesta de tipo json 
//    protected function convertValidationExceptionToResponse(ValidationException $e, $request) {
//        if ($e->response) {
//            return $e->response;
//        }
//
//        return $request->expectsJson() ? $this->invalidJson($request, $e) : $this->invalid($request, $e);
//    }

}
