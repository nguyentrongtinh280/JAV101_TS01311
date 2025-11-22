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
		<!-- Tin Pháp luật -->
		<article class="news-list-item">
		    <img src="img/hinh6.png" class="news-image-list">
		    <div class="news-info">
		        <h3><a href="detail.jsp?id=pl1">Xét xử vụ án kinh tế lớn</a></h3>
		        <p class="excerpt">Vụ án thu hút sự quan tâm của đông đảo dư luận...</p>
		        <p class="meta">20/11/2025 | PV Pháp Luật 1</p>
		    </div>
		</article>
		
		<article class="news-list-item">
		    <img src="img/hinh7.png" class="news-image-list">
		    <div class="news-info">
		        <h3><a href="detail.jsp?id=pl2">Khuyến cáo về an toàn giao thông</a></h3>
		        <p class="excerpt">Cảnh sát giao thông khuyến nghị người dân tuân thủ luật...</p>
		        <p class="meta">19/11/2025 | PV Pháp Luật 2</p>
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
