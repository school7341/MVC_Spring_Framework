<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	window.alert("Start DOM Test!!");
	var rootNode=document.documentElement;//html할당
	window.alert("rootNode Name:"+rootNode.nodeName);//html이름
	var bodyNode=rootNode.lastChild;
	window.alert("bodyNode Name:"+bodyNode.nodeName);//body이름
	/*var childList=bodyNode.childNodes;//body의 자식들
	for(i=0;i<childList.length;i++){
		window.alert(i+"Child Node Name:"+childList.item(i).nodeName);//child이름-개행도 텍스트로 포함
	}*/
	var spanNode=bodyNode.firstChild.nextSibling;
	window.alert("spanNode Name:"+spanNode.nodeName);//body이름
	var spanNodeText=spanNode.lastChild;
	window.alert("spanNode Text a Name:"+spanNodeText.nodeValue);//body이름
	var spanNode2=bodyNode.lastChild.previousSibling;//div
	var spanNode3=spanNode2.lastChild;//span
	var spanNode4=spanNode3.lastChild;
	var spanNode5=document.getElementById('c');
	var spanNodeText5=spanNode5.lastChild;
	
	window.alert("spanNode Text c Name(순차):"+spanNode4.nodeValue);//c값
	window.alert("spanNode Text c Name(by ID):"+spanNodeText5.nodeValue);//c값
}
</script>
</head>
<body>
<span id="a">a</span>
<p>test<span id="b">b</span></p>
<div><p>p</p><span id="c">c</span></div>
</body>
</html>