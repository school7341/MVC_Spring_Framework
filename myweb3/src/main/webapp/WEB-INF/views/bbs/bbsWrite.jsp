<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>자유게시판 글쓰기</h2>
<form name="bbsWrite" action="bbsWrite.do" method="post">
	<table>
	<tr>
		<th>작성자 :</th> 
		<td><input type="text" name="writer"></td>
		<th>비밀번호 :</th>
		<td><input type="password" name="pwd"></td>
		<select name="WRITE_CODE_IDX">
		<option value=1>1 : BUYCYCLE_PLACE_CONTENT</option>
		<option value=2>2 : INLINE_PLACE_CONTENT</option>
		<option value=3>3 : SKATE_BOARD_CONTENT</option>
		<option value=4>4 : REQ_MAP_DATA</option>
		<option value=5>5 : FREE_NOTIC</option>
		<option value=6>6: FREE_BBS</option>
		<option value=7>7 : FREE_QnA</option>
		</select>
		<th>Map Data 요청하기 : </th>
		<td><input type="text" name="map_data_1">, <input type="text" name="map_data_1"></td>
	</tr>
		<tr>
		<th>제목 :</th>
		<td colspan="3"><input type="text" name="subject" size="40"></td></tr>
		<tr>
		<td colspan="4"><textarea rows="15" cols="55" name="content"></textarea></td>
		</tr>
		
	<tr>
	<td colspan="4" align="center">
		<input type="submit" value="글쓰기">
		<input type="reset" value="다시작성">
		
	</td>	
	</tr>
	</table>
</form>
</body>
</html>