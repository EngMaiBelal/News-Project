<?php

namespace Database\Seeders;

use App\Models\Admin;

use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;


class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Admin::create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'user_name' => 'admin',
            'password' => bcrypt('admin'),
            'role_id' => 1
       ]);
    }
}
