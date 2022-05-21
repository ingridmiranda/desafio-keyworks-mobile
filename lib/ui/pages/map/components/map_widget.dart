import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../application/services.dart';

class MapWidget extends GetView<LaunchService> {
  const MapWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: controller.kGooglePlex,
        markers: Set<Marker>.of(controller.markers.values),
        onMapCreated: (GoogleMapController googleMapController) async {
          if (!controller.mapsCompleter.isCompleted) {
            controller.mapsCompleter.complete(googleMapController);
            googleMapController = await controller.mapsCompleter.future;
            controller.googleMapController = googleMapController;
          } else {
            controller.googleMapController = googleMapController;
          }
        });
  }
}
