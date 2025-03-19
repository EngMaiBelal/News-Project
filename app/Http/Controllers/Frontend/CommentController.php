<?php

namespace App\Http\Controllers\frontend;

use App\Models\Post;
use App\Models\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\frontend\CommentsStoreRequest;

class CommentController extends Controller
{
    public function store(CommentsStoreRequest $request)
    {
        // Validating the request
        $comment_validated = $request->validated();

        try {
            // Attempt to create a new comment
            $comment = Comment::create([
                'value' => $comment_validated['value'],
                'ip_address' => $request->ip(), // Local IP (e.g., 198.172.0.1), on server, it will be the IP of the client
                'post_id' => $comment_validated['post_id'],
                'user_id' => $comment_validated['user_id'],
            ]);
            $comment_with_user = Comment::with('user')->find($comment->id);
            // Check if the comment creation was successful
            if ($comment) {
                return response()->json([
                    'success' => true,
                    'message' => 'Comment added successfully.',
                    'data' => $comment_with_user // To show it in view
                ], 201); // 201 is the HTTP status code for "Created"
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Failed to add comment. Please try again.',
                    'error' => true
                ], 403); 
            }
        } catch (\Exception $e) {
            // Return a general error if something goes wrong
            return response()->json([
                'success' => false,
                'message' => 'An error occurred while adding the comment.',
                'error' => $e->getMessage()
            ], 500);// 500 is the HTTP status code for "Internal Server Error"
        }
    }


    /**
     * show all comments for specific post 
     *
     * @param  object $post
     * @return json
     */
    public function show(Post $post){

        $post_with_comments = $post->load(['comments' => function($query){
            $query->with(['user' => function($query){
                $query->select('image', 'id', 'user_name');
            }]);
        }]);
        
        $post_comments = $post_with_comments->comments;
        $post_comments_count = $post_comments->count();

        return response()->json([
            'post_comments' => $post_comments,
            'post_comments_count' => $post_comments_count,
        ]);
    }
}
