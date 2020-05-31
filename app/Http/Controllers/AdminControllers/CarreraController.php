<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Carrera; //modelo
use App\Models\Rol; //modelo
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class CarreraController extends ApiController {

    public function get_all() {
//api---  http://localhost/funam/public/admin/carreras/get_all
        $carreras = Carrera::get_all_actives();
        return $this->showAll($carreras);
    }

    public function get_all_inactives() {
//api---http://localhost/funam/public/admin/carreras/get_all
        $carreras = Carrera::get_all_inactives();
        return $this->showAll($carreras);
    }

//    public function get_by_id($id) {
////        $carrera = Carrera::find($id);
//////        dd($carrera);
////        if ($carrera) {
////            return $this->showOne($carrera);
////        } else {
////            return $this->errorResponse('no se encontraron registros con el id '.$id, 402);
////        }
//        $carrera = Carrera::find($id);
//        return $this->showOne($carrera);
//    }
    //argumentos-es relacion de 
    //dependencia implicita pero no
    // en lo que revise que tenga otroa campos
    //o dependa de otras tablas
    public function get_by_id(Carrera $carrera) {
        return $this->showOne($carrera);
    }

//    http://localhost/funam/public/users  necesitamos mandar datos sino marca erro en db default 
    public function create(Request $request) {//post create
        //postman-form data http://localhost/funam/public/users
        $campos = $request->all(); //ontenemos toda la peticion
        $rules = [
            'carrera' => ['required',
                'unique:carrera']
        ];
//       //cuando fallan las reglas laravel realiza una redireccion a la ubicacion anteror del usuario
        $this->validate($request, $rules);
        //obtenemos peticiones especidicas
        $campos['carrera'] = $request->carrera;
        $campos['status'] = Carrera::ACTIVO;
        $carrera = Carrera::create($campos);
        return $this->showOne($carrera, "registro creado correctamente");
    }

    public function update(Request $request) {
        $carrera = Carrera::findOrFail($request->id); //find or fail por si existe o no en la bd
//  print_r($carrera);
//<columna>=>unique:<nombredeTabla>,<columna>
        $reglas = [
            'carrera' => 'required|unique:carrera,carrera,' . $request->id
        ];
        $this->validate($request, $reglas);
        $carrera->carrera = $request->carrera; //asignamos el attr name es igual al valor recibido a la peticion
//        if (!$carrera->isDirty()) {//debe de cambiarse algo para ser guardado
//            return $this->errorResponse('se debe'
//                            . ' de especificar almenos un valor diferente para guardar los cambios'
//                            , 422);
//        }
        $carrera->save();
        return $this->showOne($carrera, 'registro actualizado correctamente');
    }

    public function inactivate(Carrera $carrera) {
//        $carrera = Carrera::findOrFail($id); //find or fail por si existe o no en la bd
        $carrera->status = Carrera::INACTIVO;
        $carrera->save();
        return $this->showOne($carrera,'Carrera Deactivada');
    }

    public function reactivate(Carrera $carrera) {
        $carrera->status = Carrera::ACTIVO;
        $carrera->save();
        return $this->showOne($carrera,'Carrera Reactivada');
    }

}
