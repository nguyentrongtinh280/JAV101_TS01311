<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 1: Sử dụng BeanUtil để đọc tham số</title>
<link rel="stylesheet" href="css/style.css">  
</head>
<body>
	<header class="page-header"> <img alt="Logo" src="img/logofpt.png" class="header-logo"> </header>
    
    <jsp:include page="/menu.jsp"></jsp:include>

    <div class="main-content">
    	<div class="content-bai1">
    	
	        <c:url value="/bean-utils" var="url"/>
			<form action="${url}" method="post">
				<label>Họ và tên:</label>
				<input name="fullname"> <br>
				
				<label>Ngày sinh:</label>
				<input name="birthday" placeholder="MM/dd/yyyy"> <br>
				
				<label>Giới tính:</label>
				<input type="radio" name="gender" value="true"> Male
				<input type="radio" name="gender" value="false"> Female <br>
				
				<div>
		            <label for="country">Quốc tịch:</label>
		            <select id="country" name="country">
		                <option value="VietNam">Việt Nam</option>
		                <option value="United States">United States</option>
		                <option value="China">China</option>
		                <option value="Japan">Japan</option>
		                <option value="Other">Khác</option>
		            </select>
		        </div> <br>
		        
		        <div>
		            <label>Sở thích:</label>
		            <input type="checkbox" id="read" name="hobbies" value="Đọc sách">
		            <label for="read" style="width: auto;">Đọc sách</label>
		            
		            <input type="checkbox" id="travel" name="hobbies" value="Du lịch">
		            <label for="travel" style="width: auto;">Du lịch</label>
		            
		            <input type="checkbox" id="music" name="hobbies" value="Âm nhạc">
		            <label for="music" style="width: auto;">Âm nhạc</label>
		            
		            <input type="checkbox" id="walk" name="hobbies" value="Đi bộ">
		            <label for="walk" style="width: auto;">Đi bộ</label>
		            
		            <input type="checkbox" id="other_hobby" name="hobbies" value="Khác">
		            <label for="other_hobby" style="width: auto;">Khác</label>
		        </div><br>
				<label>Lương:</label>
				<input name="salary"> <br>
				<hr>
				<button>Submit</button>
			</form>
		</div>
    </div>

    <div class="footer">
        Lab 5
    </div>

</body>
</html>