<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setBundle basename="messages" />

<nav class="main-nav">
    <ul>
        <li><a href="${pageContext.request.contextPath}">
            <fmt:message key="menu.home"/>
        </a></li>

        <li><a href="${pageContext.request.contextPath}/department">
            <fmt:message key="menu.department"/>
        </a></li>

        <li><a href="${pageContext.request.contextPath}/employee">
            <fmt:message key="menu.employee"/>
        </a></li>

        <li><a href="${pageContext.request.contextPath}/logout">
            <fmt:message key="menu.logout"/>
        </a></li>

        <li>
           <a href="${pageContext.request.contextPath}/change-language?lang=vi">Việt Nam</a> 
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/change-language?lang=en">English</a>
        </li>
    </ul>
</nav>
