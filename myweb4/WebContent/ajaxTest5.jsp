<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="XHRModule.js"></script>
<script type="text/javascript">
function show(){
	sendRequest('getNotice.jsp',null, showResult,'GET');
}
function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data=XHR.responseText;
			var div=document.getElementById('newNotice');
			div.innerHTML=data;
		}
	}
}
</script>
</head>
<body>
<div id="newNotice">
</div>
<input type="button" value="Check Notice" onclick="show()">
</body>
</html>