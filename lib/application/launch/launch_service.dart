import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../ui/components/components.dart';
import '../../ui/pages/pages.dart';
import '../../domain/entities/entities.dart';
import '../../infra/launches/launches.dart';

class LaunchService extends GetxController {
  var lastFourLaunches = <LaunchEntity?>[].obs;
  var allLaunchpads = <LaunchpadEntity?>[].obs;
  var markers = <MarkerId, Marker>{}.obs;

  Future<List<LaunchEntity?>?> getLastLaunchesService() async {
    final lastFourLaunches = await LaunchesRepository().receiveLastLaunches();
    return lastFourLaunches;
  }

  Future<List<LaunchpadEntity?>> getAllLaunchpads() async {
    for (var i = 0; i < lastFourLaunches.length; i++) {
      allLaunchpads.add(await LaunchesRepository()
          .receiveSpecificLaunchpad(lastFourLaunches[i]?.launchpad));
    }
    return allLaunchpads;
  }

  convertDateAndHour(DateTime? date) {
    String dateConverted = "Sem data informada";
    if (date != null) {
      dateConverted =
          '${date.day} de ${convertMonth(date.month)} de ${date.year}, ${showCorrectHour(date.hour)}:${showCorrectHour(date.minute)}';
    }
    return dateConverted;
  }

  showCorrectHour(int value) {
    if (value < 10) {
      return '0$value';
    } else {
      return '$value';
    }
  }

  convertMonth(int month) {
    switch (month) {
      case 1:
        return 'Janeiro';
      case 2:
        return 'Fevereiro';
      case 3:
        return 'Março';
      case 4:
        return 'Abril';
      case 5:
        return 'Maio';
      case 6:
        return 'Junho';
      case 7:
        return 'Julho';
      case 8:
        return 'Agosto';
      case 9:
        return 'Setembro';
      case 10:
        return 'Outubro';
      case 11:
        return 'Novembro';
      case 12:
        return 'Dezembro';
      default:
    }
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))
            ?.buffer
            .asUint8List() ??
        Uint8List(0);
  }

  getMarkers() async {
    for (var i = 0; i < allLaunchpads.length; i++) {
      createMarker(i);
    }
  }

  createMarker(int index) async {
    var markerId = const MarkerId('1');
    var marker = Marker(markerId: markerId, position: const LatLng(0, 0));
    var markerIcon = await getBytesFromAsset(
        'lib/ui/assets/images/rocket_launch_red_24dp.png', 100);

    markerId = MarkerId('${lastFourLaunches[index]?.name}');
    marker = Marker(
        markerId: markerId,
        icon: BitmapDescriptor.fromBytes(markerIcon),
        position: LatLng(allLaunchpads[index]?.latitude ?? 0,
            allLaunchpads[index]?.longitude ?? 0),
        infoWindow: InfoWindow(
            title: lastFourLaunches[index]?.name,
            snippet:
                '${allLaunchpads[index]?.locality}, ${allLaunchpads[index]?.region}'));
    markers[markerId] = marker;
  }

  Completer<GoogleMapController> mapsCompleter = Completer();
  GoogleMapController? googleMapController;

  onMapTapped(int index) async {
    googleMapController = await mapsCompleter.future;
    Timer(const Duration(seconds: 1), () {
      googleMapController
          ?.showMarkerInfoWindow(MarkerId('${lastFourLaunches[index]?.name}'));
    });
  }

  var currentIndex = 0.obs;
  final currentColor = [
    AppColors.primaryColor,
    AppColors.secondaryColor,
    AppColors.secondaryColor
  ];
  final widgetsList = const [LaunchPage(), MapPage(), ConfigurationsPage()];
  final titleList = ['Home', 'Mapa', 'Configurações'];

  void setMenuOption(int value) {
    currentIndex.value = value;
    currentColor.asMap().forEach((index, element) {
      if (index == value) {
        currentColor[index] = AppColors.primaryColor;
      } else {
        currentColor[index] = AppColors.secondaryColor;
      }
    });
  }
}
