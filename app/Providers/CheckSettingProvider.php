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
        $settings = Setting::firstOr(function(){
            return Setting::create([
                'site_name' => 'News',
                'email' => 'mai@gmail.com',
                'phone' => '01019063522',
                'favicon' => 'logo.jpg',
                'logo' => 'logo.jpg',
                'facebook' => 'https://www.facebook.com',
                'twitter' => 'https://www.twitter.com',
                'youtube' => 'https://www.youtube.com',
                'city' => 'Egypt',
                'country' => 'Cairo',
                'street' => '123 News Street'
            ]);            
        });
        view()->share([
            'settings' => $settings
        ]);
    }
}
