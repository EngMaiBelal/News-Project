<?php

namespace App\Providers;

use App\Models\Post;
use App\Models\Category;
use App\Models\RelatedSite;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\ServiceProvider;

class SharedDataServiceProvider extends ServiceProvider
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
        if(!Cache::has('latest_posts')){
            $latest_posts = Post::active()->select('slug', 'title', 'created_at', 'id')->latest()->limit(3)->get();
            Cache::remember('latest_posts', 3600, function() use($latest_posts){
                return $latest_posts;
            });
        }

        if(!Cache::has('popular_posts')){
            $popular_posts = Post::active()->withCount('comments')->with('comments')->limit(3)->orderBy('comments_count', 'desc')->get();
            Cache::remember('popular_posts', 3600, function() use($popular_posts){
                return $popular_posts;
            });
        }
        $latest_posts = Cache::get('latest_posts');
        $popular_posts =  Cache::get('popular_posts');

        $related_sites = RelatedSite::select('name','url')->get();
        $categories = Category::active()->withCount('posts')->get();
        $most_views = Post::active()->orderBy('views_num', 'desc')->with('imagePosts')->limit(3)->get();

        view()->share([
            'related_sites' => $related_sites,
            'categories' => $categories,
            'most_views' => $most_views,
            'popular_posts' => $popular_posts ,
            'latest_posts' => $latest_posts
        ]);
    }
}
