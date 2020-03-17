<?php
//modelos de la bd
namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Str;

class User extends Authenticatable {

    use Notifiable;

    //cuando tienes varias tablas de herencia debes de especificar la tabla
    protected $table = 'users';

    const USUARIO_VERIFICADO = '1';
    const USUARIO_NO_VERIFICADO = '0';
    const USUARIO_ADMINISTRADOR = 'true';
    const USUARIO_REGULAR = 'false';

    protected $fillable = [
        'name',
        'email',
        'password',
        'verified',
        'verification_token',
        'admin'
    ];

//mutadores-- ingresar y obtener valor de la bd con cierta modificiACION
    public function setNameAttribute($attr) {//seteamos el valor para ingresar mutador
        $this->attributes['name'] = strtolower($attr);
    }

    //acesor
    public function getNameAttribute($name) {//seteamos el valor para ingresar mutador
        return ucwords($name);
    }

    //mutador
    public function setEmailAttribute($attr) {//seteamos el valor para ingresar mutador
        $this->attributes['email'] = strtolower($attr);
    }

    //guardar mofidicaciones es  php artisan migrate:refesh --seed por que son operaciones sobre la bd

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token','verification_token'
    ];//ocultados en las respuestas json

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function esVerificado() {
        return $this->verified == User::USUARIO_VERIFICADO;
    }

    public function esAdministrador() {
        return $this->admin == User::USUARIO_ADMINISTRADOR;
    }

 
    public static function generarVerificationToken() {
        return Str::random(40);
    }

}
