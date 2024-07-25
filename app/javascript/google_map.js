document.addEventListener("turbo:load", function() {
  function initMap() {
    // Координати місця
    const myLatLng = { lat: 48.931470, lng: 24.695054 };

    // Створення карти
    const map = new google.maps.Map(document.getElementById("map"), {
      zoom: 16,
      center: myLatLng,
    });

    // Додавання маркера
    new google.maps.Marker({
      position: myLatLng,
      map,
      title: "Hello World!",
    });
  }

  initMap();
});