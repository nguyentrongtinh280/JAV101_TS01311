<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${param.name}</p>
	<img src="${pageContext.request.contextPath}/img/${param.img}" alt="Hình sản phẩm" width="200px" heigh="200px">
</body>
</html>