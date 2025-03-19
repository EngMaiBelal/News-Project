<?php

namespace App\Http\Requests\frontend;

use Illuminate\Foundation\Http\FormRequest;

class ContactStoreRequest extends FormRequest
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
            'email' => ['required', 'email'],
            'phone'=> ['required', 'numeric'],
            'name'=> ['required', 'string', 'min:2', 'max:50'],
            'title'=> ['required', 'string', 'max:60'],
            'body'=> ['required', 'string', 'min:10', 'max:500']
        ];
    }
}
