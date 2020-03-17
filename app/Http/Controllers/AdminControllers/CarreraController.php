<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Carrera;//modelo
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;
use Illuminate\Validation\Rule;

class CarreraController extends ApiController {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $carreras = Carrera::all();
//        echo '<pre>';
//        print_r(response()->json(['data' => $usuarios], 200));
//        echo '</pre>';
//        return view('usuarios',response()->json(['data'=>$usuarios],200));
//        print('d');
        //respuesta API
        return $this->showAll($carreras);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        
    }

    public function principal() {
        return view('usuarios');
    }

//    http://localhost/funam/public/users  necesitamos mandar datos sino marca erro en db default 
    public function store(Request $request) {//post create
        //postman-form data http://localhost/funam/public/users
        $campos = $request->all(); //ontenemos toda la peticion
        $rules = [
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6'
        ];
//        //cuando fallan las reglas laravel realiza una redireccion a la ubicacion anteror del usuario
        $this->validate($request, $rules);
        //obtenemos peticiones especidicas
        $campos['password'] = bcrypt($request->password);
        $campos['verified'] = User::USUARIO_NO_VERIFICADO;
        $campos['verification_token'] = User::generarVerificationToken();
        $campos['admin'] = User::USUARIO_REGULAR;
        $usuario = User::create($campos);
//        return response()->json(['data' => $usuario], 201);
        return response()->json(['data' => $usuario], 201);
//        return $this->successResponse($usuario,200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        $usuario = User::findOrFail($id);
        return $this->showOne($usuario);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
//    http://localhost/funam/public/users/3
//    http://localhost/funam/public/users/35856989   mala respuesta
    public function update(Request $request, $id) {
        $user = User::findOrFail($id); //find or fail por si existe o no en la bd
//reglas 
        $reglas = [
            'email' => 'email|unique:users,email,' . $user->id, //valide el email exepto por su mismo email
            'password' => 'min:6|confirmed',
            'admin' => Rule::in([User::USUARIO_ADMINISTRADOR, User::USUARIO_REGULAR])
//            'admin' => 'in' . User::USUARIO_ADMINISTRADOR . ',' . User::USUARIO_REGULAR, //cumpla con alguna de estas dos funciones
        ];
        $this->validate($request, $reglas);
        //verificacion si tienen datos 
        if ($request->has('name')) {
            $user->name = $request->name; //asignamos el attr name es igual al valor recibido a la peticion
        }
        if ($request->has('email') && $user->email != $request->email) {
            $user->verified = User::USUARIO_NO_VERIFICADO;
            $user->verification_token = User::generarVerificationToken(); //valida nuevo email
            $user->email = $request->email; //asignamos el attr name es igual al valor recibido a la peticion
        }
        if ($request->has('password')) {
            $user->password = bcrypt($request->password);
        }

        if ($request->has('admin')) {
            //solo un admin puede decidir si e so no admin 
            //si ya e sun usuario verifcado solo asi se convierte en admin
            if (!$user->esVerificado()) {
//                return response()->json(['error' => 'solo usuarios veriacacion cambiar este valor', 'codigp' => 409, 409]);

                return $this->errorResponse('unicamente los usuarios verificados '
                                . 'pueden cambiar su valor de admi', 409);
            }
            $user->admin = $request->admin;
        }
        if (!$user->isDirty()) {//si hay un peticion mal formulada 
//            return response()->json(['error' => 'se debe de especificar almeno un valor diferente para guardar los cambios'
//                        , 'code' => 422], 422);
            return $this->errorResponse('se debe de especificar almeno un valor diferente para guardar los cambios'
                            , 422);
        }
        $user->save();
        return response()->json(['data' => $user], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        
    }

}
