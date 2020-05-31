<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Sala extends Model {

    protected $hidden = ['created_at', 'status'];
    protected $table = 'sala';
    protected $guarded = ['created_at', 'id'];

    const ACTIVO = '1';
    const INACTIVO = '0';

    public function esActivo() {
        return $this->status == Sala::ACTIVO;
    }

    public function NoEsActivo() {
        return $this->status == Sala::INACTIVO;
    }

    public function scopeGet_all_inactives($query) {
        return $query->where('status', '0')->get();
    }

    public function scopeGet_all_actives($query) {
        return $query->where('status', '1')->get();
    }

    public function setSalaAttribute($sala) {//seteamos el valor para ingresar mutador
        $this->attributes['sala'] = strtolower($sala);
    }

    public function getSalaAttribute($sala) {//seteamos el valor para ingresar mutador
        return ucwords($sala);
    }

}
