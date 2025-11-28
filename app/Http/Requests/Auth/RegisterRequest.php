<?php

namespace App\Http\Requests\Auth;

use App\Models\User;
use Illuminate\Validation\Rules\Password;
use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
           'name' => ['required', 'string', 'max:255'],
            'user_name' =>['required', 'string', 'max:255', 'unique:'.User::class],
            'email' => ['required', 'string', 'lowercase', 'email', 'max:255', 'unique:'.User::class],
            'phone' => ['required','regex:/(01)[0-9]{9}/', 'unique:'.User::class],
            'password' => ['required', 'confirmed', Password::defaults()],
            'country' => ['required', 'string', 'max:50'],
            'city' => ['required', 'string', 'max:50'],
            'street' => ['required', 'string', 'max:50'],
            'image' => ['required', 'image', 'mimes:jpg,jpeg,png,gif', 'max:2048'], // kilobyte
            'bio' => ['nullable', 'string', 'max:1000']
        ];
    }
}
