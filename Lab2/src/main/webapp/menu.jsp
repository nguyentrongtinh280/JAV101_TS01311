<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <img alt="Logo" src="img/logofpt.png">
    <div class="menu">
        
        <a href="${pageContext.request.contextPath}/bai1" >Bài 1: Truyền Dữ Liệu Servlet sang JSP</a> <br>
        
        <a href="${pageContext.request.contextPath}/bai2" >Bài 2: Sử Dụng jsp:include </a> <br>
        
        <a href="${pageContext.request.contextPath}/form/update">Bài 3 & 4: Form & JavaBean</a> <br>
        
        <a href="${pageContext.request.contextPath}/bai5">Bài 5: include _ param</a> <br>
    </div>

    <div class="content">
        <h2>Chào mừng bạn đến với Lab 2!</h2>
    </div>

    <div class="footer">
        © 2025 Lab 2</a>
    </div>
</body>
</html>