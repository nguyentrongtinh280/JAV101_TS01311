<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setBundle basename="messages"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="login.title"/></title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>

<body class="login-page">

    <div class="login-box">

        <!-- Tiêu đề -->
        <h2><fmt:message key="login.title"/></h2>

        <!-- Hiển thị lỗi nếu có -->
        <c:if test="${not empty error}">
            <div id="alertError" class="alert-error">${error}</div>
            <script>
                setTimeout(() => {
                    const a = document.getElementById("alertError");
                    if(a){ a.style.opacity = 0; setTimeout(()=>a.remove(), 500); }
                }, 3000);
            </script>
        </c:if>

        <!-- FORM LOGIN -->
        <form method="post" action="${pageContext.request.contextPath}/login">

            <label for="id"><fmt:message key="login.username"/></label>
            <input type="text" id="id" name="id" value="${id}" required>

            <label for="password"><fmt:message key="login.password"/></label>
            <input type="password" id="password" name="password" required>

            <button class="btn" type="submit">
                <fmt:message key="login.button"/>
            </button>

        </form>

    </div>

</body>
</html>
