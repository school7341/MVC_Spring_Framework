<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1"cellspacing="0" width="750px">
	<tr><td>Timestamp</td><td id="ts"></td></tr>
	<tr><td>Position</td><td id="position"></td></tr>
</table>
<br>
<div>
	<span class="button" onclick="clickGetPosition();">Get Position</span>
</div>
<script type="text/javascript">
function clickGetPosition(){
	if(navigatior.geolocation){
		function MySuccess(MyPosition){
			var d= new Date(MyPosition.timestamp);
			
			//Date.toUTCString() 메소드는 시간을 국제 표준시 문자열로 변환
			document.getElementById("ts").innerHTML=d.toUTCString();
			document.getElementById("position").innerHTML="("+Myposition.coords.latitude+", "+Myposition.coords.longitude+")";
		}
		navigator.geolocation.getCurrentPosition(MySuccess);
	}else{
		alert("No support");
	}
}
</script>
</body>
</html>