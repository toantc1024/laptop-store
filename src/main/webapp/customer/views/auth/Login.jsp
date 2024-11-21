<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link type="text/css" rel="stylesheet" href="customer/assets/css/Login.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.8/css/all.min.css">
</head>
<body>
<div class="container">
    <div class="login_container">
        <div class="login_title">
            <span>Login</span>
        </div>
        <div class="input_wrapper">
            <input type="text" id="user" class="input_field" required>
            <label for="user" class="label">Username</label>
            <i class="fa-regular fa-user icon"></i>
        </div>
        <div class="input_wrapper">
            <input type="password" id="pass" class="input_field" required>
            <label for="pass" class="label">Password</label>
            <i class="fa-solid fa-lock icon"></i>
        </div>
        <div class="remember-forgot">
            <div class="remember-me">
                <input type="checkbox" id="remember">
                <label for="remember">Remember Me</label>
            </div>
            <div class="forgot">
                <a href="#">Forgot Password</a>
            </div>
        </div>
        <div class="signup">
            <span>Don't have an account <a href="#">Sign Up</a></span>
        </div>
    </div>
</div>
</body>
</html>
