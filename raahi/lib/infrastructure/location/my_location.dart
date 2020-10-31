import 'dart:async';

import 'package:location/location.dart';

class MyLocation {
  Location location = Location();

  Stream<LocationData> locationStream;

  Future<PermissionStatus> getPermission() async {
    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.DENIED) {
      permissionGranted = await location.requestPermission();
      return permissionGranted;
    }
    return permissionGranted;
  }

  Future<bool> getServiceStatus() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
    }
    return serviceEnabled;
  }

  Future startListening() async {
    locationStream = location.onLocationChanged();
  }
}
