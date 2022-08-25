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
    zoom: 10
};

var map = new naver.maps.Map('map', mapOptions);


$(document).ready(function () {
	$(document).on("click", "button[class='btn']", function () {
		var Addr_val = $(this).val();

		// 도로명 주소를 좌표 값으로 변환(API)
		naver.maps.Service.geocode({
	        query: Addr_val
	    }, function(status, response) {
	        if (status !== naver.maps.Service.Status.OK) {
	            return alert('Something wrong!');
	        }
	
	        var result = response.v2, // 검색 결과의 컨테이너
	            items = result.addresses; // 검색 결과의 배열
	            
	        // 리턴 받은 좌표 값을 변수에 저장
	        let x = parseFloat(items[0].x);
	        let y = parseFloat(items[0].y);
	        
	        // 지도 생성
	        var map = new naver.maps.Map('map', {
				center: new naver.maps.LatLng(y, x), // 지도를 열 좌표
				zoom: 18
			});
			
	        // 지도에 해당 좌표 마커(아이콘 설정)
	        var markerOptions = {
	        	    position: new naver.maps.LatLng(y, x), //마커찍을 좌표
	        	    map: map,
	        	    icon: {
	        	        url: 'resources/img/marker.png', //아이콘 경로
	        	        size: new naver.maps.Size(22, 36), //아이콘 크기
	        	        origin: new naver.maps.Point(0, 0),
	        	        anchor: new naver.maps.Point(11, 35)
	        	    }
	        	};
	        
	        // 마커 생성
	        var marker = new naver.maps.Marker(markerOptions);
	
	    });

	});
});



</script>
</body>
</html>