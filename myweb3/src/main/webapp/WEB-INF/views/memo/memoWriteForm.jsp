<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Write Memo</h2>
<form name="memoWrite" action="memoWrite.do" method="post">
No:<input type="text" name="idx"><br>
Title:<input type="text" name="title"><br>
<textarea rows="10" cols="45" name="content"></textarea><br>
<input type="submit" value="Write Memo">
</form>
</body>
</html>