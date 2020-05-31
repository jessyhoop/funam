<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Usuario extends Model {

    protected $table = 'usuario';
//    protected $fillable = [
//        'alumno',
//        'status',
//    ];
    
    const ACTIVO = '1';
    const INACTIVO = '0';

    public function esActivo() {
        return $this->status == Usuario::ACTIVO;
    }

    public function NoEsActivo() {
        return $this->status == Usuario::INACTIVO;
    }

}
