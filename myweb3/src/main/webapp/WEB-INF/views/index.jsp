<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function openLogin(){
	window.open('loginForm.do','login','width=450,height=280');
}
</script>
</head>
<body>
<c:if test="${empty sessionScope.sid }">
	<p><a href="javascript:openLogin()">로그인</a></p>
</c:if>
<c:if test="${!empty sessionScope.sid }">
<p>${sessionScope.sname }님 로그인중...|로그아웃</p></c:if>

<h2>Index.jsp</h2>
<ul>
	<li><a href="hello.do">The first Spring Page</a></li>
	<li><a href="memoWrite.do">Write Memo</a></li>
	<li><a href="order.do">Grocery Order List</a></li>
	<li><a href="paramTest.do?str=spring&idx=3">Parameter Test</a></li>
	<li><a href="cookieView.do">Cookie View</a></li>
	<li><a href="cookieMake.do">Cookie Make</a></li>
	<li><a href="sessionView.do">session View</a></li>
	<li><a href="sessionMake.do">Session Make</a></li>
	<li><a href="joinForm.do">PMP Create Account</a></li>
	<li><a href="join.do">회원가입</a></li>
</ul>
</body>
</html>