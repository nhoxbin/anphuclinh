<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BankRequest extends FormRequest
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
            'alias' => 'required|string',
            'bank_id' => 'required|exists:banks,id',
            'host' => 'required|string',
            'number' => 'required|numeric',
            'branch' => 'required|string',
        ];
    }
}
