<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách tin tức</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

	<header class="header">
		<img src="img/logo.png" alt="Logo ABC News" class="header-image">
	    <div class="header-login">
	            <a href="${pageContext.request.contextPath}/account/login">Đăng nhập</a>
	        </div>
	</header>
	
	<jsp:include page="/menu.jsp" />
	
	<main class="content-container">
	    <section class="main-content">
			<article class="news-list-item">
			    <img src="img/hinh3.png" class="news-image-list">
			    <div class="news-info">
			        <h3><a href="detail/Detail-ThoiSu.jsp?id=ts1">Tình hình an ninh khu vực</a></h3>
			        <p class="excerpt">Tóm tắt nội dung tin Thời sự 1 mô phỏng dữ liệu...</p>
			        <p class="meta">20/11/2025 | Phóng viên A</p>
			    </div>
			</article>
			
			<article class="news-list-item">
			    <img src="img/hinh2.png" class="news-image-list">
			    <div class="news-info">
			        <h3><a href="detail/Detail-ThoiSu.jsp?id=ts2">Chính sách mới về giáo dục</a></h3>
			        <p class="excerpt">Tóm tắt nội dung tin Thời sự 2 mô phỏng dữ liệu...</p>
			        <p class="meta">19/11/2025 | Phóng viên B</p>
			    </div>
			</article>
			
			<article class="news-list-item">
			    <img src="img/hinh1.png" class="news-image-list">
			    <div class="news-info">
			        <h3><a href="detail/Detail-ThoiSu.jsp?id=ts3">Diễn biến thị trường kinh tế</a></h3>
			        <p class="excerpt">Tóm tắt nội dung tin Thời sự 3 mô phỏng dữ liệu...</p>
			        <p class="meta">18/11/2025 | Phóng viên C</p>
			    </div>
			</article>
	
	    </section>
	
	    <jsp:include page="/sidebar.jsp" />
	
	</main>
	
	<footer class="footer">
	        <p>Trang tin tức thời sự</p>
    </footer>

</body>
</html>
