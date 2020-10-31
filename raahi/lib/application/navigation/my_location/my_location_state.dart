part of 'my_location_bloc.dart';

@freezed
abstract class MyLocationState with _$MyLocationState {
  const factory MyLocationState({
    @required
        Option<Either<PermissionFailure, Unit>>
            permissionFailureOrSuccessOption,
    @required Option<Either<StatusFailure, Unit>> statusFailureOrSuccessOption,
    @required Option<LocationData> locationDataOption,
  }) = _MyLocationState;

  factory MyLocationState.initial() => _MyLocationState(
        permissionFailureOrSuccessOption: none(),
        statusFailureOrSuccessOption: none(),
        locationDataOption: none(),
      );
}
