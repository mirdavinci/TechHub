import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:html';

import 'package:google_maps/google_maps.dart';

Widget getMap() {
  String id = "6";

  ui.platformViewRegistry.registerViewFactory(id, (int viewId) {
    final latLng = LatLng(12.9007616, 77.6568832);

    final elem = DivElement()
      ..id = id
      ..style.width = "100%"
      ..style.height = "100%"
      ..style.border = "none%";

    final mapOptions = MapOptions()
      ..zoom = 11
      ..tilt = 98
      ..center = latLng;
    final map = GMap(elem, mapOptions);

    Marker(MarkerOptions()
      ..position = latLng
      ..map = map
      ..title = "Current Location");
    return elem;
  });
  return HtmlElementView(viewType: id);
}
