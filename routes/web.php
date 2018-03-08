<?php

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

Route::get('/','registroController@index')->name('home');
Route::get('create','registroController@create')->name('create');
Route::post('create','registroController@store')->name('store');
Route::get('edit/{id}','registroController@edit')->name('edit');
Route::post('update/{id}','registroController@update')->name('update');
Route::delete('delete/{id}','registroController@delete')->name('delete');
