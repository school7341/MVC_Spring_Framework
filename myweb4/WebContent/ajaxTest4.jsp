<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	startTime();
}
function startTime(){
	var now=new Date();
	var h=now.getHours();
	var m=now.getMinutes();
	var s=now.getSeconds();
	var msg=h+":"+m+":"+s;
	var span=document.getElementById("clock");
	span.innerHTML=msg;
	window.setTimeout('startTime()',1000);
}
</script>
</head>
<body>
Now, The time is <span id="clock"></span>.
</body>
</html>