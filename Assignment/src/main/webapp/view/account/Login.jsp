<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập hệ thống - ABC News</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    
    <style>
        .login-page-main {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 100px - 80px); 
            background-color: #f4f4f4;
        }

        .login-container {
            width: 100%;
            max-width: 400px;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .login-container h2 {
            text-align: center;
            color: #d00000;
            margin-bottom: 25px;
            border-bottom: 2px solid #eee;
            padding-bottom: 10px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
            color: #444;
        }
        .form-group input[type="text"],
        .form-group input[type="password"],
        .form-group input[type="email"] { 
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 1em;
        }
        .login-button {
            width: 100%;
            padding: 10px;
            background-color: #d00000;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.1em;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .login-button:hover {
            background-color: #7c0000;
        }
        
        /* CSS MỚI: Định dạng link đăng ký */
        .register-link {
            text-align: center;
            margin-top: 20px;
            font-size: 0.95em;
        }
        .register-link a {
            color: #007bff; /* Màu xanh nổi bật */
            text-decoration: none;
            font-weight: bold;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    
    <header class="header">
        <img src="${pageContext.request.contextPath}/img/logo.png" alt="Logo ABC News" class="header-image">
        <div class="header-login">
            <a href="${pageContext.request.contextPath}">Về Trang Chủ</a>
        </div>
    </header>

    <jsp:include page="/menu.jsp" />

    <main class="login-page-main">
        <div class="login-container">
            <h2>Đăng nhập Hệ thống</h2>
            
            <form action="${pageContext.request.contextPath}/account/login" method="POST">
                
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                
                <div class="form-group">
                    <label for="password">Mật khẩu</label>
                    <input type="password" id="password" name="password" required>
                </div>
                               
                <c:if test="${not empty requestScope.error}">
                    <p style="color: red; text-align: center; font-weight: bold;">${requestScope.error}</p>
                </c:if>
                
                <button type="submit" class="login-button">Đăng nhập</button>
                
                <div class="register-link">
                    <p>Chưa có tài khoản? <a href="${pageContext.request.contextPath}/account/register">Đăng ký ngay</a></p>
                </div>
                
            </form>
        </div>
    </main>

    <footer class="footer">
        <p>Đăng nhập</p>
    </footer>
</body>
</html>