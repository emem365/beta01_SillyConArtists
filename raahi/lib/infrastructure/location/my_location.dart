import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:raahi/domain/core/permission_failure.dart';
import 'package:raahi/domain/navigation/status_failure.dart';

@LazySingleton()
class MyLocation {
  Location location = Location();

  Stream<LocationData> locationStream;

  Future<Either<PermissionFailure, Unit>> getPermission() async {
    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.DENIED) {
      permissionGranted = await location.requestPermission();
      switch (permissionGranted) {
        case PermissionStatus.DENIED:
          return left(const PermissionFailure.denied());
        case PermissionStatus.DENIED_FOREVER:
          return left(const PermissionFailure.deniedForever());
        case PermissionStatus.GRANTED:
          return right(unit);
      }
    }
    if (permissionGranted == PermissionStatus.DENIED_FOREVER) {
      return left(const PermissionFailure.deniedForever());
    }
    return right(unit);
  }

  Future<Either<StatusFailure, Unit>> getServiceStatus() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
    }
    if (serviceEnabled) {
      return right(unit);
    } else {
      return left(const StatusFailure.disabled());
    }
  }

  Future startListening() async {
    locationStream = location.onLocationChanged();
  }
}
