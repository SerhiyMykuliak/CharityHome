document.addEventListener("turbo:load", function() {
  
  if (document.getElementById("map")) {
    function initMap() {
      const myLatLng = { lat: 48.931470, lng: 24.695054 };

      const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 15,
        center: myLatLng,
      });
      
      new google.maps.Marker({
        position: myLatLng,
        map,
        title: "My university",
      });
    }

    initMap();
  }
});