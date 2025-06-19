<?php

namespace App\Utils;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class ImageManager{
    public function uploadImages($request, $post){
        // upload images
        if($request->hasFile('images')){
            foreach($request['images'] as $image){
                $imageName = Str::uuid().time().'.'.$image->getClientOriginalExtension();
                $imagePath = $image->storeAs('uploads/posts', $imageName, ['disk' => 'uploads']);
                
                // save by relation
                $post->imagePosts()->create([
                    'path' => $imagePath,
                    'name' => $imageName,
                ]);
            };
        }
    }

    public function deleteImages($post){
        if($post->imagePosts->count() > 0){
            foreach($post->imagePosts as $index => $image){
                if(File::exists(public_path($image->path))){
                    File::delete(public_path($image->path));
                }
            }
        }
    }
}
