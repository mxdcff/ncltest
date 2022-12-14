<!-- 네이버 지도
https://navermaps.github.io/maps.js.ncp/docs/tutorial-2-Getting-Started.html

지도 마커
https://navermaps.github.io/maps.js/docs/tutorial-1-marker-simple.example.html

마커 이미지
https://navermaps.github.io/maps.js/docs/tutorial-3-marker-image-icon.example.html -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>간단한 지도 표시하기</title>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=bhyyxniyi3"></script>
</head>
<body>
	<div id="map" style="width: 100%; height: 400px;"></div>

	<script>
//html5 geolocation객체 사용
function onGeolocationSuccess(position) { 
	// 좌표 출력 
	console.log("lat: " + position.coords.latitude + ", lon: " + position.coords.longitude); 
	//네이버 지도 API
	var mapOptions = {
	    center: new naver.maps.LatLng(position.coords.latitude, position.coords.longitude),
	    zoom: 15
	};

	var map = new naver.maps.Map('map', mapOptions);
	
	var marker = new naver.maps.Marker({
	    position: new naver.maps.LatLng(position.coords.latitude, position.coords.longitude),
	    map: map,
	    icon: {
	        url: '../img/marker.png',
	        size: new naver.maps.Size(100, 135),
	        origin: new naver.maps.Point(0, 0),
	        anchor: new naver.maps.Point(25, 26)
	    }
	});
} 
function onGeolocationFail(error) { 
	// 에러 출력 
	console.log("Error Code: " + error.code + ", Error Description: " + error.message); 
} 
if (navigator.geolocation) { 
	// 정확한 위치 사용 
	// 캐시 사용 안함 ![](https://velog.velcdn.com/images/fe26min/post/d0415f43-91a1-4389-b386-d37f686e9523/image.png)

	// timeout 3초 (3000ms) 
	var positionOptions = { 
		enableHighAccuracy : true, 
		maximumAge : 0, 
		timeout : 3000 
	}; 
	navigator.geolocation.getCurrentPosition(onGeolocationSuccess, onGeolocationFail, positionOptions); 

}



</script>
</body>
</html>