<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="login" action="login.do">
	<fieldset>
	<legend>로그인</legend>
		<table>
			<tr>
				<th>ID</th>
				<td><input type="text" name="userid"></td>
			</tr>
			<tr>
				<th>PWD</th>
				<td><input type="text" name="userpwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="로그인"></td>
			</tr>
		</table>
	</fieldset>
</form>
</body>
</html>