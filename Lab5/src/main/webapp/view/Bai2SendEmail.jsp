<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gửi Email</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header class="page-header">
        <img alt="Logo" src="img/logofpt.png" class="header-logo">
    </header>

    <div class="content-bai2">
	    <h2 class="form-title">Gửi Email</h2>
	    
	  	    
	    <form action="send-email" method="post" enctype="multipart/form-data" class="email-form">
	        
	        <div class="form-group">
	            <label for="from-email">Email người gửi:</label>
	            <input type="email" id="from-email" name="from" class="form-control"required>
	        </div>
	        
	        <div class="form-group">
	            <label for="to-email">Email người nhận:</label>
	            <input type="email" id="to-email" name="to" class="form-control" required>
	        </div>
	        
	        <div class="form-group">
	            <label for="subject">Tiêu đề:</label>
	            <input type="text" id="subject" name="subject" class="form-control" required>
	        </div>
	        
	        <div class="form-group">
	            <label for="body-content">Nội dung:</label>
	            <textarea id="body-content" name="body" rows="8" class="form-control"  required></textarea>
	        </div><br>
	        
	        <div class="form-group">
	            <label for="attachment">Đính kèm:</label>
	            <input type="file" id="attachment" name="attachment" class="form-control-file">
	        </div>
	
	        <button type="submit" class="btn-submit">Gửi Email</button>
	    </form>
	    <% 
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
            <p class="email-status <%= message.startsWith("Gửi mail thành công") ? "success" : "error" %>"><%= message %></p>
        <%
            }
        %>
	</div>
    
</body>
</html>