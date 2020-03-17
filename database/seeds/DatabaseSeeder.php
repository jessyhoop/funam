<?php

use App\Tabla;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder {

    public function run() {
//        antres de mandar allar los facotrys debemos de boorarlo para evitar que se ejecuten muchas veces
         $this->call(DatabaseSeeder::class);
        //verificacion de dupplicidad
//        DB::statement('SET F OREIGN_KEY_CHECKS=0'); //para evitar la verificacion de claves foreanas y poner duplicidad 
      //  Tabla::truncate(); //truncar sin borrar 
      DB::table('tabla')->truncate();
//        cantidad de registro que se va ingresar
        $cantidadRowCarrera = 5;
        //crear e insertar datos
        factory(App\Tabla::class, $cantidadRowCarrera)->create();
    }

}
