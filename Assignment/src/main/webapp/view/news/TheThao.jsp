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
		<!-- Tin Thể thao -->
		<article class="news-list-item">
		    <img src="img/hinh8.png" class="news-image-list">
		    <div class="news-info">
		        <h3><a href="detail.jsp?id=tt1">Đội tuyển Việt Nam thắng đậm</a></h3>
		        <p class="excerpt">Một trận đấu đầy cảm xúc với nhiều bàn thắng...</p>
		        <p class="meta">20/11/2025 | PV Thể Thao 1</p>
		    </div>
		</article>
		
		<article class="news-list-item">
		    <img src="img/hinh9.png" class="news-image-list">
		    <div class="news-info">
		        <h3><a href="detail.jsp?id=tt2">Giải Marathon quốc tế 2025</a></h3>
		        <p class="excerpt">Hơn 10.000 vận động viên tham gia giải chạy năm nay...</p>
		        <p class="meta">19/11/2025 | PV Thể Thao 2</p>
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
