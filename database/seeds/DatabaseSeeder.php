<?php

use App\User;
use App\Product;
use App\Category;
use App\Transaction;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class DatabaseSeeder extends Seeder {

    public function run() {
        // $this->call(UsersTableSeeder::class);
        //verificacion de dupplicidad
        DB::statement('SET FOREIGN_KEY_CHECKS=0');
        User::truncate();
        Category::truncate();
        Product::truncate();
        Transaction::truncate();
        //COMO LA TABLA PIBOTE NO TIENE MODELO
        DB::table('category_product')->truncate();
        $cantidadUusrios = 20;
        $cantidadCategorias = 30;
        $cantidadProductos = 100;
        $cantidadTransacciones = 100;
        //crear e insertar datos
        factory(User::class, $cantidadUusrios)->create();
        factory(Category::class, $cantidadCategorias)->create();

        factory(Product::class, $cantidadProductos)->create()->each(
                function ($producto) {
            $categorias = Category::all()->random(mt_rand(1, 5))->pluck('id');
            $producto->categories()->attach($categorias);
        }
        );
        factory(Transaction::class, $cantidadTransacciones)->create();
    }

}
