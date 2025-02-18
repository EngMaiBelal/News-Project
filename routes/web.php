<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\NewsSubscriberController;
use App\Http\Controllers\Frontend\AboutController;
use App\Http\Controllers\Frontend\TermsController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\Frontend\PrivacyController;


Route::group(['prefix' => '/home', 'as' => 'home.'], function () {
    Route::get('/', [HomeController::class, 'index'])->name('index');
    Route::post('/news-subscriber', [NewsSubscriberController::class, 'store'])->name('news.subscriber');
    Route::get('contact', [ContactController::class, 'index'])->name('contact');
    Route::get('terms', [TermsController::class, 'index'])->name('terms');
    Route::get('privacy', [PrivacyController::class, 'index'])->name('privacy');
    Route::get('about', [AboutController::class, 'index'])->name('about');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
