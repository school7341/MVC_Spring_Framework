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
		<th>SABUN</th>
		<th>JOIN_DAY</th>
		<th>RETIRE_DAY</th>
		<th>PUT_YN</th>
		<th>NAME</th>
		<th>REG_NO</th>
		<th>ENG_NAME</th>
		<th>PHONE</th>
		<th>HP</th>
		<th>CARRIER</th>
		<th>POS_GBN_CODE</th>
		<th>CMP_REG_NO</th>
		<th>CMP_REG_IMAGE</th>
		<th>SEX</th>
		<th>YEARS</th>
		<th>EMAIL</th>
		<th>ZIP</th>
		<th>ADDR1</th>
		<th>ADDR2</th>
		<th>MIL_YN</th>
		<th>JOIN_GBN_CODE</th>
	</tr>
	</thead>
	<tbody>
	
	<c:if test="${empty list }">
		<tr>
			<td colspan="21" align="center">No List</td>
		</tr>
	</c:if>
	<c:forEach var="dto" items="${list}">
		<tr>
			<td>${dto.SABUN}</td>
			<td>${dto.JOIN_DAY}</td>
			<td>${dto.RETIRE_DAY}</td>
			<td>${dto.PUT_YN}</td>
			<td>${dto.NAME}</td>
			<td>${dto.REG_NO}</td>
			<td>${dto.ENG_NAME}</td>
			<td>${dto.PHONE}</td>
			<td>${dto.HP}</td>
			<td>${dto.CARRIER}</td>
			<td>${dto.POS_GBN_CODE}</td>
			<td>${dto.CMP_REG_NO}</td>
			<td>${dto.CMP_REG_IMAGE}</td>
			<td>${dto.SEX}</td>
			<td>${dto.YEARS}</td>
			<td>${dto.EMAIL}</td>
			<td>${dto.ZIP}</td>
			<td>${dto.ADDR1}</td>
			<td>${dto.ADDR2}</td>
			<td>${dto.MIL_YN}</td>
			<td>${dto.JOIN_GBN_CODE}</td>
		</tr>
	</c:forEach>
</tbody>
</table>
</body>
</html>