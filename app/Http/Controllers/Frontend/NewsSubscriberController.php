<?php

namespace App\Http\Controllers\frontend;

use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use App\Mail\frontend\NewSubscriberMail;
use App\Http\Controllers\Controller;
use App\Models\NewsSubscriber;
use App\Http\Requests\Frontend\NewsSubscriberRequest;

class NewsSubscriberController extends Controller
{
    public function store(NewsSubscriberRequest $request){
        $validated_subscriber = $request->validated();
        $NewsSubscriber = NewsSubscriber::create([
            'email'=> $validated_subscriber['email']
        ]);
        // Handel Errors By
        // https://github.com/php-flasher/flasher-laravel
        if(!$NewsSubscriber){ # مشكله في الاتصال بالداتابيز
            flash()->error('Sorry Try Again Later!');
        }
        // Send Mail
        Mail::to($validated_subscriber['email'])->send(new NewSubscriberMail());
        
        flash()->success('Operation completed successfully!');
        return redirect()->back();
    }
}
