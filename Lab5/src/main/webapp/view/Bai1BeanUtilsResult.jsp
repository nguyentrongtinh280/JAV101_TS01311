<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin cá nhân</title>
<link rel="stylesheet" href="css/style.css">  
</head>
<body>

<header class="page-header">
    <img alt="Logo" src="img/logofpt.png" class="header-logo">
</header>

<jsp:include page="/menu.jsp"></jsp:include>

<div class="result">
    <h2>Thông tin cá nhân</h2>

    <p><span>Họ và tên:</span> ${staff.fullname}</p>

    <p><span>Ngày sinh:</span> 
        <fmt:formatDate value="${staff.birthday}" pattern="dd/MM/yyyy"/>
    </p>

    <p><span>Giới tính:</span> 
        <c:choose>
            <c:when test="${staff.gender}">Male</c:when>
            <c:otherwise>Female</c:otherwise>
        </c:choose>
    </p>

    <p><span>Sở thích:</span>
        <c:forEach items="${staff.hobbies}" var="h">
            ${h}&nbsp;
        </c:forEach>
    </p>

    <p><span>Quốc gia:</span> ${staff.country}</p>
    <p><span>Lương:</span> ${staff.salary}</p>
</div>

<div class="footer">
    Lab 5
</div>

</body>
</html>
