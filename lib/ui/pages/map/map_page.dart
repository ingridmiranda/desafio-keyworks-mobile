import 'dart:async';
import 'package:get/get.dart';

import 'package:desafio_keyworks/application/launch/launch_service.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends GetView<LaunchService> {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getMarkers();
    final Completer<GoogleMapController> _controller = Completer();

    final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(controller.allLaunchpads[0]?.latitude ?? 0,
          controller.allLaunchpads[0]?.longitude ?? 0),
      zoom: 11.5,
    );

    return Obx(() {
      return GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          markers: Set<Marker>.of(controller.markers.values),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          });
    });
  }
}
