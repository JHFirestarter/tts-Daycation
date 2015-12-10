$(document).ready(function() {
	function initialize() {
	  var myLocation = new google.maps.LatLng(35.23945, -80.8456);

	  var destDaycation = new google.maps.LatLng(latitude,longitude); // add destination

	  var mapOptions = {
	  	center: destDaycation,
		zoom: 12,
		scrollwheel: false
	  };

	  var map = new google.maps.Map(document.getElementById('map'), mapOptions);

	  var directionsDisplay = new google.maps.DirectionsRenderer({
	    map: map
	  });

	  // Set destination, origin and travel mode.
	  var request = {
	    destination: destDaycation,
	    origin: myLocation,
	    travelMode: google.maps.TravelMode.DRIVING
	   //  drivingOptions: {
    // 		departureTime: new Date(Date.now() + 0),  // replace 0 with N for the time N milliseconds from now.
    // 		trafficModel: "optimistic"
  		// }
	  };

	  // Pass the directions request to the directions service.
	  var directionsService = new google.maps.DirectionsService();
	  directionsService.route(request, function(response, status) {
	    if (status == google.maps.DirectionsStatus.OK) {
	      // Display the route on the map.
	      directionsDisplay.setDirections(response);
	    }
	  });
	}

	google.maps.event.addDomListener(window, 'load', initialize); // initialize is the function name above--can be anything
});