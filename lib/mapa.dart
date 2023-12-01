import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

const MAPBOX_ACCESS_TOKEN =
    'pk.eyJ1IjoicGl0bWFjIiwiYSI6ImNsY3BpeWxuczJhOTEzbnBlaW5vcnNwNzMifQ.ncTzM4bW-jpq-hUFutnR1g';

final posicao = LatLng(-8.067804, -34.8809119);
final List<LatLng> points = [
  LatLng(-8.0476, -34.8770), // Recife
  LatLng(-8.0636, -34.8700), // Point 2
  LatLng(-8.0582, -34.8832), // Point 3
  LatLng(-8.0555, -34.8811), // Point 4
  LatLng(-8.0518, -34.9000), // Point 5
];

class Mapa extends StatelessWidget {
  const Mapa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: posicao ?? LatLng(0, 0),
          minZoom: 5,
          maxZoom: 25,
          zoom: 14,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate:
                'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
            additionalOptions: {
              'accessToken': MAPBOX_ACCESS_TOKEN,
              'id': 'mapbox/streets-v12',
            },
          ),
          MarkerLayerOptions(
            markers: points.map((point) {
              return Marker(
                width: 40.0,
                height: 40.0,
                point: point,
                builder: (ctx) => Container(
                  child: Image.asset("assets/image/iconeMap.png"),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
