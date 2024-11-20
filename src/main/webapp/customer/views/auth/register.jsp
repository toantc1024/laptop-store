<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Đăng nhp</title>
    <%@include file="../common/common-css.jsp" %>
</head>
<body>

<%@include file="../common/ui/header.jsp" %>

<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row-register">
            <!-- Order Details -->
            <div class="col-md-5 order-details">
                <div class="section-title text-center">
                    <h3 class="title">Register</h3>
                    <!-- Hiển thị thông báo lỗi nếu có -->
                    <%
                        String errorMessage = (String) request.getAttribute("errorMessage");
                        if (errorMessage != null) {
                    %>
                    <div class="error-message">
                        <%= errorMessage %>
                    </div>
                    <% } %>
                </div>
                <div class="billing-details">
                    <div class="form-group">
                        <input class="input" type="text" name="account-name" placeholder="Account Name">
                    </div>
                    <div class="form-group">
                        <input class="input" type="text" name="Password" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <input class="input" type="email" name="email" placeholder="Email">
                    </div>
                </div>
                <a href="#" class="primary-btn order-submit">Register</a>
            </div>
            <!-- /Order Details -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>

<%@include file="../common/ui/footer.jsp" %>

<%@include file="../common/common-js.jsp" %>
</body>
</html>
