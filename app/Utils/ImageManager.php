<?php

namespace App\Utils;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class ImageManager{
    public function uploadImages($request, $instance, $instanceName="posts",  $relationName = 'imagePosts'){
        $imageName = null;
        $imagePath = null;
        // upload images
        if($request->hasFile('images')){
            foreach($request['images'] as $image){
                $imageData = $this->generateImage($image, $instanceName);
                // save by relation
                $instance->{$relationName}()->create([
                    'path' => $imageData['path'],
                    'name' => $imageData['name'],
                ]);
            };
        }
    }

    public function deleteImages($instance, $relationName = 'imagePosts'){
        if($instance->imagePosts->count() > 0){
            foreach($instance->{$relationName} as $image){
                if(File::exists(public_path($image->path))){
                    File::delete(public_path($image->path));
                }
            }
        }
    }

    public function uploadImage($request, $instanceName){
        $imageName = null;
        $imagePath = null;

        if($request->hasFile('image')){
            $imageData = $this->generateImage($request->file('image'), $instanceName);
            $imageName = $imageData['name'];
            $imagePath = $imageData['path'];
        }

        return [
            'name' => $imageName,
            'path' => $imagePath,
        ];
    }

    public function updateImage($request, $instance, $instanceName){
        $imageName = null;
        $imagePath = $instance->image ?? null;
        // upload image
        if($request->hasFile('image')){
            $imageData = $this->generateImage($request->file('image'), $instanceName);
            
            if($imageData['path']){
                $this->deleteImage($instance);
                $imagePath = $imageData['path'];
                $imageName = $imageData['name'];
            }
        
        }
        return [
            'name' => $imageName,
            'path' => $imagePath,
        ];
    }

    public function deleteImage($instance){
        if ($instance->image && File::exists(public_path($instance->image))) {
            File::delete(public_path($instance->image));
        }
    }

    private function generateImage($image, $instanceName){
        // $imageName = Str::slug($request->user_name).time().".".$request->file('image')->getClientOriginalExtension();
        $imageName = Str::uuid().time().'.'.$image->getClientOriginalExtension();
        $newImagePath = $image->storeAs('uploads/'. $instanceName, $imageName, ['disk' => 'uploads']); 
        return [
            'name' => $imageName,
            'path' => $newImagePath,
        ];
    }
}
