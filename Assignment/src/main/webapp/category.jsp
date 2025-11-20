<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách tin tức</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<header class="header">
    <h1>ABC News - Trang Tin Tức Hàng Ngày</h1>
</header>

<jsp:include page="menu.jsp" />

<main class="content-container">
    <section class="main-content">

        <c:set var="categoryId" value="${param.id}" />

        <c:choose>
        	<c:when test="${categoryId == 'MN'}">
                <c:set var="categoryName" value="Mới nhất" />
                <c:set var="includePage" value="news/news-moiNhat.jsp" />
            </c:when>
        	
            <c:when test="${categoryId == 'TS'}">
                <c:set var="categoryName" value="Thời sự" />
                <c:set var="includePage" value="news/news-thoiSu.jsp" />
            </c:when>

            <c:when test="${categoryId == 'VH'}">
                <c:set var="categoryName" value="Văn hóa" />
                <c:set var="includePage" value="news/news-vanHoa.jsp" />
            </c:when>

            <c:when test="${categoryId == 'PL'}">
                <c:set var="categoryName" value="Pháp luật" />
                <c:set var="includePage" value="news/news-phapLuat.jsp" />
            </c:when>

            <c:when test="${categoryId == 'TT'}">
                <c:set var="categoryName" value="Thể thao" />
                <c:set var="includePage" value="news/news-theThao.jsp" />
            </c:when>

            <c:when test="${categoryId == 'GD'}">
                <c:set var="categoryName" value="Giáo dục" />
                <c:set var="includePage" value="news/news-giaoDuc.jsp" />
            </c:when>

            <c:otherwise>
                <c:set var="categoryName" value="Danh mục khác (${categoryId})" />
                <c:set var="includePage" value="news/news-other.jsp" />
            </c:otherwise>
        </c:choose>

        <h2>Tin Tức Thuộc Mục: ${categoryName}</h2>

        <jsp:include page="${includePage}" />

    </section>

    <jsp:include page="sidebar.jsp" />

</main>

<footer class="footer">
    <p>Footer: &copy; 2025 ABC News</p>
</footer>

</body>
</html>
