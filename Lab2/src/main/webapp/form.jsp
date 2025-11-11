<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/form/update" method="post">
		<div>Fullname:</div>
		<input name="fullname" value="${user.fullname}" ${editable ? 'readonly' : ''}> <br>
		
		<div>Gender:</div>
		<input type="radio" name="gender" value="true" ${user.gender ? 'checked' : ''}> Male <br>
		<input type="radio" name="gender" value="false" ${user.gender ? 'checked' : '' }> Female <br>
		
		<div>Country:</div>
		<select name="country">
			<option value="VN" ${user.country ? 'selected' : ''}>Viet Nam</option>
			<option value="US" ${user.country ? 'selected' : '' }>Unated states</option>
			<option value="CN" ${user.country ? 'selected' : '' }>China</option>
		</select> <br> <br>
		
		<button ${editable ? 'disable' : '' }>Create</button>
		<button>Update</button>
		
	
	</form>
</body>
</html>