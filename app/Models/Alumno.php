<?php

namespace App\Models;
//-------modelos---
use App\Models\Carrera;
use App\Models\Recibo;
use Illuminate\Database\Eloquent\Model;

class Alumno extends Model {

    protected $table = 'alumno';
//    protected $fillable = [
//        'alumno',
//        'status',
//    ];
    protected $guarded = ['created_at', 'id'];

    const ACTIVO = '1';
    const INACTIVO = '0';

    public function esActivo() {
        return $this->status == Alumno::ACTIVO;
    }

    public function NoEsActivo() {
        return $this->status == Alumno::INACTIVO;
    }

    public function scopeGet_all_inactives($query) {
        return $query->where('status', '0')->get();
    }

    public function scopeGet_all_actives($query) {
        return $query->where('status', '1')->get();
    }

//    --------------------------mutadores--------------------------------------
    public function setNombreAttribute($nombre) {
        $this->attributes['nombre'] = strtolower($nombre);
    }

    public function setAPaternoAttribute($apellido_p) {
        $this->attributes['aMaterno'] = strtolower($apellido_p);
    }

    public function setAMaternoAttribute($apellido_m) {
        $this->attributes['aPaterno'] = strtolower($apellido_m);
    }

//-------------------------------accesores-----------------------------------------------
    public function getNombreAttribute($nombre) {//seteamos el valor para ingresar mutador
        return ucwords($nombre);
    }
    public function getAPaternoAttribute($apellido_p) {//seteamos el valor para ingresar mutador
        return ucwords($apellido_p);
    }
    public function getAMaternoAttribute($apellido_m) {//seteamos el valor para ingresar mutador
        return ucwords($apellido_m);
    }

    //-------------------------relaciones-------------------------

    public function carrera() {//es miembro pertenece
        return $this->belongsTo(Carrera::class);
    }
    public function recibos() {//tiene 
        return $this->hasMany(Recibo::class);
    }

}
