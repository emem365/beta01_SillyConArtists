part of 'my_location_bloc.dart';

@freezed
abstract class MyLocationEvent with _$MyLocationEvent {
  const factory MyLocationEvent.getPermission() = _GetPermission;
  const factory MyLocationEvent.getStatus() = _GetStatus;
  const factory MyLocationEvent.locationUpdated() = _LocationUpdated;
}
