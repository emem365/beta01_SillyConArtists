// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'my_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MyLocationEventTearOff {
  const _$MyLocationEventTearOff();

// ignore: unused_element
  _GetPermission getPermission() {
    return const _GetPermission();
  }

// ignore: unused_element
  _GetStatus getStatus() {
    return const _GetStatus();
  }

// ignore: unused_element
  _ListenToLocation listenToLocation() {
    return const _ListenToLocation();
  }

// ignore: unused_element
  _LocationUpdated locationUpdated({@required LocationData locationData}) {
    return _LocationUpdated(
      locationData: locationData,
    );
  }

// ignore: unused_element
  _StopListening stopListening() {
    return const _StopListening();
  }
}

/// @nodoc
// ignore: unused_element
const $MyLocationEvent = _$MyLocationEventTearOff();

/// @nodoc
mixin _$MyLocationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPermission(),
    @required Result getStatus(),
    @required Result listenToLocation(),
    @required Result locationUpdated(LocationData locationData),
    @required Result stopListening(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPermission(),
    Result getStatus(),
    Result listenToLocation(),
    Result locationUpdated(LocationData locationData),
    Result stopListening(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPermission(_GetPermission value),
    @required Result getStatus(_GetStatus value),
    @required Result listenToLocation(_ListenToLocation value),
    @required Result locationUpdated(_LocationUpdated value),
    @required Result stopListening(_StopListening value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPermission(_GetPermission value),
    Result getStatus(_GetStatus value),
    Result listenToLocation(_ListenToLocation value),
    Result locationUpdated(_LocationUpdated value),
    Result stopListening(_StopListening value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $MyLocationEventCopyWith<$Res> {
  factory $MyLocationEventCopyWith(
          MyLocationEvent value, $Res Function(MyLocationEvent) then) =
      _$MyLocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyLocationEventCopyWithImpl<$Res>
    implements $MyLocationEventCopyWith<$Res> {
  _$MyLocationEventCopyWithImpl(this._value, this._then);

  final MyLocationEvent _value;
  // ignore: unused_field
  final $Res Function(MyLocationEvent) _then;
}

/// @nodoc
abstract class _$GetPermissionCopyWith<$Res> {
  factory _$GetPermissionCopyWith(
          _GetPermission value, $Res Function(_GetPermission) then) =
      __$GetPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPermissionCopyWithImpl<$Res>
    extends _$MyLocationEventCopyWithImpl<$Res>
    implements _$GetPermissionCopyWith<$Res> {
  __$GetPermissionCopyWithImpl(
      _GetPermission _value, $Res Function(_GetPermission) _then)
      : super(_value, (v) => _then(v as _GetPermission));

  @override
  _GetPermission get _value => super._value as _GetPermission;
}

/// @nodoc
class _$_GetPermission implements _GetPermission {
  const _$_GetPermission();

  @override
  String toString() {
    return 'MyLocationEvent.getPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPermission(),
    @required Result getStatus(),
    @required Result listenToLocation(),
    @required Result locationUpdated(LocationData locationData),
    @required Result stopListening(),
  }) {
    assert(getPermission != null);
    assert(getStatus != null);
    assert(listenToLocation != null);
    assert(locationUpdated != null);
    assert(stopListening != null);
    return getPermission();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPermission(),
    Result getStatus(),
    Result listenToLocation(),
    Result locationUpdated(LocationData locationData),
    Result stopListening(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPermission != null) {
      return getPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPermission(_GetPermission value),
    @required Result getStatus(_GetStatus value),
    @required Result listenToLocation(_ListenToLocation value),
    @required Result locationUpdated(_LocationUpdated value),
    @required Result stopListening(_StopListening value),
  }) {
    assert(getPermission != null);
    assert(getStatus != null);
    assert(listenToLocation != null);
    assert(locationUpdated != null);
    assert(stopListening != null);
    return getPermission(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPermission(_GetPermission value),
    Result getStatus(_GetStatus value),
    Result listenToLocation(_ListenToLocation value),
    Result locationUpdated(_LocationUpdated value),
    Result stopListening(_StopListening value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPermission != null) {
      return getPermission(this);
    }
    return orElse();
  }
}

abstract class _GetPermission implements MyLocationEvent {
  const factory _GetPermission() = _$_GetPermission;
}

/// @nodoc
abstract class _$GetStatusCopyWith<$Res> {
  factory _$GetStatusCopyWith(
          _GetStatus value, $Res Function(_GetStatus) then) =
      __$GetStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetStatusCopyWithImpl<$Res> extends _$MyLocationEventCopyWithImpl<$Res>
    implements _$GetStatusCopyWith<$Res> {
  __$GetStatusCopyWithImpl(_GetStatus _value, $Res Function(_GetStatus) _then)
      : super(_value, (v) => _then(v as _GetStatus));

  @override
  _GetStatus get _value => super._value as _GetStatus;
}

/// @nodoc
class _$_GetStatus implements _GetStatus {
  const _$_GetStatus();

  @override
  String toString() {
    return 'MyLocationEvent.getStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPermission(),
    @required Result getStatus(),
    @required Result listenToLocation(),
    @required Result locationUpdated(LocationData locationData),
    @required Result stopListening(),
  }) {
    assert(getPermission != null);
    assert(getStatus != null);
    assert(listenToLocation != null);
    assert(locationUpdated != null);
    assert(stopListening != null);
    return getStatus();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPermission(),
    Result getStatus(),
    Result listenToLocation(),
    Result locationUpdated(LocationData locationData),
    Result stopListening(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getStatus != null) {
      return getStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPermission(_GetPermission value),
    @required Result getStatus(_GetStatus value),
    @required Result listenToLocation(_ListenToLocation value),
    @required Result locationUpdated(_LocationUpdated value),
    @required Result stopListening(_StopListening value),
  }) {
    assert(getPermission != null);
    assert(getStatus != null);
    assert(listenToLocation != null);
    assert(locationUpdated != null);
    assert(stopListening != null);
    return getStatus(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPermission(_GetPermission value),
    Result getStatus(_GetStatus value),
    Result listenToLocation(_ListenToLocation value),
    Result locationUpdated(_LocationUpdated value),
    Result stopListening(_StopListening value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getStatus != null) {
      return getStatus(this);
    }
    return orElse();
  }
}

abstract class _GetStatus implements MyLocationEvent {
  const factory _GetStatus() = _$_GetStatus;
}

/// @nodoc
abstract class _$ListenToLocationCopyWith<$Res> {
  factory _$ListenToLocationCopyWith(
          _ListenToLocation value, $Res Function(_ListenToLocation) then) =
      __$ListenToLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$ListenToLocationCopyWithImpl<$Res>
    extends _$MyLocationEventCopyWithImpl<$Res>
    implements _$ListenToLocationCopyWith<$Res> {
  __$ListenToLocationCopyWithImpl(
      _ListenToLocation _value, $Res Function(_ListenToLocation) _then)
      : super(_value, (v) => _then(v as _ListenToLocation));

  @override
  _ListenToLocation get _value => super._value as _ListenToLocation;
}

/// @nodoc
class _$_ListenToLocation implements _ListenToLocation {
  const _$_ListenToLocation();

  @override
  String toString() {
    return 'MyLocationEvent.listenToLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ListenToLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPermission(),
    @required Result getStatus(),
    @required Result listenToLocation(),
    @required Result locationUpdated(LocationData locationData),
    @required Result stopListening(),
  }) {
    assert(getPermission != null);
    assert(getStatus != null);
    assert(listenToLocation != null);
    assert(locationUpdated != null);
    assert(stopListening != null);
    return listenToLocation();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPermission(),
    Result getStatus(),
    Result listenToLocation(),
    Result locationUpdated(LocationData locationData),
    Result stopListening(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listenToLocation != null) {
      return listenToLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPermission(_GetPermission value),
    @required Result getStatus(_GetStatus value),
    @required Result listenToLocation(_ListenToLocation value),
    @required Result locationUpdated(_LocationUpdated value),
    @required Result stopListening(_StopListening value),
  }) {
    assert(getPermission != null);
    assert(getStatus != null);
    assert(listenToLocation != null);
    assert(locationUpdated != null);
    assert(stopListening != null);
    return listenToLocation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPermission(_GetPermission value),
    Result getStatus(_GetStatus value),
    Result listenToLocation(_ListenToLocation value),
    Result locationUpdated(_LocationUpdated value),
    Result stopListening(_StopListening value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listenToLocation != null) {
      return listenToLocation(this);
    }
    return orElse();
  }
}

abstract class _ListenToLocation implements MyLocationEvent {
  const factory _ListenToLocation() = _$_ListenToLocation;
}

/// @nodoc
abstract class _$LocationUpdatedCopyWith<$Res> {
  factory _$LocationUpdatedCopyWith(
          _LocationUpdated value, $Res Function(_LocationUpdated) then) =
      __$LocationUpdatedCopyWithImpl<$Res>;
  $Res call({LocationData locationData});
}

/// @nodoc
class __$LocationUpdatedCopyWithImpl<$Res>
    extends _$MyLocationEventCopyWithImpl<$Res>
    implements _$LocationUpdatedCopyWith<$Res> {
  __$LocationUpdatedCopyWithImpl(
      _LocationUpdated _value, $Res Function(_LocationUpdated) _then)
      : super(_value, (v) => _then(v as _LocationUpdated));

  @override
  _LocationUpdated get _value => super._value as _LocationUpdated;

  @override
  $Res call({
    Object locationData = freezed,
  }) {
    return _then(_LocationUpdated(
      locationData: locationData == freezed
          ? _value.locationData
          : locationData as LocationData,
    ));
  }
}

/// @nodoc
class _$_LocationUpdated implements _LocationUpdated {
  const _$_LocationUpdated({@required this.locationData})
      : assert(locationData != null);

  @override
  final LocationData locationData;

  @override
  String toString() {
    return 'MyLocationEvent.locationUpdated(locationData: $locationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationUpdated &&
            (identical(other.locationData, locationData) ||
                const DeepCollectionEquality()
                    .equals(other.locationData, locationData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationData);

  @override
  _$LocationUpdatedCopyWith<_LocationUpdated> get copyWith =>
      __$LocationUpdatedCopyWithImpl<_LocationUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPermission(),
    @required Result getStatus(),
    @required Result listenToLocation(),
    @required Result locationUpdated(LocationData locationData),
    @required Result stopListening(),
  }) {
    assert(getPermission != null);
    assert(getStatus != null);
    assert(listenToLocation != null);
    assert(locationUpdated != null);
    assert(stopListening != null);
    return locationUpdated(locationData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPermission(),
    Result getStatus(),
    Result listenToLocation(),
    Result locationUpdated(LocationData locationData),
    Result stopListening(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locationUpdated != null) {
      return locationUpdated(locationData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPermission(_GetPermission value),
    @required Result getStatus(_GetStatus value),
    @required Result listenToLocation(_ListenToLocation value),
    @required Result locationUpdated(_LocationUpdated value),
    @required Result stopListening(_StopListening value),
  }) {
    assert(getPermission != null);
    assert(getStatus != null);
    assert(listenToLocation != null);
    assert(locationUpdated != null);
    assert(stopListening != null);
    return locationUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPermission(_GetPermission value),
    Result getStatus(_GetStatus value),
    Result listenToLocation(_ListenToLocation value),
    Result locationUpdated(_LocationUpdated value),
    Result stopListening(_StopListening value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locationUpdated != null) {
      return locationUpdated(this);
    }
    return orElse();
  }
}

abstract class _LocationUpdated implements MyLocationEvent {
  const factory _LocationUpdated({@required LocationData locationData}) =
      _$_LocationUpdated;

  LocationData get locationData;
  _$LocationUpdatedCopyWith<_LocationUpdated> get copyWith;
}

/// @nodoc
abstract class _$StopListeningCopyWith<$Res> {
  factory _$StopListeningCopyWith(
          _StopListening value, $Res Function(_StopListening) then) =
      __$StopListeningCopyWithImpl<$Res>;
}

/// @nodoc
class __$StopListeningCopyWithImpl<$Res>
    extends _$MyLocationEventCopyWithImpl<$Res>
    implements _$StopListeningCopyWith<$Res> {
  __$StopListeningCopyWithImpl(
      _StopListening _value, $Res Function(_StopListening) _then)
      : super(_value, (v) => _then(v as _StopListening));

  @override
  _StopListening get _value => super._value as _StopListening;
}

/// @nodoc
class _$_StopListening implements _StopListening {
  const _$_StopListening();

  @override
  String toString() {
    return 'MyLocationEvent.stopListening()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StopListening);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getPermission(),
    @required Result getStatus(),
    @required Result listenToLocation(),
    @required Result locationUpdated(LocationData locationData),
    @required Result stopListening(),
  }) {
    assert(getPermission != null);
    assert(getStatus != null);
    assert(listenToLocation != null);
    assert(locationUpdated != null);
    assert(stopListening != null);
    return stopListening();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getPermission(),
    Result getStatus(),
    Result listenToLocation(),
    Result locationUpdated(LocationData locationData),
    Result stopListening(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopListening != null) {
      return stopListening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getPermission(_GetPermission value),
    @required Result getStatus(_GetStatus value),
    @required Result listenToLocation(_ListenToLocation value),
    @required Result locationUpdated(_LocationUpdated value),
    @required Result stopListening(_StopListening value),
  }) {
    assert(getPermission != null);
    assert(getStatus != null);
    assert(listenToLocation != null);
    assert(locationUpdated != null);
    assert(stopListening != null);
    return stopListening(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getPermission(_GetPermission value),
    Result getStatus(_GetStatus value),
    Result listenToLocation(_ListenToLocation value),
    Result locationUpdated(_LocationUpdated value),
    Result stopListening(_StopListening value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopListening != null) {
      return stopListening(this);
    }
    return orElse();
  }
}

abstract class _StopListening implements MyLocationEvent {
  const factory _StopListening() = _$_StopListening;
}

/// @nodoc
class _$MyLocationStateTearOff {
  const _$MyLocationStateTearOff();

// ignore: unused_element
  _MyLocationState call(
      {@required
          Option<Either<PermissionFailure, Unit>>
              permissionFailureOrSuccessOption,
      @required
          Option<Either<StatusFailure, Unit>> statusFailureOrSuccessOption,
      @required
          Option<LocationData> locationDataOption}) {
    return _MyLocationState(
      permissionFailureOrSuccessOption: permissionFailureOrSuccessOption,
      statusFailureOrSuccessOption: statusFailureOrSuccessOption,
      locationDataOption: locationDataOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MyLocationState = _$MyLocationStateTearOff();

/// @nodoc
mixin _$MyLocationState {
  Option<Either<PermissionFailure, Unit>> get permissionFailureOrSuccessOption;
  Option<Either<StatusFailure, Unit>> get statusFailureOrSuccessOption;
  Option<LocationData> get locationDataOption;

  $MyLocationStateCopyWith<MyLocationState> get copyWith;
}

/// @nodoc
abstract class $MyLocationStateCopyWith<$Res> {
  factory $MyLocationStateCopyWith(
          MyLocationState value, $Res Function(MyLocationState) then) =
      _$MyLocationStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<PermissionFailure, Unit>> permissionFailureOrSuccessOption,
      Option<Either<StatusFailure, Unit>> statusFailureOrSuccessOption,
      Option<LocationData> locationDataOption});
}

/// @nodoc
class _$MyLocationStateCopyWithImpl<$Res>
    implements $MyLocationStateCopyWith<$Res> {
  _$MyLocationStateCopyWithImpl(this._value, this._then);

  final MyLocationState _value;
  // ignore: unused_field
  final $Res Function(MyLocationState) _then;

  @override
  $Res call({
    Object permissionFailureOrSuccessOption = freezed,
    Object statusFailureOrSuccessOption = freezed,
    Object locationDataOption = freezed,
  }) {
    return _then(_value.copyWith(
      permissionFailureOrSuccessOption:
          permissionFailureOrSuccessOption == freezed
              ? _value.permissionFailureOrSuccessOption
              : permissionFailureOrSuccessOption
                  as Option<Either<PermissionFailure, Unit>>,
      statusFailureOrSuccessOption: statusFailureOrSuccessOption == freezed
          ? _value.statusFailureOrSuccessOption
          : statusFailureOrSuccessOption as Option<Either<StatusFailure, Unit>>,
      locationDataOption: locationDataOption == freezed
          ? _value.locationDataOption
          : locationDataOption as Option<LocationData>,
    ));
  }
}

/// @nodoc
abstract class _$MyLocationStateCopyWith<$Res>
    implements $MyLocationStateCopyWith<$Res> {
  factory _$MyLocationStateCopyWith(
          _MyLocationState value, $Res Function(_MyLocationState) then) =
      __$MyLocationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<PermissionFailure, Unit>> permissionFailureOrSuccessOption,
      Option<Either<StatusFailure, Unit>> statusFailureOrSuccessOption,
      Option<LocationData> locationDataOption});
}

/// @nodoc
class __$MyLocationStateCopyWithImpl<$Res>
    extends _$MyLocationStateCopyWithImpl<$Res>
    implements _$MyLocationStateCopyWith<$Res> {
  __$MyLocationStateCopyWithImpl(
      _MyLocationState _value, $Res Function(_MyLocationState) _then)
      : super(_value, (v) => _then(v as _MyLocationState));

  @override
  _MyLocationState get _value => super._value as _MyLocationState;

  @override
  $Res call({
    Object permissionFailureOrSuccessOption = freezed,
    Object statusFailureOrSuccessOption = freezed,
    Object locationDataOption = freezed,
  }) {
    return _then(_MyLocationState(
      permissionFailureOrSuccessOption:
          permissionFailureOrSuccessOption == freezed
              ? _value.permissionFailureOrSuccessOption
              : permissionFailureOrSuccessOption
                  as Option<Either<PermissionFailure, Unit>>,
      statusFailureOrSuccessOption: statusFailureOrSuccessOption == freezed
          ? _value.statusFailureOrSuccessOption
          : statusFailureOrSuccessOption as Option<Either<StatusFailure, Unit>>,
      locationDataOption: locationDataOption == freezed
          ? _value.locationDataOption
          : locationDataOption as Option<LocationData>,
    ));
  }
}

/// @nodoc
class _$_MyLocationState implements _MyLocationState {
  const _$_MyLocationState(
      {@required this.permissionFailureOrSuccessOption,
      @required this.statusFailureOrSuccessOption,
      @required this.locationDataOption})
      : assert(permissionFailureOrSuccessOption != null),
        assert(statusFailureOrSuccessOption != null),
        assert(locationDataOption != null);

  @override
  final Option<Either<PermissionFailure, Unit>>
      permissionFailureOrSuccessOption;
  @override
  final Option<Either<StatusFailure, Unit>> statusFailureOrSuccessOption;
  @override
  final Option<LocationData> locationDataOption;

  @override
  String toString() {
    return 'MyLocationState(permissionFailureOrSuccessOption: $permissionFailureOrSuccessOption, statusFailureOrSuccessOption: $statusFailureOrSuccessOption, locationDataOption: $locationDataOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyLocationState &&
            (identical(other.permissionFailureOrSuccessOption,
                    permissionFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.permissionFailureOrSuccessOption,
                    permissionFailureOrSuccessOption)) &&
            (identical(other.statusFailureOrSuccessOption,
                    statusFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.statusFailureOrSuccessOption,
                    statusFailureOrSuccessOption)) &&
            (identical(other.locationDataOption, locationDataOption) ||
                const DeepCollectionEquality()
                    .equals(other.locationDataOption, locationDataOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(permissionFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(statusFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(locationDataOption);

  @override
  _$MyLocationStateCopyWith<_MyLocationState> get copyWith =>
      __$MyLocationStateCopyWithImpl<_MyLocationState>(this, _$identity);
}

abstract class _MyLocationState implements MyLocationState {
  const factory _MyLocationState(
      {@required
          Option<Either<PermissionFailure, Unit>>
              permissionFailureOrSuccessOption,
      @required
          Option<Either<StatusFailure, Unit>> statusFailureOrSuccessOption,
      @required
          Option<LocationData> locationDataOption}) = _$_MyLocationState;

  @override
  Option<Either<PermissionFailure, Unit>> get permissionFailureOrSuccessOption;
  @override
  Option<Either<StatusFailure, Unit>> get statusFailureOrSuccessOption;
  @override
  Option<LocationData> get locationDataOption;
  @override
  _$MyLocationStateCopyWith<_MyLocationState> get copyWith;
}
