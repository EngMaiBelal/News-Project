<?php

namespace App\Http\Requests\backend\UserDassboard;

use Illuminate\Foundation\Http\FormRequest;

class PostStoreRequest extends FormRequest
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
            'title' => ['required','string' ,'min:3', 'max:50'],
            'description' => ['required', 'min:10'],
            'category_id' => ['required', 'exists:categories,id'],
            'comment_able' => ['required', 'in:on,off'],
            'images' => ['required'],
            'images.' => ['image','mimes:jpg,jpeg,png,gif']
        ];
    }
    # Customize the error messages
    // public function attributes(): array{
    //     return [
    //         'title'=>'Post Title'
    //     ];
    // } 
}
