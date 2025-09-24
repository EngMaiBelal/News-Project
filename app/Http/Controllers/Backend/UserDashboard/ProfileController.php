<?php

namespace App\Http\Controllers\Backend\UserDashboard;

use Illuminate\Support\Facades\Cache;
use App\Utils\imageManager;
use App\Models\Post;
use App\Models\Comment;
use Illuminate\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Http\Requests\backend\UserDassboard\PostStoreRequest;

class ProfileController extends Controller
{
    public function index(){
        // $posts = Post::active()->with('imagePosts')->where('user_id', Auth::user()->id)->get();
        $posts = auth()->user()->posts()->active()->with('imagePosts')->take(2)->latest()->get();
        // return $posts->first()->imagePosts()->first()->path;
        // dd($posts);
        return view('backend.user-dashboard.dashboard', compact('posts'));
    } 

    public function storePost(PostStoreRequest $request, ImageManager $imageManager){
        // comment_able check
        if( $request['comment_able'] == 'on' ){
            $request['comment_able'] = 1;
        }else{
            $request['comment_able'] = 0;
        }

        // user_id
        $request['user_id'] = Auth::user()->id;
        
        try{
            DB::beginTransaction();
            // store post
            $post = Post::create([
                'title' => $request['title'],
                'description' => $request['description'],
                'category_id' => $request['category_id'],
                'comment_able' => $request['comment_able'],
                'user_id' => $request['user_id']
            ]);

            $imageManager->uploadImages($request, $post);
            DB::commit();
            Cache::forget('read_more_posts');
            Cache::forget('latest_posts');
                
        }catch(\Exception $e){
            DB::rollBack();
            // dd($e);
            return redirect()->back()->withErrors(['errors'=> $e->getMessage()]);
        }
        Session::flash('success', 'Post Created Successfuly');
        return redirect()->back();
    }

    public function editPost(Post $post){
        return 'ok';
    }
    public function destroyPost(Post $post, ImageManager $imageManager){
        try{
            DB::beginTransaction();
            $imageManager->deleteImages($post);
            $post->delete();
            Cache::forget('read_more_posts');
            Cache::forget('latest_posts');
            DB::commit();
        }catch(\Exception $e){
            DB::rollBack();
            return redirect()->back()->withErrors(['errors'=> $e->getMessage()]);
        }
        Session::flash('success', 'Post Delete Successfuly');
        return redirect()->back();
    }
    public function getCommentsPost(Post $post){
        // $comments = $post->comments()->with('user', 'post')->get();
        $comments = Comment::where('post_id' ,$post->id)->with('user')->get();
        
        if($comments->isEmpty()){
             return response()->json([
                'data'=> null,
                'msg' => "Don't found Comments",
            ]);
        }else{
             return response()->json([
                'data'=> $comments,
                'msg' => "Successfully Sending",
            ]);
        }
    }
}
