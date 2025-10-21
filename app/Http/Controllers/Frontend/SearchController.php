<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Post;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {
        $request->validate([
            'search'=> ['nullable', 'string', 'max:100']
        ]);
        $data_search = strip_tags($request->search);
        $posts = Post::active()->where('title', 'LIKE', '%'.$data_search.'%')
                    ->orWhere('description', 'LIKE', '%'.$data_search.'%')
                    ->with('imagePosts')
                    ->latest()
                    ->paginate(9);
        return view('frontend.search', compact('posts'));
    }
}
