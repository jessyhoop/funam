<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Rol; //modelo
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class RolController extends ApiController {

    public function get_all() {
        $roles = Rol::get_all_actives();
        return $this->showAll($roles);
    }

    public function get_all_inactives() {
        $roles = Rol::get_all_inactives();
        return $this->showAll($roles);
    }

    public function get_by_id(Rol $rol) {
        return $this->showOne($rol);
    }

    public function create(Request $request) {//post create
        $campos = $request->all(); //ontenemos toda la peticion
        $rules = [
            'rol' => ['required',
                'unique:rol']
        ];
        $this->validate($request, $rules);
        $campos['rol'] = $request->rol;
        $campos['status'] = Rol::ACTIVO;
        $rol = Rol::create($campos);
        return $this->showOne($rol, "registro creado correctamente");
    }

    public function update(Request $request) {
        $rol = Rol::findOrFail($request->id); //find or fail por si existe o no en la bd
        $reglas = [
            'rol' => 'required|unique:rol,rol,' . $request->id
        ];
        $this->validate($request, $reglas);
        $rol->rol = $request->rol;
        $rol->save();
        return $this->showOne($rol, 'registro actualizado correctamente');
    }

    public function inactivate(Rol $rol) {
        $rol->status = Rol::INACTIVO;
        $rol->save();
        return $this->showOne($rol,'Rol Deactivado');
    }

    public function reactivate(Rol $rol) {
        $rol->status = Rol::ACTIVO;
        $rol->save();
        return $this->showOne($rol,'Rol Reactivado');
    }

}
