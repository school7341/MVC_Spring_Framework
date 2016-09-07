<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/XHRModule.js"></script>
<script>

function openIdCheck(){
	//window.open('idCheckForm.do','idCheck','width=350,height=200');
	var userid=document.join.id.value;
	var param='userid='+userid;
	sendRequest('idCheckForm.do',param,showResult,'GET');
}
function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data=XHR.responseText;
			var msgTag=document.getElementById('msg');
			msgTag.innerHTML=data;
		}
	}
}
</script>
</head>
<body>
<h2>단순 회원가입</h2>
<form name="join" action="join.do"method="post">
	<ul>
		<li>ID:<input type="text"name="id" >
		<input type="button" value="중복검사" onclick="openIdCheck()"><span id="msg"></span></li>
		<li>Name:<input type="text"name="name"></li>
		<li>PWD:<input type="text"name="pwd"></li>
		<li>EMAIL:<input type="text"name="email"></li>
		<li>TEL:<input type="text"name="tel"></li>
		
	</ul>
	<p><input type="submit" value="회원가입"></p>
</form>
</body>
</html>