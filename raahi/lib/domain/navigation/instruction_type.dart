import 'package:freezed_annotation/freezed_annotation.dart';

part 'instruction_type.freezed.dart';

@freezed
abstract class InstructionType with _$InstructionType {
  const factory InstructionType.left() = _Left;
  const factory InstructionType.right() = _Right;
  const factory InstructionType.sharpLeft() = _SharpLeft;
  const factory InstructionType.sharpRight() = _SharpRight;
  const factory InstructionType.slightLeft() = _SlightLeft;
  const factory InstructionType.slightRight() = _SlightRight;
  const factory InstructionType.straight() = _Straight;
  const factory InstructionType.enterRoundabout() = _EnterRoundabout;
  const factory InstructionType.exitRoundabout() = _ExitRoundabout;
  const factory InstructionType.uTurn() = _UTurn;
  const factory InstructionType.goal() = _Goal;
  const factory InstructionType.depart() = _Depart;
  const factory InstructionType.keepLeft() = _KeepLeft;
  const factory InstructionType.keepRight() = _KeepRight;
}