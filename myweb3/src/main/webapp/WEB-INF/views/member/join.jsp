<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function openIdCheck(){
	window.open('idCheckForm.do','idCheck','width=350,height=200');
}
</script>
</head>
<body>
<h2>단순 회원가입</h2>
<form name="join" action="join.do"method="post">
	<ul>
		<li>ID:<input type="text"name="id" readonly>
		<input type="button" value="중복검사" onclick="openIdCheck()"></li>
		<li>Name:<input type="text"name="name"></li>
		<li>PWD:<input type="text"name="pwd"></li>
		<li>EMAIL:<input type="text"name="email"></li>
		<li>TEL:<input type="text"name="tel"></li>
		
	</ul>
	<p><input type="submit" value="회원가입"></p>
</form>
</body>
</html>