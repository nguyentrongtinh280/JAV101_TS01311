<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setBundle basename="messages"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="emp.title"/></title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<header class="page-header"> 
    <img alt="Logo" src="${pageContext.request.contextPath}/img/logofpt.png" class="header-logo">
</header>

<jsp:include page="/menu.jsp"></jsp:include>

<c:url var="path" value="/employee" />

<div class="content-department">

    <h2 class="title"><fmt:message key="emp.title"/></h2>

   	<c:if test="${not empty error}">
            <div id="alertError" class="alert-error">${error}</div>

            <script>
                setTimeout(function () {
                    const alert = document.getElementById("alertError");
                    if (alert) {
                        alert.style.opacity = 0;
                        setTimeout(() => alert.remove(), 500);
                    }
                }, 3000);
            </script>
        </c:if>
   	
    <form method="post" enctype="multipart/form-data">

        <div class="form-group">
            <label><fmt:message key="emp.id"/></label>
            <input name="id" value="${item.id}">
        </div>

        <div class="form-group">
            <label><fmt:message key="emp.fullname"/></label>
            <input name="fullname" value="${item.fullname}">
        </div>

        <div class="form-group">
            <label><fmt:message key="emp.password"/></label>
            <input type="password" name="password" value="${item.password}">
        </div>

        <div class="form-group">
            <label><fmt:message key="emp.photo"/></label>
            <input type="file" name="photo">
            <c:if test="${not empty item.photo}">
                <img src="${pageContext.request.contextPath}/uploads/${item.photo}" width="100">
            </c:if>
        </div>

        <div class="form-group-inline">
            <label><fmt:message key="emp.gender"/></label>
            <input type="radio" name="gender" value="true" ${item.gender ? 'checked' : ''}>
            <fmt:message key="emp.male"/>

            <input type="radio" name="gender" value="false" ${!item.gender ? 'checked' : ''}>
            <fmt:message key="emp.female"/>
        </div>

        <div class="form-group">
            <label><fmt:message key="emp.birthday"/></label>
            <input type="date" name="birthday" value="${item.birthday}">
        </div>

        <div class="form-group">
            <label><fmt:message key="emp.salary"/></label>
            <input type="number" name="salary" value="${item.salary}">
        </div>

        <div class="form-group">
            <label><fmt:message key="emp.department"/></label>
            <select name="departmentId">
                <c:forEach var="d" items="${departments}">
                    <option value="${d.id}" ${d.id == item.departmentId ? 'selected' : ''}>${d.name}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-actions">
            <button class="btn" formaction="${path}/create"><fmt:message key="emp.add"/></button>
            <button class="btn" formaction="${path}/update"><fmt:message key="emp.update"/></button>
            <button class="btn" formaction="${path}/delete"><fmt:message key="emp.delete"/></button>
            <button class="btn" formaction="${path}/reset"><fmt:message key="emp.reset"/></button>
        </div>

    </form>

    <br>

    <!-- SEARCH -->
    <form method="get" action="${pageContext.request.contextPath}/employee/search">
        <div class="form-group-inline">
            <label><fmt:message key="emp.search"/></label>
            <input type="text" name="searchId"
                   placeholder="<fmt:message key='emp.search.placeholder'/>">
            <button class="btn"><fmt:message key="emp.search.button"/></button>
        </div>
    </form>


    <!-- TABLE -->
    <table class="table-department">
        <thead>
            <tr>
                <th>No.</th>
                <th><fmt:message key="emp.id"/></th>
                <th><fmt:message key="emp.fullname"/></th>
                <th><fmt:message key="emp.gender"/></th>
                <th><fmt:message key="emp.birthday"/></th>
                <th><fmt:message key="emp.salary"/></th>
                <th><fmt:message key="emp.department"/></th>
                <th><fmt:message key="emp.photo"/></th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="e" items="${list}" varStatus="vs">
                <tr>
                    <td>${vs.count}</td>
                    <td>${e.id}</td>
                    <td>${e.fullname}</td>
                    <td>${e.gender ? 'Male' : 'Female'}</td>
                    <td>${e.birthday}</td>
                    <td>${e.salary}</td>
                    <td>${e.departmentName}</td>
                    <td>
                        <c:if test="${not empty e.photo}">
                            <img src="${pageContext.request.contextPath}/uploads/${e.photo}" width="70">
                        </c:if>
                    </td>
                    <td>
                        <a href="${path}/edit/${e.id}" class="edit-link">Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</div>

<div class="footer">
    Lab 8 - HRM
</div>

</body>
</html>
