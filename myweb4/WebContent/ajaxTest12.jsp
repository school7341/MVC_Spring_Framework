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
	sendRequest('jsonStudent.jsp',null,showResult,'GET');
}
function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data=XHR.responseText;
			data=eval('('+data+')');
			window.alert(data);
			var msg='total student count:'+data.students.length+'\n';
			var students=data.students;
			for(var i=0;i<students.length;i++){
				var student=students[i];
				msg+='name : '+student.name+'('+(student.age+1)+')/'+student.addr+'\n';
			}
			window.alert(msg);
		}
	}
}

</script>
</head>
<body>
<input type="button" value="check" onclick="show()">
</body>
</html>