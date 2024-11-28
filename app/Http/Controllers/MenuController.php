<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Almacen;

class MenuController extends Controller
{
    public function dashboard(){
        return view('dashboard');
    }

    public function welcome(){
        // Obtener todos los almacenes de la base de datos
        $almacenes = Almacen::all();

        // Pasar los almacenes a la vista welcome
        return view('welcome', compact('almacenes'));
    }


    public function index()
    {
        if (auth()->user()->tipo === 'admin') {
            $almacenes = Almacen::all();
            return view('welcome', compact('almacenes'));
        } else{
            $almacenes = Almacen::all();
            return view('welcome', compact('almacenes'));
        }
    }
}
