<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RelatedSite extends Model
{
    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'url',
        'status',
    ];
}
