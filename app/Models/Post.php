<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use Sluggable, HasFactory;
    
    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'title',
        'description',
        'comment_able',
        'views_num',
        'status',
        'slug',
        'user_id',
        'category_id',
    ];
    
    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }
    
    /**
     * category
     *
     * @return void
     */
    public function category(){
        return $this->belongsTo(Category::class, 'category_id');
    }    
    /**
     * user
     *
     * @return void
     */
    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }    
    /**
     * comments
     *
     * @return void
     */
    public function comments(){
        return $this->hasMany(Comment::class, 'post_id');
    }    
    /**
     * imagePosts
     *
     * @return void
     */
    public function imagePosts(){
        return $this->hasMany(ImagePost::class, 'post_id');
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
