<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab 2 - Index</title>
</head>
<body>
	<img alt="Logo" src="img/logofpt.png">
    <jsp:include page="menu.jsp"></jsp:include>

    <div class="content" style="min-height:400px; text-align:left;">
        <%
            String includePage = (String) request.getAttribute("page");
            if (includePage != null) {
        %>
            <jsp:include page="<%= includePage %>" />
        <%
            } else {
        %>
            <h2>Chào mừng bạn đến với Lab 1!</h2>
        <%
            }
        %>
    </div>

    <div class="footer">
    </div>
</body>
</html>