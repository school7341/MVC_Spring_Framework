<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Score Program</title>
<script type="text/javascript" src="XHRModule.js"></script>
<script type="text/javascript">
function show(){
	sendRequest('getSungjuk.jsp',null,showResult,'GET');
}
function showResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data=XHR.responseText;
			var strArr=data.split(',');
			var intArr=new Array(strArr.length);
			var max=0;
			var sum=0;
			for(var i=0;i<strArr.length;i++){
				intArr[i]=parseInt(strArr[i]);
				sum+=intArr[i];
				if(max<intArr[i]){
					max=intArr[i];
				}
			}
			var avg=sum/intArr.length;
			var maxTd=document.getElementById("max");
			maxTd.innerHTML=max;
			var sumTd=document.getElementById("sum");
			sumTd.innerHTML=sum;
			var avgTd=document.getElementById("avg");
			avgTd.innerHTML=avg;
		}
	}
}
</script>
</head>
<body>
<h2>Check Score</h2>
<table width="200" border="1" cellspacing="0">
<tr>
	<th>The highest score :</th>
	<td id="max" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
	<th>The total score : </th>
	<td id="sum" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
	<th>The average score : </th>
	<td id="avg" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
	<td colspan="2"align="center">
	<input type="button" value="check score" onclick="show()">
	</td>
</tr>

</table>
</body>
</html>