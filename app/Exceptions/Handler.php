<?php

namespace App\Exceptions;

use Exception;
use App\Traits\ApiResponse;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
//---importante para convertValidationExceptionToResponse
use Illuminate\Validation\ValidationException;
use Symfony\Component\HttpKernel\Exception\MethodNotAllowedHttpException;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class Handler extends ExceptionHandler {

    use ApiResponse;

    /**
     * A list of the exception types that should not be reported.
     *
     * @var array
     */
    protected $dontReport = [
        \Illuminate\Auth\AuthenticationException::class,
        \Illuminate\Auth\Access\AuthorizationException::class,
        \Symfony\Component\HttpKernel\Exception\HttpException::class,
//        \Illuminate\Database\Eloquent\ModelNotFoundExceptionC::class,
        \Illuminate\Session\TokenMismatchException::class,
        \Illuminate\Validation\ValidationException::class,
    ];

    /**
     * Report or log an exception.
     *
     * This is a great spot to send exceptions to Sentry, Bugsnag, etc.
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
     * \Illuminate\Database\Eloquent\
     */
    public function render($request, Exception $exception) {
        if ($exception instanceof ValidationException) {
            return $this->convertValidationExceptionToResponse($exception, $request);
        }
        if ($exception instanceof ModelNotFoundException) {
            return $this->errorResponse("No existe una "
                            . "instancia con el id solicitado ", 402);
        }
        if ($exception instanceof AuthenticationException) {
            return $this->unauthenticated($request, $exception);
        }
        if ($exception instanceof AuthorizationException) {
            return $this->errorResponse('No posee permisos para ejecutar esta accion', 403);
        }
        if ($exception instanceof NotFoundHttpException) {
            return $this->errorResponse('No se encontro la url especificada', 404);
        }
//        utilinado algun metodo que no es
//        method get-http://localhost/funam/public/admin/carreras/create
        if ($exception instanceof MethodNotAllowedHttpException) {
            return $this->errorResponse('El metodo especificado en la peticion no es valido ', 405);
        }
//        cualquer otra excepton
        if ($exception instanceof HttpException) {
            return $this->errorResponse(
                            $exception->getMessage(), $exception->getStatusCode());
        }
        if (config('app.debug')) {//mover en vendor ->.env
            return parent::render($request, $exception);
        }
            return $this->errorResponse('Falla inesperada ', 500);
        
    }

    /**
     * Convert an authentication exception into an unauthenticated response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Illuminate\Auth\AuthenticationException  $exception
     * @return \Illuminate\Http\Response
     */
    protected function unauthenticated($request, AuthenticationException $exception) {
        if ($request->expectsJson()) {
            return response()->json(['error' => 'Unauthenticated.'], 401);
        }

        return redirect()->guest(route('login'));
    }

    //btener lista de errroes funcion propio
    protected function convertValidationExceptionToResponse(ValidationException $e, $request) {
        $error = $e->validator->errors()->getMessages();
//        if ($e->response) {
//            return $e->response;
//        }
//
//        return $request->expectsJson()
//                    ? $this->invalidJson($request, $e)
//                    : $this->invalid($request, $e);

        return $this->errorResponse($error, 422);
    }

}
