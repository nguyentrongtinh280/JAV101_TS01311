<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab 1 - Index</title>
<style>
    /* Tạo bố cục hàng ngang cho các sản phẩm */
    .product-list {
        display: flex;
        justify-content: center; /* căn giữa ngang */
        gap: 20px; /* khoảng cách giữa các item */
        flex-wrap: wrap; /* tự xuống hàng khi hẹp */
        margin-top: 20px;
    }
	
	/*
    .product-list > div {
        text-align: center;
        border: 1px solid #ccc;
        border-radius: 10px;
        padding: 10px;
        width: 220px;
        box-shadow: 2px 2px 8px rgba(0,0,0,0.1);
    }*/
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="product-list">
        <div>
            <jsp:include page="item.jsp">
                <jsp:param name="name" value="Sản phẩm 1" />
                <jsp:param name="img" value="hinh4.jpg" />
            </jsp:include>
        </div>

        <div>
            <jsp:include page="item.jsp">
                <jsp:param name="name" value="Sản phẩm 2" />
                <jsp:param name="img" value="hinh5.jpg" />
            </jsp:include>
        </div>

        <div>
            <jsp:include page="item.jsp">
                <jsp:param name="name" value="Sản phẩm 3" />
                <jsp:param name="img" value="hinh6.jpg" />
            </jsp:include>
        </div>
    </div>
	
	
</body>
</html>