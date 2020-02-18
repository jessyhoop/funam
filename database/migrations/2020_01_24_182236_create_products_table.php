<?php
use App\Product;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('description');
            $table->string('name');
            $table->integer('quantity')->unsigned();
            $table->timestamps();
            $table->string('status')->default(Product::PRODUCTO_NO_DISPONIBLE);
            $table->string('image');
            $table->integer('seller_id')->unsigned();
            $table->foreign('seller_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('products');
    }

}
