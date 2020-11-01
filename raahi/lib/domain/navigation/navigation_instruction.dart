import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raahi/domain/navigation/instruction_type.dart';

part 'navigation_instruction.freezed.dart';

@freezed
abstract class NavigationInstruction with _$NavigationInstruction {
  const factory NavigationInstruction({
    @required String instruction,
    @required InstructionType type,
    @required double distance,
  }) = _NavigationInstruction;
}
