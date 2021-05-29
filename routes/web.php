<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GuruController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/soal1', [GuruController::class,'selectTable']);
Route::get('/soal2', [GuruController::class,'selectWhere']);
Route::get('/soal3', [GuruController::class,'selectJoin']);
Route::get('/soal4', [GuruController::class,'selectJoinLike']);