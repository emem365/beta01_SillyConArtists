// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'status_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StatusFailureTearOff {
  const _$StatusFailureTearOff();

// ignore: unused_element
  _Disabled disabled() {
    return const _Disabled();
  }

// ignore: unused_element
  _Unknown unknown() {
    return const _Unknown();
  }
}

/// @nodoc
// ignore: unused_element
const $StatusFailure = _$StatusFailureTearOff();

/// @nodoc
mixin _$StatusFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result disabled(),
    @required Result unknown(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result disabled(),
    Result unknown(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result disabled(_Disabled value),
    @required Result unknown(_Unknown value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result disabled(_Disabled value),
    Result unknown(_Unknown value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $StatusFailureCopyWith<$Res> {
  factory $StatusFailureCopyWith(
          StatusFailure value, $Res Function(StatusFailure) then) =
      _$StatusFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatusFailureCopyWithImpl<$Res>
    implements $StatusFailureCopyWith<$Res> {
  _$StatusFailureCopyWithImpl(this._value, this._then);

  final StatusFailure _value;
  // ignore: unused_field
  final $Res Function(StatusFailure) _then;
}

/// @nodoc
abstract class _$DisabledCopyWith<$Res> {
  factory _$DisabledCopyWith(_Disabled value, $Res Function(_Disabled) then) =
      __$DisabledCopyWithImpl<$Res>;
}

/// @nodoc
class __$DisabledCopyWithImpl<$Res> extends _$StatusFailureCopyWithImpl<$Res>
    implements _$DisabledCopyWith<$Res> {
  __$DisabledCopyWithImpl(_Disabled _value, $Res Function(_Disabled) _then)
      : super(_value, (v) => _then(v as _Disabled));

  @override
  _Disabled get _value => super._value as _Disabled;
}

/// @nodoc
class _$_Disabled implements _Disabled {
  const _$_Disabled();

  @override
  String toString() {
    return 'StatusFailure.disabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Disabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result disabled(),
    @required Result unknown(),
  }) {
    assert(disabled != null);
    assert(unknown != null);
    return disabled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result disabled(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disabled != null) {
      return disabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result disabled(_Disabled value),
    @required Result unknown(_Unknown value),
  }) {
    assert(disabled != null);
    assert(unknown != null);
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result disabled(_Disabled value),
    Result unknown(_Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class _Disabled implements StatusFailure {
  const factory _Disabled() = _$_Disabled;
}

/// @nodoc
abstract class _$UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res> extends _$StatusFailureCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;
}

/// @nodoc
class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'StatusFailure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result disabled(),
    @required Result unknown(),
  }) {
    assert(disabled != null);
    assert(unknown != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result disabled(),
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result disabled(_Disabled value),
    @required Result unknown(_Unknown value),
  }) {
    assert(disabled != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result disabled(_Disabled value),
    Result unknown(_Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements StatusFailure {
  const factory _Unknown() = _$_Unknown;
}
