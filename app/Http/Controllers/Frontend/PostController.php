<?php

namespace App\Http\Controllers\frontend;

use App\Models\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        dd($request);
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post)
    {

        $post_by_slug = $post->with([
                        'comments' => function($query) {
                            $query->latest()->limit(3);
                        }, 
                        'imagePosts',
                        'user'])
                        ->withCount('comments')
                        ->find($post->id); //  first don`t work with =>  with ('relation')
        $post_by_slug->increment("views_num");
                        $posts_of_category = Post::active()->where('category_id' , $post_by_slug->category->id)
                    ->select('id', 'slug', 'title', 'created_at')
                    ->limit(5)
                    ->get();

        return view('frontend.posts.show', compact('post_by_slug','posts_of_category'));
    }
    
    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}