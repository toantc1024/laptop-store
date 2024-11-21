<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
    <link type="text/css" rel="stylesheet" href="customer/assets/css/register.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.8/css/all.min.css">
</head>
<body>
<div class="container">
    <div class="register_container">
        <div class="register_title">
            <span>Register</span>
        </div>
        <form action="processRegister" method="POST">
            <div class="input_wrapper">
                <input type="text" id="username" name="username" class="input_field" required>
                <label for="username" class="label">Username</label>
                <i class="fa-regular fa-user icon"></i>
            </div>
            <div class="input_wrapper">
                <input type="email" id="email" name="email" class="input_field" required>
                <label for="email" class="label">Email</label>
                <i class="fa-solid fa-envelope icon"></i>
            </div>
            <div class="input_wrapper">
                <input type="password" id="password" name="password" class="input_field" required>
                <label for="password" class="label">Password</label>
                <i class="fa-solid fa-lock icon"></i>
            </div>
            <div class="input_wrapper">
                <input type="password" id="confirm_password" name="confirm_password" class="input_field" required>
                <label for="confirm_password" class="label">Confirm Password</label>
                <i class="fa-solid fa-lock icon"></i>
            </div>
            <div class="terms">
                <input type="checkbox" id="agree" name="agree" required>
                <label for="agree">I agree to the <a href="#">Terms & Conditions</a></label>
            </div>
            <button type="submit" class="register_button">Register</button>
        </form>
        <div class="login_redirect">
            <span>Already have an account? <a href="${pageContext.request.contextPath}/views/auth/Login.jsp">Login</a></span>
        </div>
    </div>
</div>
</body>
</html>
