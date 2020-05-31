<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Recibo extends Model {

    protected $table = 'recibo';
//    protected $fillable = [
//        'alumno',
//        'status',
//    ];
    
    const ACTIVO = '1';
    const INACTIVO = '0';

    public function esActivo() {
        return $this->status == Recibo::ACTIVO;
    }

    public function NoEsActivo() {
        return $this->status == Recibo::INACTIVO;
    }

}
