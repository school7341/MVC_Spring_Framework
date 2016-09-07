<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
var XHR=null;
function getXHR(){
	if(window.ActiveXObject){
		return new ActiveXObject("Msxml2.XMLHTTP");//MS 생성자 호출시 반환생성자
	}else if(window.XMLHttpRequest){
		return new XMLHttpRequest();//Linux 계열 호출시 반환생성자
	}else{
		return null;//다 안되는 애들 그냥 널 반환
	}
}

function show(){//요청전문함수
	var name=document.f.name.value;
	var param='name='+name;
	XHR=getXHR();
	XHR.onreadystatechange=showResult;//서버가 자동적으로 호출해 주는  call back 함수
	XHR.open('GET','testA.jsp?'+param,true);//GET 방식, 전송 대상, 비동기화 방식일 경우 기본값
	XHR.send(null);//기본적으로 get 방식일경우, null값이 전달됨
}

function showResult(){//응답함수
	
	if(XHR.readyState==4){
		if(XHR.status==200){
			var text=XHR.responseText;
			window.alert(text);
		}
	}	
}

</script>
</head>
<body>
<form name="f" >
Name : <input type="text" name="name">
<input type="button" value="Ajax Test!" onclick="show()">
</form>
</body>
</html>