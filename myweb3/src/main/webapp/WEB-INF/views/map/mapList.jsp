<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="yong.map.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyD5dfHahY-kAhAduAmLol8gc46qnxUdmxg"></script>
<script type="text/javascript">
	var MarkersArray = [];
	var map=null;
    // Standard google maps function
    function initialize() {
        var myLatlng = new google.maps.LatLng(37.524019200, 127.101734600);
        var myOptions = {
            zoom: 17,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
        mark();
    }

    // Function for adding a marker to the page.
    function addMarker(location) {
        marker = new google.maps.Marker({
            position: location,
            map: map
        });
    }

    // Testing the addMarker function
    function TestMarker(latitude,longitude){
   	//var latitude=document.getElementById('test1').name;
    //var longitude=document.getElementById('test2').name; 
    /* var latitude=document.getElementById("test1").value;
    var longitude=document.getElementById("test2").value; */
    CentralPark = new google.maps.LatLng(parseFloat(latitude) ,parseFloat(longitude));
  //  console.log(CentralPark);
    //CentralPark = new google.maps.LatLng(37.525654020, 127.371508700);
    addMarker(CentralPark);
    }
    
 var mark=function(){
	   
   		var len=document.getElementById('len').value;
   		var data1=document.getElementsByClassName('data1');
   		var data2=document.getElementsByClassName('data2');
	   for(var i=0;i<len;i++){
		 //  console.log(data1[i].value);
		   TestMarker(data1[i].value,data2[i].value);
	   }
	  // console.log('${list[0].map_data_1}');

   }
    
  	</script>
</head>
<body onload="initialize()">
<input type="hidden" value='${len}' id="len">
<c:forEach var="dto" items="${list}">
	<input type="hidden" value="${dto.map_data_1}" class="data1">
	<input type="hidden" value="${dto.map_data_2}" class="data2">
</c:forEach>
<div id="map_canvas" style="width:1000px; height:800px;">
		
</div>
<div id="test">

</div>
</body>  
</html>