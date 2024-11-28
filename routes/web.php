<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\RegisteredUserController;
use App\Http\Controllers\WarehouseController;

// Ruta para guardar almacenes
Route::post('/api/almacenes', [WarehouseController::class, 'store']);

// Ruta para mostrar la vista del almacén
Route::get('/almacenes/{name}', [WarehouseController::class, 'view'])->name('almacenView');


Route::get('/', [MenuController::class, 'welcome'])->name('welcome');
Route::get('/dashboard', [MenuController::class, 'index'])->name('dashboard');

// Ruta para actualizar un almacén
Route::put('/api/almacenes/{id}', [WarehouseController::class, 'update']);

// Ruta para eliminar un almacén
Route::delete('/api/almacenes/{id}', [WarehouseController::class, 'destroy']);





Route::get('/admin/register', [RegisteredUserController::class, 'create'])->name('admin.register');
Route::post('/admin/register', [RegisteredUserController::class, 'store'])->name('admin.register');
Route::get('/admin/administrar', [UsuarioController::class, 'index'])->name('admin.administrar');

Route::get('/admin/usuarios', [UsuarioController::class, 'index'])->name('admin.administrar');
Route::get('/usuarios/{id}/edit', [UsuarioController::class, 'edit'])->name('usuarios.edit');
Route::put('/usuarios/{id}', [UsuarioController::class, 'update'])->name('usuarios.update');
Route::delete('/usuarios/{id}', [UsuarioController::class, 'destroy'])->name('usuarios.destroy');


Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';


















use App\Http\Controllers\MenuController;

Route::get('/', [MenuController::class, 'welcome'])->middleware(['auth', 'verified'])->name('welcome');
Route::get('/dashboard', [MenuController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');

