<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Alumno; //modelo
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;
use Illuminate\Validation\Rule;
//https://blog.pusher.com/advanced-laravel-eloquent-usage/
class AlumnoController extends ApiController {

    public function get_all() {
//        $orders = Alumno::All();
//        $orders->carrera;
//        dd($orders);
        $products = Alumno::with('carrera:id,carrera,status')
                ->get();
//      dd($products);
//    foreach($orders as $order){
//        echo $order->carrera->count();
//    }
//dd($orders);
//    foreach($orders as $order){
//        echo $order->alumno->carrera;
    
        return $this->showAll($products);
        /* @var $carrera type */
//    }
    
    }

    public function get_all_inactives() {
        $alumnos = Alumno::get_all_inactives();
        return $this->showAll($alumnos);
    }

    public function get_by_id($id) {
        $alumno = Carrera::find($id);
        return $this->showOne($alumno);
    }

    public function create(Request $request) {//post create
        $campos = $request->all(); //ontenemos toda la peticion
        $rules = [
            'rol' => ['required',
                'unique:rol']
        ];
        $this->validate($request, $rules);
        $campos['rol'] = $request->rol;
        $campos['cuenta'] = $request->rol;
        $campos['nombre'] = $request->rol;
        $campos['aPaterno'] = $request->rol;
        $campos['aMaterno'] = $request->rol;
        $campos['status'] = Alumno::ACTIVO;
        $rol = Alumno::create($campos);
        return $this->showOne($rol, "registro creado correctamente");
    }

    public function update(Request $request) {
        $rol = Alumno::findOrFail($request->id); //find or fail por si existe o no en la bd
        $reglas = [
            'rol' => 'required|unique:rol,rol,' . $request->id
        ];
        $this->validate($request, $reglas);
        $rol->rol = $request->rol;
        $rol->save();
        return $this->showOne($rol, 'registro actualizado correctamente');
    }

    public function inactivate(Alumno $rol) {

        $rol->status = Alumno::INACTIVO;
        $rol->save();
        return $this->showOne($rol, 'Alumno Desactivado');
    }

    public function reactivate(Alumno $rol) {
        $rol->status = Alumno::ACTIVO;
        $rol->save();
        return $this->showOne($rol, 'Alumno Reactivado');
    }

}
