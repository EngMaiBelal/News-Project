<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\frontend\PostController;
use App\Http\Controllers\Frontend\AboutController;
use App\Http\Controllers\Frontend\TermsController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\frontend\SearchController;
use App\Http\Controllers\Frontend\CommentController;
use App\Http\Controllers\Frontend\PrivacyController;
use App\Http\Controllers\Frontend\CategoryController;
use App\Http\Controllers\Frontend\NewsSubscriberController;

Route::redirect('/', '/home');
Route::get('/dashboardd', function(){
    return view('backend.dashboard');
});

Route::group(['prefix' => '/home', 'as' => 'home.'], function () {
    Route::get('/', [HomeController::class, 'index'])->name('index');
    Route::post('/news-subscriber', [NewsSubscriberController::class, 'store'])->name('news.subscriber');
    Route::get('terms', [TermsController::class, 'index'])->name('terms');
    Route::get('privacy', [PrivacyController::class, 'index'])->name('privacy');
    Route::get('about', [AboutController::class, 'index'])->name('about');

    Route::get('show-category/{category:slug}', [CategoryController::class, '__invoke'])->name('category.show');
    
    Route::group(['prefix'=> '/posts', 'as'=> 'posts.'],function () {
        Route::resource('/', PostController::class)->except(['show']);
        Route::get('/{post:slug}', [PostController::class, 'show'])->name('show');
        Route::group(['prefix'=> '/comments', 'as'=> 'comments.'],function(){
            Route::get('/{post:slug}', [CommentController::class, 'show'])->name('show');
            Route::post('/add-comment', [CommentController::class, 'store'])->name('store');
        });
    });
    Route::group(['prefix'=> '/contact-us', 'as'=> 'contact.'],function(){
        Route::get('/', [ContactController::class, 'index'])->name('index');
        Route::post('/store', [ContactController::class, 'store'])->name('store');
    });
    Route::match(['get', 'post'] ,'/search', SearchController::class)->name('search');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
