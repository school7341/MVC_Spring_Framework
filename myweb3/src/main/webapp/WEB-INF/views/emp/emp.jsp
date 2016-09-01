<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사원관리프로그램</h2>
<form name="empAdd" action="empAdd.do">
		<fieldset>
			<legend>Insert Employee</legend>
			<table>
				<tr>
					<th>Employee Name</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>Employee Email</th>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<th>Employee Dept</th>
					<td><input type="text" name="dept"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Insert Employee"> <input type="reset" value="Reset"></td>
				</tr>
			</table>
		</fieldset>
</form>
<form name="empDel" action="empDel.do">
IDX : <input type="text" name="idx"><input type="submit" value="전달">
</form>
</body>
</html>