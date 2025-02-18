<?php

namespace App\Providers;

use App\Models\RelatedSite;
use Illuminate\Support\ServiceProvider;

class SharedDataServiceProvider extends ServiceProvider
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
        $related_sites = RelatedSite::select('name','url')->get();
        view()->share([
            'related_sites' => $related_sites
        ]);
        // View::share('model1Data', Cache::remember('model1_data', now()->addMinutes(10), function() {
        //     return Model1::all();
        // }));
    }
}
