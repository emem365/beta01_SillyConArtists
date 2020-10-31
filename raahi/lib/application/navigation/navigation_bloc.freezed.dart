// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NavigationEventTearOff {
  const _$NavigationEventTearOff();

// ignore: unused_element
  _Start start() {
    return const _Start();
  }

// ignore: unused_element
  _ReRoute reRoute() {
    return const _ReRoute();
  }

// ignore: unused_element
  _Stop stop() {
    return const _Stop();
  }
}

/// @nodoc
// ignore: unused_element
const $NavigationEvent = _$NavigationEventTearOff();

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result reRoute(),
    @required Result stop(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result reRoute(),
    Result stop(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result reRoute(_ReRoute value),
    @required Result stop(_Stop value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result reRoute(_ReRoute value),
    Result stop(_Stop value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;
}

/// @nodoc
abstract class _$StartCopyWith<$Res> {
  factory _$StartCopyWith(_Start value, $Res Function(_Start) then) =
      __$StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
    implements _$StartCopyWith<$Res> {
  __$StartCopyWithImpl(_Start _value, $Res Function(_Start) _then)
      : super(_value, (v) => _then(v as _Start));

  @override
  _Start get _value => super._value as _Start;
}

/// @nodoc
class _$_Start implements _Start {
  const _$_Start();

  @override
  String toString() {
    return 'NavigationEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result reRoute(),
    @required Result stop(),
  }) {
    assert(start != null);
    assert(reRoute != null);
    assert(stop != null);
    return start();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result reRoute(),
    Result stop(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result reRoute(_ReRoute value),
    @required Result stop(_Stop value),
  }) {
    assert(start != null);
    assert(reRoute != null);
    assert(stop != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result reRoute(_ReRoute value),
    Result stop(_Stop value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements NavigationEvent {
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$ReRouteCopyWith<$Res> {
  factory _$ReRouteCopyWith(_ReRoute value, $Res Function(_ReRoute) then) =
      __$ReRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReRouteCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
    implements _$ReRouteCopyWith<$Res> {
  __$ReRouteCopyWithImpl(_ReRoute _value, $Res Function(_ReRoute) _then)
      : super(_value, (v) => _then(v as _ReRoute));

  @override
  _ReRoute get _value => super._value as _ReRoute;
}

/// @nodoc
class _$_ReRoute implements _ReRoute {
  const _$_ReRoute();

  @override
  String toString() {
    return 'NavigationEvent.reRoute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result reRoute(),
    @required Result stop(),
  }) {
    assert(start != null);
    assert(reRoute != null);
    assert(stop != null);
    return reRoute();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result reRoute(),
    Result stop(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reRoute != null) {
      return reRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result reRoute(_ReRoute value),
    @required Result stop(_Stop value),
  }) {
    assert(start != null);
    assert(reRoute != null);
    assert(stop != null);
    return reRoute(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result reRoute(_ReRoute value),
    Result stop(_Stop value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reRoute != null) {
      return reRoute(this);
    }
    return orElse();
  }
}

abstract class _ReRoute implements NavigationEvent {
  const factory _ReRoute() = _$_ReRoute;
}

/// @nodoc
abstract class _$StopCopyWith<$Res> {
  factory _$StopCopyWith(_Stop value, $Res Function(_Stop) then) =
      __$StopCopyWithImpl<$Res>;
}

/// @nodoc
class __$StopCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
    implements _$StopCopyWith<$Res> {
  __$StopCopyWithImpl(_Stop _value, $Res Function(_Stop) _then)
      : super(_value, (v) => _then(v as _Stop));

  @override
  _Stop get _value => super._value as _Stop;
}

/// @nodoc
class _$_Stop implements _Stop {
  const _$_Stop();

  @override
  String toString() {
    return 'NavigationEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Stop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result reRoute(),
    @required Result stop(),
  }) {
    assert(start != null);
    assert(reRoute != null);
    assert(stop != null);
    return stop();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result reRoute(),
    Result stop(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result reRoute(_ReRoute value),
    @required Result stop(_Stop value),
  }) {
    assert(start != null);
    assert(reRoute != null);
    assert(stop != null);
    return stop(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result reRoute(_ReRoute value),
    Result stop(_Stop value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop implements NavigationEvent {
  const factory _Stop() = _$_Stop;
}

/// @nodoc
class _$NavigationStateTearOff {
  const _$NavigationStateTearOff();

// ignore: unused_element
  _NavigationState call(
      {@required bool isLoading,
      @required Option<List<CoordinatePoint>> points,
      @required bool reRouting,
      @required bool finished}) {
    return _NavigationState(
      isLoading: isLoading,
      points: points,
      reRouting: reRouting,
      finished: finished,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NavigationState = _$NavigationStateTearOff();

/// @nodoc
mixin _$NavigationState {
  bool get isLoading;
  Option<List<CoordinatePoint>> get points;
  bool get reRouting;
  bool get finished;

  $NavigationStateCopyWith<NavigationState> get copyWith;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<List<CoordinatePoint>> points,
      bool reRouting,
      bool finished});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object points = freezed,
    Object reRouting = freezed,
    Object finished = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      points: points == freezed
          ? _value.points
          : points as Option<List<CoordinatePoint>>,
      reRouting: reRouting == freezed ? _value.reRouting : reRouting as bool,
      finished: finished == freezed ? _value.finished : finished as bool,
    ));
  }
}

/// @nodoc
abstract class _$NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$NavigationStateCopyWith(
          _NavigationState value, $Res Function(_NavigationState) then) =
      __$NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<List<CoordinatePoint>> points,
      bool reRouting,
      bool finished});
}

/// @nodoc
class __$NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$NavigationStateCopyWith<$Res> {
  __$NavigationStateCopyWithImpl(
      _NavigationState _value, $Res Function(_NavigationState) _then)
      : super(_value, (v) => _then(v as _NavigationState));

  @override
  _NavigationState get _value => super._value as _NavigationState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object points = freezed,
    Object reRouting = freezed,
    Object finished = freezed,
  }) {
    return _then(_NavigationState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      points: points == freezed
          ? _value.points
          : points as Option<List<CoordinatePoint>>,
      reRouting: reRouting == freezed ? _value.reRouting : reRouting as bool,
      finished: finished == freezed ? _value.finished : finished as bool,
    ));
  }
}

/// @nodoc
class _$_NavigationState implements _NavigationState {
  const _$_NavigationState(
      {@required this.isLoading,
      @required this.points,
      @required this.reRouting,
      @required this.finished})
      : assert(isLoading != null),
        assert(points != null),
        assert(reRouting != null),
        assert(finished != null);

  @override
  final bool isLoading;
  @override
  final Option<List<CoordinatePoint>> points;
  @override
  final bool reRouting;
  @override
  final bool finished;

  @override
  String toString() {
    return 'NavigationState(isLoading: $isLoading, points: $points, reRouting: $reRouting, finished: $finished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigationState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.reRouting, reRouting) ||
                const DeepCollectionEquality()
                    .equals(other.reRouting, reRouting)) &&
            (identical(other.finished, finished) ||
                const DeepCollectionEquality()
                    .equals(other.finished, finished)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(reRouting) ^
      const DeepCollectionEquality().hash(finished);

  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {@required bool isLoading,
      @required Option<List<CoordinatePoint>> points,
      @required bool reRouting,
      @required bool finished}) = _$_NavigationState;

  @override
  bool get isLoading;
  @override
  Option<List<CoordinatePoint>> get points;
  @override
  bool get reRouting;
  @override
  bool get finished;
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith;
}
