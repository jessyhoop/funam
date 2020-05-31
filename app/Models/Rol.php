<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rol extends Model {

    protected $hidden = ['created_at', 'status'];
    protected $table = 'rol';
    protected $guarded = ['created_at', 'id'];
    const ACTIVO = '1';
    const INACTIVO = '0';
    
    public function esActivo() {
        return $this->status == Rol::ACTIVO;
    }

    public function NoEsActivo() {
        return $this->status == Rol::INACTIVO;
    }

    public function scopeGet_all_inactives($query) {
        return $query->where('status', '0')->get();
    }

    public function scopeGet_all_actives($query) {
        return $query->where('status', '1')->get();
    }

    public function setRolAttribute($rol) {//seteamos el valor para ingresar mutador
        $this->attributes['rol'] = strtolower($rol);
    }

    public function getRolAttribute($rol) {//seteamos el valor para ingresar mutador
        return ucwords($rol);
    }

}
