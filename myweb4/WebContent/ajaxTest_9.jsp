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
		sendRequest('Students.jsp',null,showResult,'GET');
	}
	function showResult(){
		if(XHR.readyState==4){
			if(XHR.status==200){
				var xmlDoc=XHR.responseXML;
				var studentsNode=xmlDoc.documentElement;
				var students=xmlDoc.getElementsByTagName('student');
				var msg='Total Student:'+students.length+'\n';
				//window.alert(msg);
				
				for(var i=0;i<students.length;i++){
					var student=students.item(i);
					var nameValue=student.getElementsByTagName('name').item(0).firstChild.nodeValue;
					var ageValue=student.getElementsByTagName('age').item(0).lastChild.nodeValue;
					var addrValue=student.getElementsByTagName('addr').item(0).firstChild.nodeValue;
					msg+=nameValue+' ('+ageValue+') / '+addrValue+'\n';
				}
				window.alert(msg);
			}
		}
	}
</script>
</head>
<body>
<h2>Check Students Info</h2>
<input type="button" value="Information" onclick="show()">
</body>
</html>