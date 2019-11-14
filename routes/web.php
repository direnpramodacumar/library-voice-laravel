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
Auth::routes();

Route::get('/','HomeController@index');

Route::get('/home','HomeController@index');

Route::get('/autocompleteBook', 'BooksController@autocomplete');

Route::get('/autocompleteUser', 'UsersController@autocomplete');

Route::get('/dynamic_pdf', 'DynamicPDFController@index');

Route::get('/dynamic_pdf/pdf/user', 'DynamicPDFController@pdfUser');

Route::get('/dynamic_pdf/pdf/book', 'DynamicPDFController@pdfBook');

Route::get('/dynamic_pdf/pdf/loan', 'DynamicPDFController@pdfLoan');

Route::get('/dynamic_pdf/pdf/fine', 'DynamicPDFController@pdfFine');

Route::get('/user/book', 'UserPagesController@book');
Route::get('/user/fine', 'UserPagesController@fine');
Route::get('/user/loan', 'UserPagesController@loan');

Route::resource('book','BooksController');

Route::resource('user','UsersController');

Route::resource('loan','LoansController');

Route::resource('fine','FinesController');