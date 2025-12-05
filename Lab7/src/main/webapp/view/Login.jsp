<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

<style>
.login-box {
    width: 400px;
    margin: 80px auto;
    padding: 25px;
    border-radius: 5px;
    background: #fff;
    box-shadow: 0 0 10px #ccc;
}
</style>
</head>
<body>

<div class="login-box">
    <h2 style="text-align:center;">Đăng nhập</h2>

    <c:if test="${not empty error}">
        <div id="alertError" class="alert-error">${error}</div>
        <script>
            setTimeout(() => {
                const a = document.getElementById("alertError");
                if(a){ a.style.opacity = 0; setTimeout(()=>a.remove(), 500); }
            }, 3000);
        </script>
    </c:if>

    <form method="post" action="${pageContext.request.contextPath}/login">
        <label>Mã nhân viên:</label>
        <input type="text" name="id" value="${id}" required>

        <label>Mật khẩu:</label>
        <input type="password" name="password" required>

        <button class="btn" type="submit">Đăng nhập</button>
    </form>
</div>

</body>
</html>
