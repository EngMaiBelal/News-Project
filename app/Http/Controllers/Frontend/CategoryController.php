<?php

namespace App\Http\Controllers\frontend;

use App\Models\Category;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Category $category)
    {
        $category_by_slug  = Category::active()->whereSlug($category->slug)->first();
        $posts = $category_by_slug->posts()->paginate(9);  // Paginate the posts separately
        return view('frontend.categories.show', compact('category_by_slug', 'posts'));
    }
}
