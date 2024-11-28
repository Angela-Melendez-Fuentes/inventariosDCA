<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Almacen;

class WarehouseController extends Controller
{
    public function store(Request $request)
    {
        // Validar la solicitud
        $request->validate([
            'name' => 'required|string|max:255',
        ]);

        // Crear el almacén
        Almacen::create([
            'nombre' => $request->name,
        ]);

        // Responder con éxito
        return response()->json(['success' => true]);
    }

    public function view($name)
    {
        return view('almacenView', ['name' => $name]);
    }

    public function index()
    {
        // Obtener todos los almacenes desde la base de datos
        $almacenes = Almacen::all();

        // Pasar los almacenes a la vista welcome
        return view('welcome', compact('almacenes'));
    }

    public function update(Request $request, $id)
    {
        $almacen = Almacen::findOrFail($id);
        $almacen->update(['nombre' => $request->name]);
        return response()->json(['success' => true]);
    }

    public function destroy($id)
    {
        $almacen = Almacen::findOrFail($id);
        $almacen->delete();
        return response()->json(['success' => true]);
    }

}
