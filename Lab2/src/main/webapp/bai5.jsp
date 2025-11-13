<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 5: Include _ Param</title>
<style>
    .product-list {
        display: flex;
        justify-content: center; 
        gap: 20px; 
        flex-wrap: wrap; 
        margin-top: 20px;
    }
</style>
</head>
<body>
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