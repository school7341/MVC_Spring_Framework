<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	Member=function(id,name){
		this.id=id;
		this.name=name;
	}
	/*생성자-Member의 Member 변수
	class Member{
	String id;
	String name;
public Member(String id,String name){
	this.id=id;
	this.name=name;
}
public Member toString(){

	}
}
	*/
	Member.prototype.toString=function(){
		return this.id+'['+this.name+']';
	}

	var mem=new Member('school7341','SeoS');
	var result=mem.toString();
	window.alert(result);
	window.alert(mem.id);
}
</script>
</head>
<body>

</body>
</html>