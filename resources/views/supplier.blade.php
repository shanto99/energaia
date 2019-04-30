@extends('layouts.app')

@section('content')
    <div class="container">

        <div class="row justify-content-center">

            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Products to be supplied</div>
                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        @foreach($tobeDeliveredProducts as $product)
                            <p>{{$product->name}}</p>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
