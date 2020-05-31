<?php

namespace App\Models;

use App\Models\Alumno;
use Illuminate\Database\Eloquent\Model;

class Carrera extends Model {

    protected $hidden = ['created_at', 'status'];
    protected $table = 'carrera';
//protected $primary_key = 'idCarrera';
//const CREATED_AT = 'createdAt';
//const UPDATED_AT = 'updatedAt';
//    protected $fillable = [
//        'carrera',
//        'status',
////        'id',
//    ];
    //no se asginan valores
    protected $guarded = ['created_at', 'id'];

    const ACTIVO = '1';
    const INACTIVO = '0';

    public function esActivo() {
        return $this->status == Carrera::ACTIVO;
    }

    public function NoEsActivo() {
        return $this->status == Carrera::INACTIVO;
    }

    //funcion que no esta dentro del ORM si no que es personaizada
    //y entonces lo busca por funciones scope
//    y lo pasamospor referencia
    public function scopeGet_all_inactives($query) {
        return $query->where('status', '0')->get();
    }

    public function scopeGet_all_actives($query) {
        return $query->where('status', '1')->get();

//------------------debug query--------------------------
//        dd($query->where('status','1')->toSql());
//        var_dump($query->where('status','1')->toSql);
    }

//    public function scopeReactivate($id) {
//         $carrera = Carrera::findOrFail(2); //find or fail por si existe o no en la bd
//        $carrera['status']= '1'; //asignamos el attr name es igual al valor recibido a la peticionv
//          return $carrera->save();
//   
//    }
    //mutadores-- ingresar y obtener valor de la bd con cierta modificiACION
    public function setCarreraAttribute($carrera) {//seteamos el valor para ingresar mutador
        $this->attributes['carrera'] = strtolower($carrera);
    }
//https://medium.com/@sdkcodes/laravel-eloquent-eager-loading-9596b15e8b5d
//    //acesor se transforma pero no se cambia al original en la d
    public function getCarreraAttribute($carrera) {//seteamos el valor para ingresar mutador
        return ucwords($carrera);
    }

    public function alumnos() {//tiene 
        return $this->alumno->hasMany(Alumno::class);
    }

//
//    //mutador
//    public function setEmailAttribute($carrera) {//seteamos el valor para ingresar mutador
//        $this->attributes['email'] = strtolower($carrera);
//    }
}
