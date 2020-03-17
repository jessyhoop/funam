php<?php


namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Carrera extends Model {

    protected $table = 'carrera';
//    protected $fillable = [
//        'carrera',
//        'status',
//    ];
    
    const ACTIVO = '1';
    const INACTIVO = '0';

    public function esActivo() {
        return $this->status == Carrera::ACTIVO;
    }

    public function NoEsActivo() {
        return $this->status == Carrera::INACTIVO;
    }

}
