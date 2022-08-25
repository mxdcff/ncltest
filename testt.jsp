<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>simple map test</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=x5j9wids17&submodules=geocoder"></script>
</head>
<body>
<div id="map" style="width:80%;height:80%;"></div>

<script>
var mapOptions = {
    center: new naver.maps.LatLng(37.3595704, 127.105399),
    zoom: 10,
    zoomControl:true,
    mapTypeControl:true
};

var map = new naver.maps.Map('map', mapOptions);




</script>
</body>
</html>