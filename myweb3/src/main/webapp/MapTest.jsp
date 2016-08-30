<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rotating 45° imagery</title>
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
#floating-panel {
  position: absolute;
  top: 10px;
  left: 25%;
  z-index: 5;
  background-color: #fff;
  padding: 5px;
  border: 1px solid #999;
  text-align: center;
  font-family: 'Roboto','sans-serif';
  line-height: 30px;
  padding-left: 10px;
}

    </style>
  </head>
  <body>
    <div id="floating-panel"><input type="button" value="Auto Rotate" onclick="autoRotate();"></div>
    <div id="map"></div>
    <script>

var map;

function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 37.501091, lng: 127.036893},
    zoom: 18,
    mapTypeId: google.maps.MapTypeId.SATELLITE,
    heading: 90,
    tilt: 45
  });
}

function rotate90() {
  var heading = map.getHeading() || 0;
  map.setHeading(heading + 90);
}

function autoRotate() {
  // Determine if we're showing aerial imagery.
  if (map.getTilt() !== 0) {
    window.setInterval(rotate90, 3000);
  }
}

    </script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD5dfHahY-kAhAduAmLol8gc46qnxUdmxg&signed_in=true&callback=initMap"></script>
  </body>
</html>