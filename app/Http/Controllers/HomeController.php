<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Supplier;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $deliveredProducts = [];
        $supplier = Supplier::first();

        if($supplier) {
            $deliveredProducts = $supplier->products->where('is_supplied', 1);
        }


        return view('home',compact('deliveredProducts'));

    }
}
