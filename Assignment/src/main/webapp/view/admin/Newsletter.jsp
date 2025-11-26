<%-- File: Newsletter.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý Newsletter</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/StyleAdmin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> 
</head>
<body>
	
	<header class="header">
    	<img src="img/logo.png" alt="Logo ABC News" class="header-image">
        
        <div class="header-login">
            <a href="${pageContext.request.contextPath}/account/login">Đăng nhập</a>
        </div>
        
    </header>

    <jsp:include page="MenuAdmin.jsp" />
    
	<div class="crud-container">
	
	    <h2 >
	        <i class="fa fa-envelope-open"></i> Quản Lý Đăng Ký Newsletter
	    </h2>
	
	    <div class="crud-form">
	        <h3>Thông Tin Đăng Ký</h3>
	        <form action="#" method="post">
	            
	            <div class="form-group">
	                <label for="email">Email:</label>
	                <input type="email" id="email" name="email" required >
	            </div>
	
	            <div class="form-group">
	                <label for="enabled">Trạng thái:</label>
	                <select id="enabled" name="enabled" required>
	                    <option value="true">Còn hiệu lực</option>
	                    <option value="false">Đã hủy/Khóa</option>
	                </select>
	            </div>
	            
	            <div class="form-actions">
	                <button type="submit" class="btn-save">Lưu</button>
	                <button type="reset" class="btn-new">Mới</button>
	            </div>
	        </form>
	    </div>
	    
	    <div class="crud-table">
	        <h3>Danh Sách Email Đăng Ký</h3>
	        <table>
	            <thead>
	                <tr>
	                    <th style="width: 40%;">Email nhận tin</th>
	                    <th style="width: 20%;">Trạng thái</th>
	                    <th style="width: 15%;">Hành động</th>
	                </tr>
	            </thead>
	            <tbody>
	                <tr>
	                    <td colspan="3" class="no-data">
	                        Chưa có email nào đăng ký.
	                    </td>
	                </tr>
	                
	                </tbody>
	        </table>
	    </div>
	
	</div>
	
	<footer class="footer">
        <p>Trang quản trị newsletter</p>
    </footer>
</body>
</html>