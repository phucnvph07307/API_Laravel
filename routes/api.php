<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::resource('product', 'ProductController');
Route::get('get_all_products_client','ProductController@getAllProductsClient');
Route::get('get_all_categories','CategoryController@getAll');
Route::resource('category', 'CategoryController');
Route::resource('invoice', 'InvoiceController');
Route::resource('invoice_detail', 'InvoiceDetailController');
Route::post('login','AuthController@login');

Route::resource('contact', 'ContactController');
Route::resource('news', 'NewController');