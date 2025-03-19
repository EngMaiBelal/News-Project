<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\frontend\PostController;
use App\Http\Controllers\Frontend\AboutController;
use App\Http\Controllers\Frontend\TermsController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\Frontend\CommentController;
use App\Http\Controllers\Frontend\PrivacyController;
use App\Http\Controllers\Frontend\CategoryController;
use App\Http\Controllers\Frontend\NewsSubscriberController;


Route::group(['prefix' => '/home', 'as' => 'home.'], function () {
    Route::get('/', [HomeController::class, 'index'])->name('index');
    Route::post('/news-subscriber', [NewsSubscriberController::class, 'store'])->name('news.subscriber');
    Route::get('terms', [TermsController::class, 'index'])->name('terms');
    Route::get('privacy', [PrivacyController::class, 'index'])->name('privacy');
    Route::get('about', [AboutController::class, 'index'])->name('about');
    Route::get('show-category/{category:slug}', [CategoryController::class, '__invoke'])->name('show.category');
    Route::resource('posts', PostController::class)->except(['show']);
    Route::get('/posts/{post:slug}', [PostController::class, 'show'])->name('post.show');
    Route::get('/posts/comments/{post:slug}', [CommentController::class, 'show'])->name('post.comments.show');
    Route::post('/posts/comments/add-comment', [CommentController::class, 'store'])->name('post.comments.store');
    Route::get('contact-us', [ContactController::class, 'index'])->name('contact.index');
    Route::post('contact-us/store', [ContactController::class, 'store'])->name('contact.store');
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
