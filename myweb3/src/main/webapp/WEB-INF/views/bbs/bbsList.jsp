<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>자유게시판 목록</h2>
<table border="1" width="550" cellspacing="0">
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td colspan="3" align="center">
			${pageStr}
			</td>
			<td>
			<a href="bbsWrite.do">글쓰기</a>
			</td>
		</tr>
	</tfoot>
	<tbody>
		
		<c:if test="${empty list}">
			<tr>
				<td colspan="4" align="center">등록된 글이 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
		<tr>
			<td>${dto.idx}</td>
			<td>${dto.writer}</td>
			<td>${dto.subject}</td>
			<td>${dto.readnum}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>