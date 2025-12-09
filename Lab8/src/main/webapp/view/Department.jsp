<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <fmt:setBundle basename="messages" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><fmt:message key="dept.title"/></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

    <header class="page-header"> 
        <img src="${pageContext.request.contextPath}/img/logofpt.png" alt="Logo" class="header-logo">
    </header>

    <jsp:include page="/menu.jsp"></jsp:include>

    <c:url var="path" value="/department" />

    <div class="content-department">

        <h2 class="title"><fmt:message key="dept.title"/></h2>

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

        <form method="post">
            <div class="form-group">
                <label><fmt:message key="dept.id"/></label>
                <input name="id" value="${item.id}">
            </div>

            <div class="form-group">
                <label><fmt:message key="dept.name"/></label>
                <input name="name" value="${item.name}">
            </div>

            <div class="form-group">
                <label><fmt:message key="dept.desc"/></label>
                <textarea name="description" rows="3">${item.description}</textarea>
            </div>

            <div class="form-actions">
                <button class="btn" formaction="${path}/create"><fmt:message key="dept.add"/></button>
                <button class="btn" formaction="${path}/update"><fmt:message key="dept.update"/></button>
                <button class="btn" formaction="${path}/delete"><fmt:message key="dept.delete"/></button>
                <button class="btn" formaction="${path}/reset"><fmt:message key="dept.reset"/></button>
            </div>
        </form>

        <br>
        
        <form method="get" action="${pageContext.request.contextPath}/department/search">
            <div class="form-group-inline">
                <label><fmt:message key="dept.search"/></label>
                <input type="text" name="searchId"
                       placeholder="<fmt:message key='dept.search.placeholder'/>">
                <button class="btn" type="submit"><fmt:message key="dept.search"/></button>
            </div>
        </form>

        <table class="table-department">
            <thead>
                <tr>
                    <th><fmt:message key="dept.table.no"/></th>
                    <th><fmt:message key="dept.id"/></th>
                    <th><fmt:message key="dept.name"/></th>
                    <th><fmt:message key="dept.desc"/></th>
                    <th><fmt:message key="dept.table.action"/></th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="d" items="${list}" varStatus="vs">
                    <tr>
                        <td>${vs.count}</td>
                        <td>${d.id}</td>
                        <td>${d.name}</td>
                        <td>${d.description}</td>
                        <td>
                            <a href="${path}/edit/${d.id}" class="edit-link">Edit</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>

    <div class="footer">
        <fmt:message key="index.footer"/>
    </div>

</body>
</html>
