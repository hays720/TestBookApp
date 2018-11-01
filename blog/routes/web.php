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

Route::get('/',['uses'=>'mainePageController@execute']);

Route::get('/add',function (){
    return view('site.add');
});

Route::post('/add/upload','addTestAppController@addBook')->name('form.upload');