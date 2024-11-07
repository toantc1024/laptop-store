<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Error</title>
</head>
<body>
<h1>Registration Failed</h1>
<p><%= request.getAttribute("errorMessage") %></p>
<a href="registerForm.jsp">Try Again</a>
</body>
</html>
