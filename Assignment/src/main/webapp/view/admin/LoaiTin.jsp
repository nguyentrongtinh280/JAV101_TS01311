<%-- File: LoaiTin.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý Loại Tin</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/StyleAdmin.css">
</head>
<body>
	<div class="crud-container">
	
	    <h2>
	        <i class="fa fa-tag"></i> Quản Lý Loại Tin
	    </h2>
	
	    <div class="crud-form">
	        <h3>Thông Tin Loại Tin</h3>
	        <form action="#" method="post">
	            
	            <div class="form-group">
	                <label for="id">Mã loại tin:</label>
	                <input type="text" id="id" name="id"  required maxlength="4" >
	            </div>
	
	            <div class="form-group">
	                <label for="name">Tên loại tin:</label>
	                <input type="text" id="name" name="name" required >
	            </div>
	            
	            <div class="form-actions">
	                <button type="submit" class="btn-save">Lưu</button>
	                <button type="reset" class="btn-new">Mới</button>
	            </div>
	        </form>
	    </div>
	    
	    <div class="crud-table">
	        <h3>Danh Sách Loại Tin</h3>
	        <table>
	            <thead>
	                <tr>
	                    <th style="width: 15%;">Mã loại tin</th>
	                    <th>Tên loại tin</th>
	                    <th style="width: 15%;">Hành động</th>
	                </tr>
	            </thead>
	            <tbody>
	                <tr>
	                    <td colspan="3" class="no-data">
	                        Chưa có loại tin nào được thêm vào.
	                    </td>
	                </tr>
	                
	                </tbody>
	        </table>
	    </div>
	
	</div>
</body>
</html>