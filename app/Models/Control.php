<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Control extends Model {

    protected $table = 'control';
//    protected $fillable = [
//        'alumno',
//        'status',
//    ];
    
    const ACTIVO = '1';
    const INACTIVO = '0';

    public function esActivo() {
        return $this->status == Control::ACTIVO;
    }

    public function NoEsActivo() {
        return $this->status == Control::INACTIVO;
    }

}
