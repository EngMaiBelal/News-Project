<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NewsSubscriber extends Model
{    
    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'email',
    ];
}
