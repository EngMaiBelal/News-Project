<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index(){
        $posts = Post::with('imagePosts')->latest()->paginate(9);
        $oldest_news = Post::oldest()->with('imagePosts')->take(3)->get();
        $most_views = Post::orderBy('views_num', 'desc')->with('imagePosts')->limit(3)->get();
        $popular_posts = Post::withCount('comments')->with('comments')->limit(3)->orderBy('comments_count', 'desc')->get();
        $categories = Category::with(['posts' => function ($query) {
            $query->limit(4);
        }])->get();

        return view('frontend.index', compact('posts', 'most_views', 'oldest_news', 'popular_posts', 'categories'));
    }
}
// laravel ui 
// multi guard
