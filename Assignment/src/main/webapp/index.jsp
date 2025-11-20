<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Chủ - ABC News</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header class="header">
        <h1>ABC News - Trang Tin Tức Hàng Ngày</h1>
    </header>

    <jsp:include page="menu.jsp" />

    <main class="content-container">
        <section class="main-content">
            <h2>Tin Nổi Bật Trên Trang Nhất</h2>

            <article class="news-item">
                <img src="img/hinh1.png" alt="Ảnh Bản tin 1" class="news-image">
                <div class="news-info">
                    <h3><a href="detail.jsp?id=1">Tiêu đề bản tin nổi bật 1 (Văn hóa)</a></h3>
                    <p class="excerpt">Trích lấy phần đầu của nội dung bản tin. Đây là đoạn tóm tắt ngắn gọn để độc giả có thể nắm bắt nội dung chính. [cite: 83]</p>
                    <p class="meta">Ngày đăng: 20/11/2025 | Tác giả: Nguyễn Văn A [cite: 87]</p>
                </div>
            </article>

            <article class="news-item">
                <img src="img/hinh2.png" alt="Ảnh Bản tin 2" class="news-image">
                <div class="news-info">
                    <h3><a href="detail.jsp?id=2">Tiêu đề bản tin nổi bật 2 (Pháp luật)</a></h3>
                    <p class="excerpt">Trích lấy phần đầu của nội dung bản tin. Đoạn trích này chỉ nên có số ký tự phù hợp để hiển thị đẹp trên trang chủ. [cite: 83]</p>
                    <p class="meta">Ngày đăng: 19/11/2025 | Tác giả: Trần Thị B [cite: 91]</p>
                </div>
            </article>
            
        </section>

        <jsp:include page="sidebar.jsp"/>
    </main>

    <footer class="footer">
        <p>&copy; 2025 ABC News</p>
    </footer>
</body>
</html>