<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\View\View;
use App\Utils\ImageManager;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\RedirectResponse;
use Illuminate\Auth\Events\Registered;
use App\Http\Requests\Auth\RegisterRequest;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     */
    public function create(): View
    {
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(RegisterRequest $request, ImageManager $imageManager): RedirectResponse
    {
       $imageData = $imageManager->uploadImage($request, "users");

        $user = User::create([
            'name' => $request->name,
            'user_name' => $request->user_name,
            'email' => $request->email,
            'phone' => $request->phone,
            'country' => $request->country,
            'city' => $request->city,
            'street' => $request->street,
            'image' => $imageData['path'],
            'bio' => $request->bio,
            'password' => Hash::make($request->password),
        ]);

        event(new Registered($user));

        Auth::login($user);

        flash()->success("Register Successfully");
        
        return redirect(route('home.index', absolute: false));
        // return redirect(route('home.user.dashboard.profile.post.index', absolute: false));
    }
}
