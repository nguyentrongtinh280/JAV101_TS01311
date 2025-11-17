<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
	<table border="1">
		<thead>
			<tr>
				<th>Tên sản phẩm</th>
				<th>Hình ảnh</th>
				<th>Giá</th>
				<th>Giảm giá</th>
			</tr>
		</thead>
			

		<tbody>
			<c:forEach var="product" items="${items}">
				<tr>
					<td>${product.name}</td>
					
					<td>
						<img alt="${product.name}" src="${pageContext.request.contextPath}/img/${product.image}" width="100">
					</td>
					
					<td>
						<fmt:formatNumber value="${product.price}" type="currency" currencySymbol="$"></fmt:formatNumber>
					</td>
					
					<td>
						<fmt:formatNumber value="${product.discount * 100}" type="number"></fmt:formatNumber>%
					
					</td>
				</tr>
			
			</c:forEach>
		</tbody>
	
	</table>
	

	
	
	

</body>
</html>