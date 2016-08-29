<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Create Account</h2>
<form name="joinForm" action="joinForm.do" method="post">
Employee No:<input type="text" name="employee_no"><br>
Given names:<input type="text" name="given_names"><br>
Surname:<input type="text" name="surname"><br>
Date of Birth:<input type="text" name="date_of_birth"><br>
Sex:<input type="text" name="sex"><br>
<input type="submit" value="Create Account">
</form>
</body>
</html>