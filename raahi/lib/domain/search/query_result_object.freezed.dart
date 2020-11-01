// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'query_result_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QueryResultObjectTearOff {
  const _$QueryResultObjectTearOff();

// ignore: unused_element
  _QueryResultObject call(
      {@required LocationName name, @required String cityName}) {
    return _QueryResultObject(
      name: name,
      cityName: cityName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QueryResultObject = _$QueryResultObjectTearOff();

/// @nodoc
mixin _$QueryResultObject {
  LocationName get name;
  String get cityName;

  $QueryResultObjectCopyWith<QueryResultObject> get copyWith;
}

/// @nodoc
abstract class $QueryResultObjectCopyWith<$Res> {
  factory $QueryResultObjectCopyWith(
          QueryResultObject value, $Res Function(QueryResultObject) then) =
      _$QueryResultObjectCopyWithImpl<$Res>;
  $Res call({LocationName name, String cityName});
}

/// @nodoc
class _$QueryResultObjectCopyWithImpl<$Res>
    implements $QueryResultObjectCopyWith<$Res> {
  _$QueryResultObjectCopyWithImpl(this._value, this._then);

  final QueryResultObject _value;
  // ignore: unused_field
  final $Res Function(QueryResultObject) _then;

  @override
  $Res call({
    Object name = freezed,
    Object cityName = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as LocationName,
      cityName: cityName == freezed ? _value.cityName : cityName as String,
    ));
  }
}

/// @nodoc
abstract class _$QueryResultObjectCopyWith<$Res>
    implements $QueryResultObjectCopyWith<$Res> {
  factory _$QueryResultObjectCopyWith(
          _QueryResultObject value, $Res Function(_QueryResultObject) then) =
      __$QueryResultObjectCopyWithImpl<$Res>;
  @override
  $Res call({LocationName name, String cityName});
}

/// @nodoc
class __$QueryResultObjectCopyWithImpl<$Res>
    extends _$QueryResultObjectCopyWithImpl<$Res>
    implements _$QueryResultObjectCopyWith<$Res> {
  __$QueryResultObjectCopyWithImpl(
      _QueryResultObject _value, $Res Function(_QueryResultObject) _then)
      : super(_value, (v) => _then(v as _QueryResultObject));

  @override
  _QueryResultObject get _value => super._value as _QueryResultObject;

  @override
  $Res call({
    Object name = freezed,
    Object cityName = freezed,
  }) {
    return _then(_QueryResultObject(
      name: name == freezed ? _value.name : name as LocationName,
      cityName: cityName == freezed ? _value.cityName : cityName as String,
    ));
  }
}

/// @nodoc
class _$_QueryResultObject
    with DiagnosticableTreeMixin
    implements _QueryResultObject {
  const _$_QueryResultObject({@required this.name, @required this.cityName})
      : assert(name != null),
        assert(cityName != null);

  @override
  final LocationName name;
  @override
  final String cityName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryResultObject(name: $name, cityName: $cityName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryResultObject'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cityName', cityName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryResultObject &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(cityName);

  @override
  _$QueryResultObjectCopyWith<_QueryResultObject> get copyWith =>
      __$QueryResultObjectCopyWithImpl<_QueryResultObject>(this, _$identity);
}

abstract class _QueryResultObject implements QueryResultObject {
  const factory _QueryResultObject(
      {@required LocationName name,
      @required String cityName}) = _$_QueryResultObject;

  @override
  LocationName get name;
  @override
  String get cityName;
  @override
  _$QueryResultObjectCopyWith<_QueryResultObject> get copyWith;
}
