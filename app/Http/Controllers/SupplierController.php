<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Supplier;

class SupplierController extends Controller
{
    public function index() {
        $tobeDeliveredProducts = [];

        $supplier = Supplier::first();

        if($supplier) {
            $tobeDeliveredProducts = $supplier->products->where('is_supplied', 0);
        }


        return view('supplier',compact('tobeDeliveredProducts'));

    }
}
