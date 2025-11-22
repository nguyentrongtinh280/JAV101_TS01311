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
		<!-- Tin Mới Nhất -->
	<article class="news-list-item">
	    <img src="img/hinh12.png" class="news-image-list">
	    <div class="news-info">
	        <h3><a href="detail.jsp?id=mn1">Khủng hoảng năng lượng: Giá điện tăng mạnh đầu tuần</a></h3>
	        <p class="excerpt">Giá điện sinh hoạt và công nghiệp tăng đột biến trong tuần qua, tác động đến nhiều doanh nghiệp...</p>
	        <p class="meta">21/11/2025 | Phóng viên Minh Khang</p>
	    </div>
	</article>
	
	<article class="news-list-item">
	    <img src="img/hinh13.png" class="news-image-list">
	    <div class="news-info">
	        <h3><a href="detail.jsp?id=mn2">TP.HCM triển khai hệ thống giao thông thông minh</a></h3>
	        <p class="excerpt">Dự án giao thông thông minh bước đầu thử nghiệm tại các tuyến đường trung tâm, giúp giảm ùn tắc...</p>
	        <p class="meta">21/11/2025 | Phóng viên Thu Hà</p>
	    </div>
	</article>
	
	<article class="news-list-item">
	    <img src="img/hinh14.png" class="news-image-list">
	    <div class="news-info">
	        <h3><a href="detail.jsp?id=mn3">Các trường đại học công bố chỉ tiêu tuyển sinh mới</a></h3>
	        <p class="excerpt">Hàng loạt trường đại học thay đổi chỉ tiêu tuyển sinh cho năm tới, tập trung nhiều vào các ngành công nghệ...</p>
	        <p class="meta">20/11/2025 | Phóng viên Quốc Bảo</p>
	    </div>
	</article>
	
	<article class="news-list-item">
	    <img src="img/hinh15.png" class="news-image-list">
	    <div class="news-info">
	        <h3><a href="detail.jsp?id=mn4">Cập nhật thời tiết: Không khí lạnh tràn về miền Bắc</a></h3>
	        <p class="excerpt">Không khí lạnh tăng cường khiến nhiệt độ giảm sâu, nhiều nơi xuất hiện mưa nhỏ và sương mù...</p>
	        <p class="meta">20/11/2025 | Phóng viên Thanh Tú</p>
	    </div>
	</article>

    </section>

    <jsp:include page="/sidebar.jsp" />

</main>

<footer class="footer">
    <p>Footer: &copy; 2025 ABC News</p>
</footer>

</body>
</html>
