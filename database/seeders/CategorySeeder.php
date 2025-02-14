<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = ['Mobile Category', 'Sports Category', 'Fashion Category', 'Cloth Category'];
        $date = fake()->date('Y-m-d h:m:s');

        foreach($data as $category){
            Category::create([
                "name" => $category,
                "slug" => str::slug($category),
                "status" => rand(0,1),
                "created_at" => $date,
                "updated_at" => $date,
            ]);
        };
    }
}
