<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\DB;
use App\User;
use Carbon\Carbon;
use Mail;
use Illuminate\Support\Str;
use Hash;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;

class AuthController extends Controller
{
    public function login(Request $request){
    	$email = $request->email;
    	$password = $request->password;
        $remember = $request->has("remember") ? true : false;
        

    	if(Auth::attempt(["email"=>$email,"password"=>$password,"active"=>1],$remember)){
    		return response()->json([
            'data' => Auth::user(),
            'message' => 'Đăng nhập thành công'
        ], 200);
        }else{
    		return response()->json([
            'message' => 'Email hoặc mật khẩu của bạn không chính xác',
        ], 400);
    	}
    }
    public function logout(){
    	Auth::logout();
    	return redirect('/');
    }

    public function register(Request $request)
    {

        $data['email'] = $request->email;
        $data['password'] = bcrypt($request->password);
        $user = User::create($data);

        return response()->json([
            'user' => $user,
            'message' => 'Đăng ký thành công',
        ], 200);

    }
}