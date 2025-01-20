<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

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
        'username' => 'admin',
        'password' => bcrypt('admin')
       ]);
    }
}
