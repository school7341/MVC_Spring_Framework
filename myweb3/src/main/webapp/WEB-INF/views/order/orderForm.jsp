<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Grocery Order List</h2>
<form name="order" action="order.do" method="post">
List 1-Name : <input type="text" name="item[0].name">/
Count : <input type="text" name="item[0].num">/
etc : <input type="text" name="item[0].bigo"><br>

List 2-Name : <input type="text" name="item[1].name">/
Count : <input type="text" name="item[1].num">/
etc : <input type="text" name="item[1].bigo"><br>

List 3-Name : <input type="text" name="item[2].name">/
Count : <input type="text" name="item[2].num">/
etc : <input type="text" name="item[2].bigo"><br>

Order : <input type="text" name="order.orderName"><br>
Market : <input type="text" name="order.orderMarket"><br>
<input type="submit" value="order"> 
</form>
</body>
</html>