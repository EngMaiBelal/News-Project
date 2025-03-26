<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index(){
        $posts = Post::active()->with('imagePosts')->latest()->paginate(9);
        $oldest_news = Post::active()->oldest()->with('imagePosts')->take(3)->get();
        $most_views = Post::active()->orderBy('views_num', 'desc')
            ->with('imagePosts')
            ->limit(3)
            ->get();
        $categories = Category::active()->with(['posts' => function ($query) {
            $query->limit(4);
        }])->get();
        return view('frontend.index', compact('posts', 'most_views', 'oldest_news', 'categories'));
    }
}
