<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
	
	<header class="page-header"> 
        <img alt="Logo" src="${pageContext.request.contextPath}/img/logofpt.png" class="header-logo">
    </header>
    
    <jsp:include page="/menu.jsp"></jsp:include>
	
	<c:url var="path" value="/department" />
	
	<div class="content-department">
        <h2 class="title">Quản lý phòng ban</h2>
        
        <c:if test="${not empty error}">
		    <div id="alertError" class="alert-error">${error}</div>
		
		    <script>
		        setTimeout(function () {
		            const alert = document.getElementById("alertError");
		            if (alert) {
		                alert.style.opacity = 0;
		                setTimeout(() => alert.remove(), 500);
		            }
		        }, 3000);
		    </script>
		</c:if>
        
        
        <!-- FORM -->
        <form method="post">
            <div class="form-group">
                <label>Mã phòng ban:</label>
                <input name="id" value="${item.id}">
            </div>
            <div class="form-group">
                <label>Tên phòng ban:</label>
                <input name="name" value="${item.name}">
            </div>
            <div class="form-group">
                <label>Mô tả:</label>
                <textarea name="description" rows="3">${item.description}</textarea>
            </div>
            
            <div class="form-actions">
                <button class="btn" formaction="${path}/create">Thêm</button>
                <button class="btn" formaction="${path}/update">Sửa</button>
                <button class="btn" formaction="${path}/delete">Xóa</button>
                <button class="btn" formaction="${path}/reset">Mới</button>
            </div>
        </form><br>
        
                <form method="get" action="${pageContext.request.contextPath}/department/search">
		    <div class="form-group-inline">
		        <label>Tìm kiểm:</label>
		        <input type="text" name="searchId" placeholder="Nhập mã phòng ban">
		        <button class="btn" type="submit">Tìm</button>
		    </div>
		</form>
		
        
        
        <!-- TABLE -->
        <table class="table-department">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Mã phòng ban</th>
                    <th>Tên phòng ban</th>
                    <th>Mô tả</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="d" items="${list}" varStatus="vs">
                    <tr>
                        <td>${vs.count}</td>
                        <td>${d.id}</td>
                        <td>${d.name}</td>
                        <td>${d.description}</td>
                        <td><a href="${path}/edit/${d.id}" class="edit-link">Edit</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
	</div>
	
	<div class="footer">
        Lab 7 - Quản lý phòng ban
    </div>
</body>
</html>
