@extends('layout')

@section('content')
    <div class="formlogin">
      <h1 class="h1login">Login</h1>
      <form method="post" action="{{route('auth.check')}}">
        @csrf
        <div class="results">
          @if(Session::get('fail'))
          <div class="alert alert-fail">
            {{ Session::get('fail') }}
          </div>
          @endif
        </div>
        <div class="textfieldlogin">
          <label for="username">Username</label>
          <input type="text" placeholder="Enter Username" name="username" value="{{old('username')}}">
          <span class="text-danger">@error('username'){{ $message }} @enderror</span>
        </div>
        <div class="textfieldlogin">
          <label for="password">Password</label>
          <input type="password" placeholder="Enter Password" name="password">
          <span class="text-danger">@error('password'){{ $message }} @enderror</span>
        </div>
        <input type="submit" value="Login" class="buttonlogin">
        <div class="signup">
          Don't have an account?
          <div class="buttonlogin">
            <a href="{{ route('auth.register') }}">Signup</a>
          </div>
        </div>
      </form>
    </div>
@endsection
