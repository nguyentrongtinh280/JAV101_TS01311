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
    
    <div id="page-container">
        
        <header class="header">
            <img src="${pageContext.request.contextPath}/img/logo.png" alt="Logo ABC News" class="header-image">
            <div class="header-login">
                <a href="${pageContext.request.contextPath}/account/login">Đăng nhập</a>
            </div>
        </header>

        <jsp:include page="MenuAdmin.jsp" /> 
        
        <main id="content-wrap" style="padding: 20px; text-align: center;">
            <h2>Vùng Nội Dung Chính</h2>
            <p>Nội dung của trang Admin/Phóng viên.</p>
            </main>
        
    </div>
    <footer class="footer">
        <p>&copy; 2025 ABC News</p>
    </footer>
</body>
</html>