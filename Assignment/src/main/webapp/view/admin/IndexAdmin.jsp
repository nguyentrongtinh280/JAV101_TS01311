<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Giao Diện Quản Trị - ABC News</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> 
</head>
<body>
    
    <header class="header">
    	<img src="img/logo.png" alt="Logo ABC News" class="header-image">
        
        <div class="header-login">
            <a href="${pageContext.request.contextPath}/account/login">Đăng nhập</a>
        </div>
        
    </header>

    <jsp:include page="MenuAdmin.jsp" />
    
    <footer class="footer">
        <p>Trang quản trị</p>
    </footer>
</body>
</html>