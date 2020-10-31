// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'query_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QueryFailureTearOff {
  const _$QueryFailureTearOff();

// ignore: unused_element
  _TimedOut timedOut() {
    return const _TimedOut();
  }

// ignore: unused_element
  _Unexpected unexpected() {
    return const _Unexpected();
  }
}

/// @nodoc
// ignore: unused_element
const $QueryFailure = _$QueryFailureTearOff();

/// @nodoc
mixin _$QueryFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timedOut(),
    @required Result unexpected(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timedOut(),
    Result unexpected(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timedOut(_TimedOut value),
    @required Result unexpected(_Unexpected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timedOut(_TimedOut value),
    Result unexpected(_Unexpected value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $QueryFailureCopyWith<$Res> {
  factory $QueryFailureCopyWith(
          QueryFailure value, $Res Function(QueryFailure) then) =
      _$QueryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueryFailureCopyWithImpl<$Res> implements $QueryFailureCopyWith<$Res> {
  _$QueryFailureCopyWithImpl(this._value, this._then);

  final QueryFailure _value;
  // ignore: unused_field
  final $Res Function(QueryFailure) _then;
}

/// @nodoc
abstract class _$TimedOutCopyWith<$Res> {
  factory _$TimedOutCopyWith(_TimedOut value, $Res Function(_TimedOut) then) =
      __$TimedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$TimedOutCopyWithImpl<$Res> extends _$QueryFailureCopyWithImpl<$Res>
    implements _$TimedOutCopyWith<$Res> {
  __$TimedOutCopyWithImpl(_TimedOut _value, $Res Function(_TimedOut) _then)
      : super(_value, (v) => _then(v as _TimedOut));

  @override
  _TimedOut get _value => super._value as _TimedOut;
}

/// @nodoc
class _$_TimedOut implements _TimedOut {
  const _$_TimedOut();

  @override
  String toString() {
    return 'QueryFailure.timedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TimedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timedOut(),
    @required Result unexpected(),
  }) {
    assert(timedOut != null);
    assert(unexpected != null);
    return timedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timedOut(),
    Result unexpected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timedOut != null) {
      return timedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timedOut(_TimedOut value),
    @required Result unexpected(_Unexpected value),
  }) {
    assert(timedOut != null);
    assert(unexpected != null);
    return timedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timedOut(_TimedOut value),
    Result unexpected(_Unexpected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timedOut != null) {
      return timedOut(this);
    }
    return orElse();
  }
}

abstract class _TimedOut implements QueryFailure {
  const factory _TimedOut() = _$_TimedOut;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$QueryFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc
class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'QueryFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timedOut(),
    @required Result unexpected(),
  }) {
    assert(timedOut != null);
    assert(unexpected != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timedOut(),
    Result unexpected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timedOut(_TimedOut value),
    @required Result unexpected(_Unexpected value),
  }) {
    assert(timedOut != null);
    assert(unexpected != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timedOut(_TimedOut value),
    Result unexpected(_Unexpected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements QueryFailure {
  const factory _Unexpected() = _$_Unexpected;
}
