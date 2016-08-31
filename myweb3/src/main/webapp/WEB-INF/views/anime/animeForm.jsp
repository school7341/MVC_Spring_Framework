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
<h2>인기 검색어 : 
<c:forEach var="key" items="${keyword}">${key }&nbsp;&nbsp;&nbsp;</c:forEach>
</h2>
<form name="animeFind" action="animeFind.do">
	<select name="cate">
		<c:forEach var="cate" items="${category }" >
			<option value="${cate }">${cate }</option>
		</c:forEach>
	</select>
	<input type="text" name="keyword">
	<input type="submit" value="검색">
</form>
<hr>
<h3>animeForm.jsp</h3>
</body>
</html>