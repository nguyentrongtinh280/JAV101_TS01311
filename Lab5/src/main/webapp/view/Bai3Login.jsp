<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 3: Sử dụng cookie và session</title>
<link rel="stylesheet" href="css/style.css">  
</head>
<body>

    <header class="page-header">
        <img alt="Logo" src="img/logofpt.png" class="header-logo">
    </header>
    
    <jsp:include page="/menu.jsp"></jsp:include>

    <div class="content-bai3">
        
        <h2 class="form-title">Đăng Nhập Hệ Thống</h2> 
    
        <form action="${pageContext.request.contextPath}/login" method="post">
                
            <div class="form-group-login">
                <label for="username-input">Tên đăng nhập</label>
                <input id="username-input" name="username" type="text" >
            </div>
                
            <div class="form-group-login">
                <label for="password-input">Mật khẩu</label>
                <input id="password-input" name="password" type="password" >
            </div>
                
            <div class="checkbox-group">
                <input type="checkbox" name="remember-me" id="remember-me"
                       ${not empty username ? "checked" : ""}>
                <label for="remember-me">Remember me</label>
            </div>
                
            <p style="color:red; font-weight:bold;">${message}</p>

            <button type="submit" class="btn-login">Đăng Nhập</button>
        </form>

    </div>
    
    <div class="footer">
        Lab 5 - Bài 3: Sử dụng cookie và session
    </div>

</body>
</html>
