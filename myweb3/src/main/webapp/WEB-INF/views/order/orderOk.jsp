<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Order Confirm</h2>
<h3>Order List</h3>
<ul>
	<c:forEach var="dto" items="${orderDTO.item }">
	<li>${dto.name }/${dto.num }/${dto.bigo }</li>
	</c:forEach>
</ul>
OrderMarket
${orderDTO.order.orderName}/${orderDTO.order.orderMarket}
</body>
</html>