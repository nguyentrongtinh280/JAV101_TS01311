<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    
    <header class="page-header"> 
        <img alt="Logo" src="${pageContext.request.contextPath}/img/logofpt.png" class="header-logo">
    </header>
    
    <jsp:include page="/menu.jsp"></jsp:include>
    
    <c:url var="path" value="/employee" />
    
    <div class="content-department">
    
    
        <h2 class="title">Quản lý nhân viên</h2>
        
        <c:if test="${not empty error}">
		    <div id="alertError" class="alert-error">
		        ${error}
		    </div>
		
		    <script>
		        setTimeout(function () {
		            var alert = document.getElementById("alertError");
		            if (alert) {
		                alert.style.opacity = 0;
		                setTimeout(() => alert.remove(), 500);
		            }
		        }, 3000);
		    </script>
		</c:if>

        
        <!-- FORM -->
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>Mã nhân viên:</label>
                <input name="id" value="${item.id}">
            </div>
            
            <div class="form-group">
                <label>Họ và tên:</label>
                <input name="fullname" value="${item.fullname}">
            </div>
            
            <div class="form-group">
                <label>Mật khẩu:</label>
                <input type="password" name="password" value="${item.password}">
            </div>
          
            <div class="form-group">
			    <label>Hình ảnh:</label>
			    <input type="file" name="photo">
			    <c:if test="${not empty item.photo}">
			        <img src="${item.photo}" alt="Employee Photo" width="100" height="100"/>
			    </c:if>
			</div>

            
            <div class="form-group-inline">
                <label>Giới tính:</label>
                <input type="radio" name="gender" value="true" ${item.gender ? 'checked' : ''}> Male
                <input type="radio" name="gender" value="false" ${!item.gender ? 'checked' : ''}> Female
            </div>
            
            <div class="form-group">
                <label>Ngày sinh:</label>
                <input type="date" name="birthday" value="${item.birthday}">
            </div>
            
            <div class="form-group">
                <label>Lương:</label>
                <input type="number"  name="salary" value="${item.salary}">
            </div>
            
            <div class="form-group">
                <label>Phòng ban:</label>
                <select name="departmentId">
                    <c:forEach var="d" items="${departments}">
                        <option value="${d.id}" ${d.id == item.departmentId ? 'selected' : ''}>${d.name}</option>
                    </c:forEach>
                </select>
            </div>
            
            <div class="form-actions">
                <button class="btn" formaction="${path}/create">Thêm</button>
                <button class="btn" formaction="${path}/update">Sửa</button>
                <button class="btn" formaction="${path}/delete">Xóa</button>
                <button class="btn" formaction="${path}/reset">Mới</button>
            </div>       
        </form><br>
     
        <form method="get" action="${pageContext.request.contextPath}/employee/search">
		    <div class="form-group-inline">
		        <label>Tìm kiểm:</label>
		        <input type="text" name="searchId" placeholder="Nhập mã nhân viên">
		        <button class="btn" type="submit">Tìm</button>
		    </div>
		</form>
        
            
        <!-- TABLE -->
        <table class="table-department">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Mã nhân viên</th>
                    <th>Họ và tên</th>
                    <th>Giới tính</th>
                    <th>Ngày sinh</th>
                    <th>Lương</th>
                    <th>Phòn ban</th>
                    <th>Hình ảnh</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="e" items="${list}" varStatus="vs">
                    <tr>
                        <td>${vs.count}</td>
                        <td>${e.id}</td>
                        <td>${e.fullname}</td>
                        <td>${e.gender ? 'Male' : 'Female'}</td>
                        <td>${e.birthday}</td>
                        <td>${e.salary}</td>
                        <td>${e.departmentName}</td>

                        <td>
                            <c:if test="${e.photo != null && e.photo != ''}">
                                <img src="${pageContext.request.contextPath}/uploads/${e.photo}" alt="Photo" width="50">
                                
                            </c:if>
                        </td>
                        <td><a href="${path}/edit/${e.id}" class="edit-link">Edit</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    
    <div class="footer">
        Lab 7 - Quản lý nhân viên
    </div>
</body>
</html>
