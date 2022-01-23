<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UserAuthController extends Controller
{
    function login(){
      return view('auth.login');
    }
    function register()
    {
      return view('auth.reg');
    }
    function create(Request $request){
      //validate request
      $request->validate([
        'name'=>'required',
        'username'=>'required|unique:users',
        'password'=>'required|min:5|max:12'
      ]);
      //insert validated data into database
      $user = new User;
      $user->name = $request->name;
      $user->username = $request->username;
      $user->password = Hash::make($request->password);
      $query = $user->save();
      if($query){
        return back()->with('succcess','You have been successfully registered');
      }else {
        return back()->with('fail','Something went wrong');
      }
    }
    function check(Request $request){
      //return $request->input();
      //validate request
      $request->validate([
        'username'=>'required',
        'password'=>'required|min:5|max:12'
      ]);
      $user = User::where('username','=',$request->username)->first();
      if($user){
        if(Hash::check($request->password,$user->password)){
          $request->session()->put('LoggedUser',$user->id);
          return redirect('home');
        }else {
          return back()->with('fail','Invaild password');
        }
      }else {
        return back()->with('fail','No account found for this email');
      }
    }

    function logout()
    {
      if(session()->has('LoggedUser')){
        session()->pull('LoggedUser');
        return redirect('home');
      }
    }
}
