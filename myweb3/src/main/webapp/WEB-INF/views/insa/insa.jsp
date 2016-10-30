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
<form name="insaAdd" action="insaAdd.do">
		<fieldset>
			<legend>Insert Human Resource</legend>
			<table>
				<tr>
	
				<th>SABUN</th>
					<td><input type="text" name="sabun"></td>
				</tr>
				<tr>
					<th>JOIN_DAY</th>
					<td><input type="text" name="join_day"></td>
				</tr>
				<tr>
					<th>RETIRE_DAY</th>
					<td><input type="text" name="retire_day"></td>
				</tr>
				<tr>
					<th>PUT_YN</th>
					<td><input type="text" name="put_yn"></td>
				</tr>
				<tr>
					<th>NAME</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>REG_NO</th>
					<td><input type="text" name="reg_no"></td>
				</tr>
				<tr>
					<th>ENG_NAME</th>
					<td><input type="text" name="eng_name"></td>
				</tr>
				<tr>
					<th>PHONE</th>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<th>HP</th>
					<td><input type="text" name="hp"></td>
				</tr>
				<tr>
					<th>CARRIER</th>
					<td><input type="text" name="carrier"></td>
				</tr>
				<tr>
					<th>POS_GBN_CODE</th>
					<td><input type="text" name="pos_gbn_code"></td>
				</tr>
				<tr>
					<th>CMP_REG_NO</th>
					<td><input type="text" name="cmp_reg_no"></td>
				</tr>
				<tr>
					<th>CMP_REG_IMAGE</th>
					<td><input type="text" name="cmp_reg_image"></td>
				</tr>
				<tr>
					<th>SEX</th>
					<td><input type="text" name="sex"></td>
				</tr>
				<tr>
					<th>YEARS</th>
					<td><input type="text" name="years"></td>
				</tr>
				<tr>
					<th>EMAIL</th>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<th>ZIP</th>
					<td><input type="text" name="zip"></td>
				</tr>
				<tr>
					<th>ADDR1</th>
					<td><input type="text" name="addr1"></td>
				</tr>
				<tr>
					<th>ADDR2</th>
					<td><input type="text" name="addr2"></td>
				</tr>
				<tr>
					<th>MIL_YN</th>
					<td><input type="text" name="mil_yn"></td>
				</tr>			
				<tr>
					<th>JOIN_GBN_CODE</th>
					<td><input type="text" name="join_gbn_code"></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Insert Human Resource"> <input type="reset" value="Reset"></td>
				</tr>
			</table>
		</fieldset>
</form>
<hr>

			
<form name="insaDel" action="insaDel.do">
<fieldset>
<legend>Delete Human Resource</legend>
<table>
<tr>
<th>사번</th>
<td><input type="text" name="sabun"></td>
<td><input type="submit" value="전달"></td>
</tr>
</table>

</fieldset>
</form>
<hr>
<a href="insaList.do">모두보기</a>
</form>
<hr>
<form name="insaSearch" action="insaSearch.do">
<fieldset>
<legend>Update Human Resource</legend>
<table>
<tr>
<th>사번</th>
<td><input type="text" name="sabun"></td>
<td><input type="submit" value="전달"></td>
</tr>
</table>

</fieldset>
</form>

</body>
</html>