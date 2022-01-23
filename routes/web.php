<?php

use App\Http\Controllers\BloodGroupController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\HospitalController;
use App\Http\Controllers\UserAuthController;
use Facade\FlareClient\View;
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

//Route::get('/','App\Http\controllers\CityController@index');
//Route::post('/search',[HospitalController::class,'search']);


/*
Route::get('/','App\Http\controllers\CityController@index')->name('/');
Route::get('home',function(){return redirect('/'.'#headerID');})->name('home');
Route::get('about',function(){return redirect('/'.'#aboutID');})->name('about');
Route::get('search',function(){return redirect('/'.'#searchID');})->name('search');
Route::get('contact',function(){return redirect('/'.'#contactID');})->name('contact');
Route::post('/',[HospitalController::class,'search'])->name('search.route');
Route::resource('blood_groups', BloodGroupController::class);
*/

//login register
Route::post('create',[UserAuthController::class, 'create'])->name('auth.create');
Route::post('check',[UserAuthController::class,'check'])->name('auth.check');
Route::get('logout',[UserAuthController::class,'logout'])->name('auth.logout');


Route::group(['middleware'=>['AuthCheck']], function(){
    //login
    Route::get('login',[UserAuthController::class, 'login'])->name('auth.login');
    Route::get('register',[UserAuthController::class, 'register'])->name('auth.register');
    //home about search contact
    Route::get('/','App\Http\controllers\CityController@index')->name('/');
    Route::get('home',function(){return redirect('/'.'#headerID');})->name('home');
    Route::get('about',function(){return redirect('/'.'#aboutID');})->name('about');
    Route::get('search',function(){return redirect('/'.'#searchID');})->name('search');
    Route::get('contact',function(){return redirect('/'.'#contactID');})->name('contact');
    Route::post('/',[HospitalController::class,'search'])->name('search.route');
    Route::resource('blood_groups', BloodGroupController::class);
});
