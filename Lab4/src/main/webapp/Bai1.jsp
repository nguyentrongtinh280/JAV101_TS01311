<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 1</title>
</head>
<body>
	<c:url value="/login" var="url"></c:url>
	<form action="${url}" method="post">
		<input name="username"> <br><br>
		<input name="password" type="password"> <br><br>
		<button>Login</button>
	</form>
	<br>
	${message}
</body>
</html>