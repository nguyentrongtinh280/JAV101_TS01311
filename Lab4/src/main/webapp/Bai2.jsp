<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 2</title>
</head>
<body>
	<c:url value="/calculate" var="cal"></c:url>
	
	<form method="post">
		<label>Số a:</label>
		<input name="a"> <br><br>
		<label>Số b:</label>
		<input name="b"> <br><br>
		<button formaction="${cal}/add">+</button>
		<button formaction="${cal}/subtraction">-</button>
		<button formaction="${cal}/multiplication">*</button>
		<button formaction="${cal}/division">/</button>
	</form>
	<label>Kết quả:</label>
	<input type="text" readonly value="${message}">
</body>
</html>