<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class UsuarioSala extends Model {

    protected $table = 'usuarioSala';
//    protected $fillable = [
//        'alumno',
//        'status',
//    ];
    
    const ACTIVO = '1';
    const INACTIVO = '0';

    public function esActivo() {
        return $this->status == UsuarioSala::ACTIVO;
    }

    public function NoEsActivo() {
        return $this->status == UsuarioSala::INACTIVO;
    }

}
