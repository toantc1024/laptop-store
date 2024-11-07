<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<jsp:include page="../common/header.jsp" />
<jsp:include page="../common/navBar.jsp" />

<h1>Register</h1>
<form action="${pageContext.request.contextPath}/register" method="post">
    <label for="firstName">First Name:</label>
    <input type="text" name="firstName" id="firstName" required><br>
    <label for="lastName">Last Name:</label>
    <input type="text" name="lastName" id="lastName" required><br>
    <label for="email">Email:</label>
    <input type="email" name="email" id="email" required><br>
    <label for="password">Password:</label>
    <input type="password" name="password" id="password" required><br>
    <input type="submit" value="Register">
</form>

<jsp:include page="../common/footer.jsp" />
</body>
</html>
