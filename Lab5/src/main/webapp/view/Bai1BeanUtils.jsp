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

    <div class="content-bai1">
        <h2 class="form-title">Đăng Ký Thông Tin Cá Nhân</h2> <c:url value="/bean-utils" var="url"/>
        <form action="${url}" method="post">
            
            <div class="form-group">
                <label for="fullname">Họ và tên:</label>
                <input id="fullname" name="fullname" type="text">
            </div>
            
            <div class="form-group">
                <label for="birthday">Ngày sinh:</label>
                <input id="birthday" name="birthday" type="text">
            </div>
            
            <div class="form-group">
                <label>Giới tính:</label>
                <div class="gender-group">
                    <input type="radio" id="male" name="gender" value="true"> 
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="false"> 
                    <label for="female">Female</label>
                </div>
            </div>
            
            <div class="form-group">
                <label for="country">Quốc tịch:</label>
                <select id="country" name="country">
                    <option value="VietNam">Việt Nam</option>
                    <option value="United States">United States</option>
                    <option value="China">China</option>
                    <option value="Japan">Japan</option>
                    <option value="Other">Khác</option>
                </select>
            </div>
            
            <div class="form-group">
                <label>Sở thích:</label>
                <div class="hobbies-group">
                    <input type="checkbox" id="read" name="hobbies" value="Đọc sách">
                    <label for="read">Đọc sách</label>
                    
                    <input type="checkbox" id="travel" name="hobbies" value="Du lịch">
                    <label for="travel">Du lịch</label>
                    
                    <input type="checkbox" id="music" name="hobbies" value="Âm nhạc">
                    <label for="music">Âm nhạc</label>
                    
                    <input type="checkbox" id="walk" name="hobbies" value="Đi bộ">
                    <label for="walk">Đi bộ</label>
                    
                    <input type="checkbox" id="other_hobby" name="hobbies" value="Khác">
                    <label for="other_hobby">Khác</label>
                </div>
            </div>
            
            <div class="form-group">
                <label for="salary">Lương:</label>
                <input id="salary" name="salary" type="text">
            </div>
            
            <button type="submit">Gửi Dữ Liệu</button>
        </form>
    </div>

    <div class="footer">
        Lab 5
    </div>

</body>
</html>