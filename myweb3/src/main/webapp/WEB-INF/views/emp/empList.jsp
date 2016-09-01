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
<table border="1" width="450" cellspacing="0">
	<thead>
	<tr>
		<th>Emp_No</th>
		<th>Name</th>
		<th>Email</th>
		<th>Dept</th>
	</tr>
	</thead>
	<tbody>
	
	<c:if test="${empty list }">
		<tr>
			<td colspan="4" align="center">No List</td>
		</tr>
	</c:if>
	<c:forEach var="dto" items="${list}">
		<tr>
			<td>${dto.idx}</td>
			<td>${dto.name}</td>
			<td>${dto.email}</td>
			<td>${dto.dept}</td>
		</tr>
	</c:forEach>
</tbody>
</table>
</body>
</html>