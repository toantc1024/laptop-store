<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Successful</title>
</head>
<body>
<h1>Registration Successful!</h1>
<p>Welcome, <%= request.getAttribute("firstName") %> <%= request.getAttribute("lastName") %>!</p>
<p>Your email: <%= request.getAttribute("email") %></p>
<a href="index.jsp">Go to Home</a>
</body>
</html>
