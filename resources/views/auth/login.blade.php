@extends('layouts.auth')

@section('login')
<div class="container">
    <div class="sliders">
        <div class="slider">
            <img class="img1">
        </div>
        <div class="slider">
            <img class="img2">
        </div>
        <div class="slider">
            <img class="img3">
        </div>
        <div class="form-box">
            <div class="form-value">
                <!-- Outer Row -->
                <!-- Nested Row within Card Body -->
                <h2>Login</h2>
                <form action="{{ route('login') }}" method="post">
                    @csrf
                    <div class="inputbox">
                        <ion-icon name="mail-outline"></ion-icon>
                        <input type="email" name="email" required autofocus autocomplete="username" />
                        <label>Email</label>
                    </div>
                    
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" name="password" required autocomplete="current-password"  />
                        <label>Password</label>
                    </div>
                    
                    <div class="forget">
                        <label><input type="checkbox" />Remember Me</label>
                        <a href="#">Forgot Password</a>
                    </div>
                    <a href="index.html" class="btn btn-primary btn-user btn-block"><button>MASUK</button></a>
                </form>
            </div>
        </div>
    </div>

    @endsection