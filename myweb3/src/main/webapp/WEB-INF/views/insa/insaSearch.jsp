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
<form name="insaUpdate" action="insaUpdate.do" >
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
			<td><input type="text" name="sabun" value="${dto.SABUN}"></td>
			<td><input type="text" name="join_day" value="${dto.JOIN_DAY}"></td>
			<td><input type="text" name="retire_day" value="${dto.RETIRE_DAY}"></td>
			<td><input type="text" name="put_yn" value="${dto.PUT_YN}"></td>
			<td><input type="text" name="name" value="${dto.NAME}"></td>
			<td><input type="text" name="reg_no" value="${dto.REG_NO}"></td>
			<td><input type="text" name="eng_name" value="${dto.ENG_NAME}"></td>
			<td><input type="text" name="phone" value="${dto.PHONE}"></td>
			<td><input type="text" name="hp" value="${dto.HP}"></td>
			<td><input type="text" name="carrier" value="${dto.CARRIER}"></td>
			<td><input type="text" name="pos_gbn_code" value="${dto.POS_GBN_CODE}"></td>
			<td><input type="text" name="cmp_reg_no" value="${dto.CMP_REG_NO}"></td>
			<td><input type="text" name="cmp_reg_image" value="${dto.CMP_REG_IMAGE}"></td>
			<td><input type="text" name="sex" value="${dto.SEX}"></td>
			<td><input type="text" name="years" value="${dto.YEARS}"></td>
			<td><input type="text" name="email" value="${dto.EMAIL}"></td>
			<td><input type="text" name="zip" value="${dto.ZIP}"></td>
			<td><input type="text" name="addr1" value="${dto.ADDR1}"></td>
			<td><input type="text" name="addr2" value="${dto.ADDR2}"></td>
			<td><input type="text" name="mil_yn" value="${dto.MIL_YN}"></td>
			<td><input type="text" name="join_gbn_code" value="${dto.JOIN_GBN_CODE}"></td>
			
		</tr>
		<tr colspan="21" align="right">
			<td><input type="submit" value="update"></td>
		</tr>
	</c:forEach>
</tbody>
</table>
</form>
</body>
</html>