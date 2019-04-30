<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
        'name' => $faker->string(),
        'supplier_id' => $faker->numberBetween($min = 0, $max = 1),
        'supplier_id' => 1

    ];
});
