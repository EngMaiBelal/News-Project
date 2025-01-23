<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{    
    /**
     * fillable
     *
     * @var array
     */
    protected $fillable =[
        'site_name',
        'email',
        'phone',
        'favicon',
        'logo',
        'facebook',
        'twitter',
        'youtube',
        'city',
        'country',
        'street'
    ];
}
