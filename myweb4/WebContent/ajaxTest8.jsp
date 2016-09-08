<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	/*window.alert("Attribute Test Start!!");
	var h1Node=document.getElementById('a');
	var fontNode=h1Node.firstChild;
	
	fontNode.setAttribute('color','red');
	window.alert("Font Attribute Value : "+fontNode.getAttribute('color'));
	fontNode.setAttribute('color','blue');
	window.alert("Wow!! The font is change.");
	fontNode.removeAttribute('color');*/
	var newSpan=document.createElement('span');
	var spanText=document.createTextNode('This is new span.');
	newSpan.appendChild(spanText);//부모 자식
	newSpan.setAttribute('id','b');
	var h1Node=document.getElementById('a');
	h1Node.appendChild(newSpan);
	var pNode=document.createElement('p');
	var pText=document.createTextNode('This is new p tag.');
	pNode.appendChild(pText);
	var bodyNode=h1Node.parentNode;
	bodyNode.insertBefore(pNode,h1Node);
	bodyNode.removeChild(h1Node);
	
}
</script>
</head>
<body>
<h1 id="a"><font>This is title.</font></h1>
<form>This is form tag.</form>
</body>
</html>