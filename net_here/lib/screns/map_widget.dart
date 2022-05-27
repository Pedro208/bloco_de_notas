import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../helpers/geolocation.dart';

class MapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Marker> points = [
      Marker(
          point: (LatLng(51.5, -0.09)),
          builder: (ctx) => Icon(
                Icons.pin_drop,
                color: Colors.amber,
              )),
      Marker(
          point: LatLng(22.2569, 45.6972),
          builder: (ctx) => Icon(
                Icons.pin_drop,
                color: Colors.red,
              )),
      Marker(
          point: LatLng(58.8, 6.1),
          builder: (ctx) => Icon(
                Icons.pin_drop,
                color: Colors.green,
              ))
    ];
    print(Geolocation().determinePosition());

    return FlutterMap(
      options: MapOptions(
          center: LatLng(22.2569, 45.6972),
          zoom: 4,
          bounds: LatLngBounds(LatLng(22.2569, 45.6972))),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: ['a', 'b', 'c'],
        ),
        MarkerLayerOptions(markers: points)
      ],
    );
  }
}
