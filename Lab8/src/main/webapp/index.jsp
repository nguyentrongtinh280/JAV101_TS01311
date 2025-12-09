<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setBundle basename="messages" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="index.title"/></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">  
</head>

<body>
    <header class="page-header"> 
        <img alt="Logo" src="${pageContext.request.contextPath}/img/logofpt.png" class="header-logo">
    </header>
    
    <jsp:include page="/menu.jsp"></jsp:include>

    <div class="main-content">
        <h1><fmt:message key="index.welcome"/></h1>
    </div>

    <div class="footer">
        <fmt:message key="index.footer"/>
    </div>

</body>
</html>
