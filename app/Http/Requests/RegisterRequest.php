<?php

namespace App\Http\Requests\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
                'email' => 'required|email',
                'password'  => 'required',
            ];
    }
    public function messages()
    {
        return [
            'email.required'     => 'Vui lòng nhập địa chỉ email',
            'email.email'        => 'Vui lòng nhập đúng định dạng email',
            'password.required'  => 'Vui lòng nhập mật khẩu'   
        ];
    }
}