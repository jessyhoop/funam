<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Alumno; //modelo
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class AlumnoCarreraController extends ApiController {
    public function index(Alumno $alumno) {
        $alumno=$alumno->alumno;
        return $this->showAll($alumno);
    }

}
