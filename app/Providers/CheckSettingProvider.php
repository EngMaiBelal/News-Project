<?php

namespace App\Providers;

use App\Models\Setting;
use Illuminate\Support\ServiceProvider;

class CheckSettingProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        Setting::firstOr(function(){
            return Setting::create([
                'site_name' => 'News',
                'email' => 'mai.belal2127@gmail.com',
                'phone' => '01019063522',
                'favicon' => 'default',
                'logo' => 'default',
                'facebook' => 'default',
                'twitter' => 'default',
                'youtube' => 'default',
                'city' => 'default',
                'country' => 'default',
                'street' => 'default'
            ]);
        });
    }
}
