<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */
use App\Tabla;
use Faker\Generator as Faker;

/*
  forma de insertar datos al interior de las tabls con el uso de factoris funciones
 *  que nos permite crear datos falsos utiliza fakes libreria que facilita la crea
 * cxion de datos falsas
 * 
 * ejercutar factories depues de la definicion y que se carguen a ala base de datos 
 *  
 */
$factory->define(Tabla::class, function (Faker\Generator $faker) {
    return [
//        'nombre' => '$faker->sentenceddd'
        'nombre' => $faker->name
//        'createdAt' =>$faker->dateTime('2014-02-25 08:37:17'),
//        'updatedAt' => $faker->dateTime('2014-02-25 08:37:17'),
//        'status' => $faker->randomElement([Carrera::ACTIVO, Carrera::INACTIVO])
    ];
});
//
//$factory->define(Category::class, function (Faker $faker) {
//    return [
//        'name' => $faker->word, //work utiliza palabras x
//        'description' => $faker->paragraph(1)
//    ];
//});
//$factory->define(Product::class, function (Faker $faker) {
//    return [
//        'name' => $faker->word, //work utiliza palabras x
//        'description' => $faker->paragraph(1),
//        'quantity' => $faker->numberBetween(1, 10),
//        'status' => $faker->randomElement([Product::PRODUCTO_DISPONIBLE, Product::PRODUCTO_NO_DISPONIBLE]),
//        'image' => $faker->randomElement(['uno.jpg', 'dos,jpg', 'tres.jpg']),
//        'seller_id' => User::all()->random()->id,
//    ];
//});
//$factory->define(Transaction::class, function (Faker $faker) {
//    $vendedor = Seller::has('products')->get()->random();
//    $comprador = User::all()->except($vendedor->id)->random();
//    return [
//        'quantity' => $faker->numberBetween(1, 3),
//        'buyer_id' => $comprador->id,
//        'product_id' => $vendedor->products->random()->id
//    ];
//});
