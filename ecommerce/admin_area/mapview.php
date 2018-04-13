<?php

if(!isset($_SESSION['admin_email'])){

echo "<script>window.open('login.php','_self')</script>";


}

else {
	

	 
$sql="select * from location";
$result=$con->query($sql);
if($result->num_rows>0)
{$i=0;
while($row=$result->fetch_assoc())	
{
	
            $longitude = $row['longi'];                              
            $latitude = $row['lati'];
			  $name = $row['police_id'];

            /* Each row is added as a new array */
            $locations[]=array('name'=>$name,'lati'=>$latitude, 'longi'=>$longitude );
   }
        /* Convert data to json */
   $markers = json_encode( $locations );
	 
	
	
    


}
?>


<html>

<head>

<title> Map View </title>


</head>

<body>

    
  
<script 
  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBYQbdWn5MpOphptJhBNrAb5pfAMjZNt_Q&callback=initMap">
</script>



  <div id="map" style="height: 400px; width: 100%;">
</div>
<script type="text/javascript">
  <?php
        echo "var markers=$markers;\n";

    ?>
 function initMap() {

        var latlng = new google.maps.LatLng(-33.92, 151.25);
        var myOptions = {
            zoom: 10,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            mapTypeControl: false
        };

        var map = new google.maps.Map(document.getElementById("map"),myOptions);
        var infowindow = new google.maps.InfoWindow(), marker, lati, longi;
        var json=JSON.parse( markers );

        for( var o in json ){

            lati = json[ o ].lati;
            longi=json[ o ].longi;
            name=json[ o ].name;

            marker = new google.maps.Marker({
                position: new google.maps.LatLng(lati,longi),
                name:name,
                map: map
            }); 
            google.maps.event.addListener( marker, 'click', function(e){
                infowindow.setContent( this.name );
                infowindow.open( map, this );
            }.bind( marker ) );
        }
    }
  </script>
  
  




</body>
</html>

<?php
	
}
	


?>