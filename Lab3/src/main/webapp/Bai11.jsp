<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 1: Đổ dữ liệu vào Select Box</title>
</head>
<body>

<h2>Chọn quốc gia</h2>
	<select name="country">
	    <c:forEach var="ct" items="${countries}">
	        <option value="${ct.id}">${ct.name}</option>
	    </c:forEach>
	</select>
</body>
</html>