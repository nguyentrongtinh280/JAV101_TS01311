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

	<header class="page-header"> <img alt="Logo" src="img/logofpt.png" class="header-logo"> </header>
    
    <jsp:include page="/menu.jsp"></jsp:include>

    <div class="conten-bai3">
        <form action="/cookie-session" method="post">
        	<label>Tên đăng nhập</label> <br>
        	<input name="username" value="${username}"><br>
        	
        	<label>Mật khẩu</label><br>
        	<input name="password" value="${password}"> <br>
        	<input type="checkbox" name="remember-me"> Remember me?
        	<hr>
        	<p style="color:red">${message}</p>
        	<button>Login</button>
        </form>

    </div>

    <div class="footer">
        Lab 5 - Bài 3: Sử dụng cookie và session
    </div>

</body>
</html>