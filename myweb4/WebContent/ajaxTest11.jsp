<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	var fruit={apple:'사과',banana:'바나나',melon:'멜론'};
	//window.alert(fruit.apple);
	//window.alert(fruit['melon']);
	var comBrand=['IBM','Dell','LG','Samsung'];
	window.alert(comBrand[0]);
	var student={
			name:'SeoS',
			age:'34',
			grade:[70,60,90]};
	window.alert('Student Name : '+student.name+'('+student.age+') --> 2nd grade : '+student.grade[1]);
}
</script>
</head>
<body>

</body>
</html>