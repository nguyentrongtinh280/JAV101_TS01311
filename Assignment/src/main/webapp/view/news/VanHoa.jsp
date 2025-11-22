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
		<!-- Tin Văn hóa -->
		<article class="news-list-item">
		    <img src="img/hinh4.png" class="news-image-list">
		    <div class="news-info">
		        <h3><a href="detail.jsp?id=vh1">Sự kiện văn hóa đặc sắc 2025</a></h3>
		        <p class="excerpt">Một số hoạt động văn hóa nổi bật diễn ra trong năm...</p>
		        <p class="meta">20/11/2025 | PV Văn Hóa 1</p>
		    </div>
		</article>
		
		<article class="news-list-item">
		    <img src="img/hinh5.png" class="news-image-list">
		    <div class="news-info">
		        <h3><a href="detail.jsp?id=vh2">Lễ hội truyền thống khắp 3 miền</a></h3>
		        <p class="excerpt">Truyền thống văn hóa Việt Nam luôn được lưu giữ...</p>
		        <p class="meta">19/11/2025 | PV Văn Hóa 2</p>
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
