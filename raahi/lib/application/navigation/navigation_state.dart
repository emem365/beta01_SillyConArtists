part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    @required bool isLoading,
    @required Option<NavigationInstruction> instructionOption,
    @required bool finished,
  }) = _NavigationState;

  factory NavigationState.initial() => _NavigationState(
        isLoading: true,
        instructionOption: none(),
        finished: false,
      );
}
