<?php

use Illuminate\Support\Facades\Route;

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

/*
Route::get('/', function () {
    return view('home');
});
*/

Route::group(['namespace' => 'Auth'], function() {
    Route::get('/logout',        'LoginController@logout');
    Route::post('/login',        'LoginController@login')->name('login');
    Route::get('/login',        'LoginController@showLoginForm')->name('login');
});

Route::group(['middleware' => ['auth']], function () {
    Route::get('/',             'Instansi\HomeController@index');
    Route::get('/TambahUsul',   'Instansi\HomeController@TambahUsul');
});