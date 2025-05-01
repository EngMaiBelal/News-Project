<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\View\View;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Validation\Rules;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\RedirectResponse;
use Illuminate\Auth\Events\Registered;

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
    public function store(Request $request): RedirectResponse
    {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'user_name' =>['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'lowercase', 'email', 'max:255', 'unique:'.User::class],
            'phone' => ['required','regex:/(01)[0-9]{9}/', 'unique:'.User::class],
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
            'country' => ['required', 'string', 'max:50'],
            'city' => ['required', 'string', 'max:50'],
            'street' => ['required', 'string', 'max:50'],
            'image' => ['required', 'image', 'mimes:jpg,jpeg,png,gif', 'max:2048'], // kilobyte
        ]);

        $imagePath = null;
        if ($request->hasFile('image')) {
            $imageName = Str::slug($request->user_name).time().".".$request->file('image')->getClientOriginalExtension();
            $imagePath = $request->file('image')->storeAs('uploads/images/users', $imageName, ['disk'=> 'uploads']);
        }

        $user = User::create([
            'name' => $request->name,
            'user_name' => $request->user_name,
            'email' => $request->email,
            'phone' => $request->phone,
            'country' => $request->country,
            'city' => $request->city,
            'street' => $request->street,
            'image' => $imagePath,
            'password' => Hash::make($request->password),
        ]);

        event(new Registered($user));

        Auth::login($user);
        flash()->success("Register Successfully");
        return redirect(route('home.index', absolute: false));
        // return redirect(route('dashboard', absolute: false));
    }
}
