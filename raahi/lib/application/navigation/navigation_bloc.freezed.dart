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
  _NextInstruction nextInstruction() {
    return const _NextInstruction();
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
    @required Result nextInstruction(),
    @required Result stop(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result nextInstruction(),
    Result stop(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result nextInstruction(_NextInstruction value),
    @required Result stop(_Stop value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result nextInstruction(_NextInstruction value),
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
    @required Result nextInstruction(),
    @required Result stop(),
  }) {
    assert(start != null);
    assert(nextInstruction != null);
    assert(stop != null);
    return start();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result nextInstruction(),
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
    @required Result nextInstruction(_NextInstruction value),
    @required Result stop(_Stop value),
  }) {
    assert(start != null);
    assert(nextInstruction != null);
    assert(stop != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result nextInstruction(_NextInstruction value),
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
abstract class _$NextInstructionCopyWith<$Res> {
  factory _$NextInstructionCopyWith(
          _NextInstruction value, $Res Function(_NextInstruction) then) =
      __$NextInstructionCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextInstructionCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$NextInstructionCopyWith<$Res> {
  __$NextInstructionCopyWithImpl(
      _NextInstruction _value, $Res Function(_NextInstruction) _then)
      : super(_value, (v) => _then(v as _NextInstruction));

  @override
  _NextInstruction get _value => super._value as _NextInstruction;
}

/// @nodoc
class _$_NextInstruction implements _NextInstruction {
  const _$_NextInstruction();

  @override
  String toString() {
    return 'NavigationEvent.nextInstruction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextInstruction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result nextInstruction(),
    @required Result stop(),
  }) {
    assert(start != null);
    assert(nextInstruction != null);
    assert(stop != null);
    return nextInstruction();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result nextInstruction(),
    Result stop(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nextInstruction != null) {
      return nextInstruction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result nextInstruction(_NextInstruction value),
    @required Result stop(_Stop value),
  }) {
    assert(start != null);
    assert(nextInstruction != null);
    assert(stop != null);
    return nextInstruction(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result nextInstruction(_NextInstruction value),
    Result stop(_Stop value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nextInstruction != null) {
      return nextInstruction(this);
    }
    return orElse();
  }
}

abstract class _NextInstruction implements NavigationEvent {
  const factory _NextInstruction() = _$_NextInstruction;
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
    @required Result nextInstruction(),
    @required Result stop(),
  }) {
    assert(start != null);
    assert(nextInstruction != null);
    assert(stop != null);
    return stop();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result nextInstruction(),
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
    @required Result nextInstruction(_NextInstruction value),
    @required Result stop(_Stop value),
  }) {
    assert(start != null);
    assert(nextInstruction != null);
    assert(stop != null);
    return stop(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result nextInstruction(_NextInstruction value),
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
      @required Option<NavigationInstruction> instructionOption,
      @required bool finished}) {
    return _NavigationState(
      isLoading: isLoading,
      instructionOption: instructionOption,
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
  Option<NavigationInstruction> get instructionOption;
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
      Option<NavigationInstruction> instructionOption,
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
    Object instructionOption = freezed,
    Object finished = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      instructionOption: instructionOption == freezed
          ? _value.instructionOption
          : instructionOption as Option<NavigationInstruction>,
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
      Option<NavigationInstruction> instructionOption,
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
    Object instructionOption = freezed,
    Object finished = freezed,
  }) {
    return _then(_NavigationState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      instructionOption: instructionOption == freezed
          ? _value.instructionOption
          : instructionOption as Option<NavigationInstruction>,
      finished: finished == freezed ? _value.finished : finished as bool,
    ));
  }
}

/// @nodoc
class _$_NavigationState implements _NavigationState {
  const _$_NavigationState(
      {@required this.isLoading,
      @required this.instructionOption,
      @required this.finished})
      : assert(isLoading != null),
        assert(instructionOption != null),
        assert(finished != null);

  @override
  final bool isLoading;
  @override
  final Option<NavigationInstruction> instructionOption;
  @override
  final bool finished;

  @override
  String toString() {
    return 'NavigationState(isLoading: $isLoading, instructionOption: $instructionOption, finished: $finished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigationState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.instructionOption, instructionOption) ||
                const DeepCollectionEquality()
                    .equals(other.instructionOption, instructionOption)) &&
            (identical(other.finished, finished) ||
                const DeepCollectionEquality()
                    .equals(other.finished, finished)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(instructionOption) ^
      const DeepCollectionEquality().hash(finished);

  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {@required bool isLoading,
      @required Option<NavigationInstruction> instructionOption,
      @required bool finished}) = _$_NavigationState;

  @override
  bool get isLoading;
  @override
  Option<NavigationInstruction> get instructionOption;
  @override
  bool get finished;
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith;
}
