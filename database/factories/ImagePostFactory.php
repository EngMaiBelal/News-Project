<?php

namespace Database\Factories;

use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class ImagePostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $directoryUrl = Storage::url('images/');
        $imageName = uniqid() .'.jpg';
        return [
            // if i get it from storage
            // 'path' => $directoryUrl .'/'. $imageName,
            // 'path' => fake()->imageUrl(),
            'path' => 'https://placehold.co/450x350',
            'name' => 'uploads/posts/'.$imageName
        ];
    }
}
