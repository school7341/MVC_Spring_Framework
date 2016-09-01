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
<p>${sessionScope.sname }님 로그인중...|<a href="logout.do">로그아웃</a></p></c:if>

<h2>Index.jsp</h2>
<ul>
	<li><a href="emp.do">사원관리프로그램</a></li>
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
	<li><a href="viewTest1.do">명시적뷰지정 1st</a></li>
	<li><a href="viewTest2.do">명시적뷰지정 2nd</a></li>
	<li><a href="view/viewTestOk.do">묵시적뷰지정 1nd</a></li>
	<li><a href="viewTest3.do">The Spring page로 바로 이동</a></li>
	<li><a href="modelTest1.do">뷰 데이터 전달하기(Map)</a></li>
	<li><a href="modelTest2.do">뷰 데이터 전달하기(Model)</a></li>
	<li><a href="modelTest3.do">뷰 데이터 전달하기(ModelMap)</a></li>
	<li><a href="view/modelOk.do">뷰 데이터 전달하기(Map반환)</a></li>
	<li><a href="view/modelOk.do">뷰 데이터 전달하기(Model반환)</a></li>
	<li><a href="animeForm.do">animation 검색하기</a></li>
	<li><a href="fileUploadForm.do">파일업로드 하기</a></li>
	<li><a href="fileList.do">파일다운로드 하기</a></li>
</ul>
</body>
</html>