<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 4: Upload file</title>
</head>
<body>

	<c:url value="/upload" var="url"></c:url>
	<form action="${url}" method="post" enctype="multipart/form-data">
		<input name="photo" type="file"><br> <br>
		<button>Upload</button>
	</form> <br>
	<h2>${message}</h2>

</body>
</html>