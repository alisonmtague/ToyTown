L.mapbox.accessToken = 'pk.eyJ1IjoiYWxpc29udGFndWUiLCJhIjoiZFNlcUJJSSJ9.aIAkqkMOmCwV79O99oy1YA';
  var map = L.mapbox.map('map', 'alisontague.laf194mm')
    .setView([25.6964967, -80.1642724], 17);
  map.locate()
