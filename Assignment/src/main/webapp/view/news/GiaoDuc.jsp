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
		<!-- Tin Giáo dục -->
		<article class="news-list-item">
		    <img src="img/hinh10.png" class="news-image-list">
		    <div class="news-info">
		        <h3><a href="detail.jsp?id=gd1">Cải tiến chương trình học phổ thông</a></h3>
		        <p class="excerpt">Bộ GD&ĐT công bố những thay đổi mới trong chương trình...</p>
		        <p class="meta">20/11/2025 | PV Giáo Dục 1</p>
		    </div>
		</article>
		
		<article class="news-list-item">
		    <img src="img/hinh11.png" class="news-image-list">
		    <div class="news-info">
		        <h3><a href="detail.jsp?id=gd2">Sinh viên đạt giải quốc tế</a></h3>
		        <p class="excerpt">Những thành tích nổi bật của sinh viên Việt Nam...</p>
		        <p class="meta">19/11/2025 | PV Giáo Dục 2</p>
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
