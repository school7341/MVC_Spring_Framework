<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>file Upload1</h2>
<form name="fileUpload1" action="fileUpload1.do" method="post" enctype="multipart/form-data">
	writer : <input type="text" name="writer">
	file : <input type="file" name="upload">
	<input type="submit" name="saved">
</form>
<hr>
<h2>file Upload2</h2>
<form name="fileUpload2" action="fileUpload2.do" method="post" enctype="multipart/form-data">
	writer : <input type="text" name="writer">
	file : <input type="file" name="upload">
	<input type="submit" name="saved">
</form>
<hr>
<h2>file Upload3</h2>
<form name="fileUpload3" action="fileUpload3.do" method="post" enctype="multipart/form-data">
	writer : <input type="text" name="writer">
	file : <input type="file" name="upload">
	<input type="submit" name="saved">
</form>

</body>
</html>