<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\AboutController;
use App\Http\Controllers\Frontend\TermsController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\Frontend\PrivacyController;

Route::get('/', [HomeController::class, 'index']);

Route::prefix('/')->group(function () {
    Route::get('contact', [ContactController::class, 'index'])->name('contact.index');
    Route::get('terms', [TermsController::class, 'index'])->name('terms.index');
    Route::get('privacy', [PrivacyController::class, 'index'])->name('privacy.index');
    Route::get('about', [AboutController::class, 'index'])->name('about.index');
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
