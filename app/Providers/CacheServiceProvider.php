<?php

namespace App\Providers;

use App\Models\Post;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Cache;
class CacheServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        // Cache::forget('read_more_posts');
        // get data from Database
        if(! Cache::has('read_more_posts')){
            Cache::remember('read_more_posts', 3600 , function(){ # key, time in second, callback
                return Post::latest()->take(10)->get();
            });
        }

        // get data from Cache
        $read_more_posts = Cache::get('read_more_posts'); 

        // send data to view
        view()->share([
            'read_more_posts'=> $read_more_posts,
        ]);

    }
}
