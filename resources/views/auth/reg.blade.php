@extends('layout')

@section('content')
<div class="formlogin">
      <h1 class="h1login">Registration</h1>
      <form action="{{ route('auth.create') }}" method="post">
        @csrf
        <div class="results">
          @if(Session::get('succcess'))
          <div class="alert alert-success">
            {{ Session::get('success') }}
            <span class="alertt">You have been successfully registered</span>
          </div>
          @endif
          @if(Session::get('fail'))
          <div class="alert alert-fail">
            {{ Session::get('fail') }}
            <span class="alertt">Something went wrong</span>
          </div>
          @endif
        </div>
        <div class="textfieldlogin">
          <label for="name">Fullname</label>
          <input type="text" placeholder="Enter Fullname" name="name" value="{{old('name')}}">
          <span class="text-danger">@error('name'){{ $message }} @enderror</span>
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
        <div>
        <input type="submit" value="Register" class="buttonlogin">
      </div>
      <br>
      </form>
  </div>
@endsection
