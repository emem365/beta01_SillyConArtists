// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'navigation_instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NavigationInstructionTearOff {
  const _$NavigationInstructionTearOff();

// ignore: unused_element
  _NavigationInstruction call(
      {@required String instruction,
      @required InstructionType type,
      @required double distance}) {
    return _NavigationInstruction(
      instruction: instruction,
      type: type,
      distance: distance,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NavigationInstruction = _$NavigationInstructionTearOff();

/// @nodoc
mixin _$NavigationInstruction {
  String get instruction;
  InstructionType get type;
  double get distance;

  $NavigationInstructionCopyWith<NavigationInstruction> get copyWith;
}

/// @nodoc
abstract class $NavigationInstructionCopyWith<$Res> {
  factory $NavigationInstructionCopyWith(NavigationInstruction value,
          $Res Function(NavigationInstruction) then) =
      _$NavigationInstructionCopyWithImpl<$Res>;
  $Res call({String instruction, InstructionType type, double distance});

  $InstructionTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$NavigationInstructionCopyWithImpl<$Res>
    implements $NavigationInstructionCopyWith<$Res> {
  _$NavigationInstructionCopyWithImpl(this._value, this._then);

  final NavigationInstruction _value;
  // ignore: unused_field
  final $Res Function(NavigationInstruction) _then;

  @override
  $Res call({
    Object instruction = freezed,
    Object type = freezed,
    Object distance = freezed,
  }) {
    return _then(_value.copyWith(
      instruction:
          instruction == freezed ? _value.instruction : instruction as String,
      type: type == freezed ? _value.type : type as InstructionType,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }

  @override
  $InstructionTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $InstructionTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$NavigationInstructionCopyWith<$Res>
    implements $NavigationInstructionCopyWith<$Res> {
  factory _$NavigationInstructionCopyWith(_NavigationInstruction value,
          $Res Function(_NavigationInstruction) then) =
      __$NavigationInstructionCopyWithImpl<$Res>;
  @override
  $Res call({String instruction, InstructionType type, double distance});

  @override
  $InstructionTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$NavigationInstructionCopyWithImpl<$Res>
    extends _$NavigationInstructionCopyWithImpl<$Res>
    implements _$NavigationInstructionCopyWith<$Res> {
  __$NavigationInstructionCopyWithImpl(_NavigationInstruction _value,
      $Res Function(_NavigationInstruction) _then)
      : super(_value, (v) => _then(v as _NavigationInstruction));

  @override
  _NavigationInstruction get _value => super._value as _NavigationInstruction;

  @override
  $Res call({
    Object instruction = freezed,
    Object type = freezed,
    Object distance = freezed,
  }) {
    return _then(_NavigationInstruction(
      instruction:
          instruction == freezed ? _value.instruction : instruction as String,
      type: type == freezed ? _value.type : type as InstructionType,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }
}

/// @nodoc
class _$_NavigationInstruction implements _NavigationInstruction {
  const _$_NavigationInstruction(
      {@required this.instruction,
      @required this.type,
      @required this.distance})
      : assert(instruction != null),
        assert(type != null),
        assert(distance != null);

  @override
  final String instruction;
  @override
  final InstructionType type;
  @override
  final double distance;

  @override
  String toString() {
    return 'NavigationInstruction(instruction: $instruction, type: $type, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigationInstruction &&
            (identical(other.instruction, instruction) ||
                const DeepCollectionEquality()
                    .equals(other.instruction, instruction)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(instruction) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(distance);

  @override
  _$NavigationInstructionCopyWith<_NavigationInstruction> get copyWith =>
      __$NavigationInstructionCopyWithImpl<_NavigationInstruction>(
          this, _$identity);
}

abstract class _NavigationInstruction implements NavigationInstruction {
  const factory _NavigationInstruction(
      {@required String instruction,
      @required InstructionType type,
      @required double distance}) = _$_NavigationInstruction;

  @override
  String get instruction;
  @override
  InstructionType get type;
  @override
  double get distance;
  @override
  _$NavigationInstructionCopyWith<_NavigationInstruction> get copyWith;
}
