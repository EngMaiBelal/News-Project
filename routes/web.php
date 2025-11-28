<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Backend\UserDashboard\ProfileController;
use App\Http\Controllers\Backend\UserDashboard\SettingsController;
use App\Http\Controllers\Backend\UserDashboard\NotificationsController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\PostController;
use App\Http\Controllers\Frontend\AboutController;
use App\Http\Controllers\Frontend\TermsController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\Frontend\SearchController;
use App\Http\Controllers\Frontend\CommentController;
use App\Http\Controllers\Frontend\PrivacyController;
use App\Http\Controllers\Frontend\CategoryController;
use App\Http\Controllers\Frontend\NewsSubscriberController;

Route::redirect('/', '/home');

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
    
    // User Dashboard
    Route::prefix('/user/dashboard')->name('user.dashboard.')->middleware(['auth', 'verified'])->group(function () {
        Route::prefix('/profile')->name('profile.post.')->group(function () {
            Route::get('/', [ProfileController::class, 'index'])->name('index');
            Route::post('/store-post', [ProfileController::class, 'storePost'])->name('store');
            Route::get('/edit-post/{post:slug}', [ProfileController::class, 'editPost'])->name('edit');
            Route::post('/update-post', [ProfileController::class, 'updatePost'])->name('update');
            Route::delete('/delete-post/{post:slug}', [ProfileController::class, 'destroyPost'])->name('destroy');
            Route::get('/get-comments-post/{post:slug}', [ProfileController::class, 'getCommentsPost'])->name('getComments');
        });
        Route::prefix('/settings')->name('settings.')->group(function () {
            Route::get('/', [SettingsController::class, 'index'])->name('index');
            Route::post('/update', [SettingsController::class, 'update'])->name('update');
            Route::post('/update-password', [SettingsController::class, 'updatePassword'])->name('update.password');
        });

        Route::get('/notifications', [NotificationsController::class, 'index'])->name('notifications.index');
    });
});

require __DIR__.'/auth.php';