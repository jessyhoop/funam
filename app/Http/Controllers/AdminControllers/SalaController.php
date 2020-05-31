<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Sala; //modelo
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class SalaController extends ApiController {

    public function get_all() {
        $salas = Sala::get_all_actives();
        return $this->showAll($salas);
    }

    public function get_all_inactives() {
        $salas = Sala::get_all_inactives();
        return $this->showAll($salas);
    }

    public function get_by_id(Sala $sala) {
        return $this->showOne($sala);
    }

    public function create(Request $request) {//post create
        $campos = $request->all(); //ontenemos toda la peticion
        $rules = [
            'sala' => ['required',
                'unique:sala'],
            'cupo' => 'required|numeric|min:20|max:60'
        ];
        $this->validate($request, $rules);
        $campos['sala'] = $request->sala;
        $campos['cupo'] = $request->cupo;
        $campos['status'] = Sala::ACTIVO;
        $sala = Sala::create($campos);
        return $this->showOne($sala, "Registro creado correctamente");
    }

    public function update(Request $request) {
        $sala = Sala::findOrFail($request->id); //find or fail por si existe o no en la bd
        $reglas = [
            'sala' => 'required|unique:sala,sala,' . $request->id,
            'cupo' => 'required|numeric|min:20|max:60'
        ];
        $this->validate($request, $reglas);
        $sala->sala = $request->sala; //asignamos el attr name es igual al valor recibido a la peticion
        $sala->cupo = $request->cupo;
        $sala->save();
        return $this->showOne($sala, 'registro actualizado correctamente');
    }

    public function inactivate(Sala $sala) {
        $sala->status = Sala::INACTIVO;
        $sala->save();
        return $this->showOne($sala, 'Sala Deactivada');
    }
    public function reactivate(Sala $sala) {
        $sala->status = Sala::ACTIVO;
        $sala->save();
        return $this->showOne($sala, 'Sala Reactivada');
    }
}
