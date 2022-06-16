<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title' => 'required|string',
            'file' => [
                'nullable',
                'image',
                'mimes:jpeg,jpg,png',
                'mimetypes:image/jpeg,image/jpg,image/png',
                'max:5120',
            ],
            'content' => 'required|string',
        ];
    }

    public function messages()
    {
        return [
            '*.required' => __('This field is required!'),
            'file.*' => 'File không hợp lệ!',
        ];
    }
}
