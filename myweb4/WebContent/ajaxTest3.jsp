<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>innerHTML 내용</title>
<script type="text/javascript">
	function view(){
		//var p1=document.all.p1;
		var p1=document.getElementById('p1');
		//window.alert(p1.innerHTML);
		p1.innerHTML='<h2 style="color:red;">Screen Change</h2>';
	}
</script>
</head>
<body>
<p id="p1"><strong>Ajax</strong> Programming,&nbsp; Basic</p>
<input type="button" value="show" onclick="view()">
</body>
</html>