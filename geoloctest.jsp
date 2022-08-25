 
<!DOCTYPE html>
<html>
<head>
<title>HTML5 Geolocation</title>
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script>
function init()
{
    window.navigator.geolocation.getCurrentPosition(current_position);
}
 
function current_position(position)
{
    var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
    
    var map_options = {
        center:latlng,zoom:14,
        mapTypeId:google.maps.MapTypeId.ROADMAP,
        mapTypeControl:false,
        navigationControlOptions:{style:google.maps.NavigationControlStyle.SMALL}
    }
    
    var map = new google.maps.Map(document.getElementById("google_map"), map_options);
    
    var marker = new google.maps.Marker({position:latlng,map:map,title:"You are here!"});
}
window.addEventListener("load", init);
</script>
</head>
<body>
<div id="google_map" style="width:500px;height:500px;"></div>
</body>
</html>