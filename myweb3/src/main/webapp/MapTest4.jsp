<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyD5dfHahY-kAhAduAmLol8gc46qnxUdmxg&sensor=false"></script>
<script type="text/javascript">
	var MarkersArray = [];
    // Standard google maps function
    function initialize() {
        var myLatlng = new google.maps.LatLng(37.501091, 127.036893);
        var myOptions = {
            zoom: 15,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
        TestMarker();
    }

    // Function for adding a marker to the page.
    function addMarker(location) {
        marker = new google.maps.Marker({
            position: location,
            map: map
        });
    }

    // Testing the addMarker function
    function TestMarker(){
    CentralPark = new google.maps.LatLng(37.501091, 127.036893);
    addMarker(CentralPark);
    }
</script>
</head>
<body onload="initialize()">
<div id="map_canvas" style="width:500px; height:300px;">
	
</div>
</body>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD5dfHahY-kAhAduAmLol8gc46qnxUdmxg&signed_in=true&callback=initMap"></script></html>