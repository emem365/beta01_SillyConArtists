// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'coordinate_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CoordinatePointTearOff {
  const _$CoordinatePointTearOff();

// ignore: unused_element
  _CoordinatePoint call(
      {@required double latitude, @required double longitude}) {
    return _CoordinatePoint(
      latitude: latitude,
      longitude: longitude,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CoordinatePoint = _$CoordinatePointTearOff();

/// @nodoc
mixin _$CoordinatePoint {
  double get latitude;
  double get longitude;

  $CoordinatePointCopyWith<CoordinatePoint> get copyWith;
}

/// @nodoc
abstract class $CoordinatePointCopyWith<$Res> {
  factory $CoordinatePointCopyWith(
          CoordinatePoint value, $Res Function(CoordinatePoint) then) =
      _$CoordinatePointCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$CoordinatePointCopyWithImpl<$Res>
    implements $CoordinatePointCopyWith<$Res> {
  _$CoordinatePointCopyWithImpl(this._value, this._then);

  final CoordinatePoint _value;
  // ignore: unused_field
  final $Res Function(CoordinatePoint) _then;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

/// @nodoc
abstract class _$CoordinatePointCopyWith<$Res>
    implements $CoordinatePointCopyWith<$Res> {
  factory _$CoordinatePointCopyWith(
          _CoordinatePoint value, $Res Function(_CoordinatePoint) then) =
      __$CoordinatePointCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$CoordinatePointCopyWithImpl<$Res>
    extends _$CoordinatePointCopyWithImpl<$Res>
    implements _$CoordinatePointCopyWith<$Res> {
  __$CoordinatePointCopyWithImpl(
      _CoordinatePoint _value, $Res Function(_CoordinatePoint) _then)
      : super(_value, (v) => _then(v as _CoordinatePoint));

  @override
  _CoordinatePoint get _value => super._value as _CoordinatePoint;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_CoordinatePoint(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

/// @nodoc
class _$_CoordinatePoint implements _CoordinatePoint {
  const _$_CoordinatePoint({@required this.latitude, @required this.longitude})
      : assert(latitude != null),
        assert(longitude != null);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'CoordinatePoint(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoordinatePoint &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @override
  _$CoordinatePointCopyWith<_CoordinatePoint> get copyWith =>
      __$CoordinatePointCopyWithImpl<_CoordinatePoint>(this, _$identity);
}

abstract class _CoordinatePoint implements CoordinatePoint {
  const factory _CoordinatePoint(
      {@required double latitude,
      @required double longitude}) = _$_CoordinatePoint;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  _$CoordinatePointCopyWith<_CoordinatePoint> get copyWith;
}
