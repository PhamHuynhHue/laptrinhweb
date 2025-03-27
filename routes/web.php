<?php

use Illuminate\Support\Facades\Route;

Route::get('/login', function () {
    return view('pages.login'); 
});

Route::get('/register', function () {
    return view('pages.register');
});

Route::get('/update', function () {
    return view('pages.update');
});

Route::get('/list', function () {
    return view('pages.list');
});

Route::get('/view', function () {
    return view('pages.view');
});

