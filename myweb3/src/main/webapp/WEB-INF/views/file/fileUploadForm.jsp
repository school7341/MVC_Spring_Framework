<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>file Upload</h2>
<form name="fileUpload1" action="fileUpload1.do" method="post" enctype="multipart/form-data">
	writer : <input type="text" name="writer">
	file : <input type="file" name="upload">
	<input type="submit" name="saved">
</form>
</body>
</html>