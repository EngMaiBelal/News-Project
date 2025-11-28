<?php

namespace App\Http\Requests\Backend\UserDashboard;

use App\Models\User;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class SettingsUpdateRequest extends FormRequest
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
            'user_name' =>['required', 'string', 'max:255', Rule::unique(User::class)->ignore($this->user()->id)],
            'email' => ['nullable', 'string', 'email', 'max:255', Rule::unique(User::class)->ignore($this->user()->id)],
            // 'phone' => ['required','regex:/(01)[0-9]{9}/', 'unique:'.User::class],
            'phone' => ['nullable','regex:/(01)[0-9]{9}/', Rule::unique(User::class)->ignore($this->user()->id)],
            'country' => ['nullable', 'string', 'max:50'],
            'city' => ['nullable', 'string', 'max:50'],
            'street' => ['nullable', 'string', 'max:50'],
            'bio' => ['nullable', 'string', 'max:2000'],
            'image' => ['nullable', 'image', 'mimes:jpg,jpeg,png,gif', 'max:2048'], // kilobyte
        ];
    }
}