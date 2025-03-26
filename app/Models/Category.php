<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Category extends Model
{
    use HasFactory;
        
    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'status',
        'slug'
    ];
    
    /**
     * posts --> One category has many posts
     * 
     * @return 
     */
    public function posts(){
        return $this->hasMany(Post::class, 'category_id');
    } 
        
    /**
     * scopeActive
     *
     * @param  mixed $query
     * @return void
     */
    public function scopeActive($query){
        $query->where('status', 1);
    }
}
