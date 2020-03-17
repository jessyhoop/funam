<?php


namespace App;
use Illuminate\Database\Eloquent\Model;

class Tabla extends Model {

    protected $table = 'tabla';
//    protected $fillable = [
//        'carrera',
//        'status',
//    ];
protected $fillable = ['nombre'];
}
