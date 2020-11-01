part of 'my_location_bloc.dart';

@freezed
abstract class MyLocationEvent with _$MyLocationEvent {
  const factory MyLocationEvent.getPermission() = _GetPermission;

  const factory MyLocationEvent.getStatus() = _GetStatus;

  const factory MyLocationEvent.listenToLocation() = _ListenToLocation;

  const factory MyLocationEvent.locationUpdated(
      {@required LocationData locationData}) = _LocationUpdated;

  const factory MyLocationEvent.stopListening() = _StopListening;
}
