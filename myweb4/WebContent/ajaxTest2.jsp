<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="XHRModule.js">
</script>
<script>
function show(){
	sendRequest('testA.jsp','name=Seokhyeon Seo',showResult,'GET');
}
function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var text=XHR.responseText;
			window.alert(text.trim());
		}
	}	
}
</script>
</head>
<body>
<input type="button" value="Ajax Test!" onclick="show()">
</body>
</html>