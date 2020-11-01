part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    @required bool isLoading,
    @required Option<QueryResultObject> resultObjectOption,
    @required Option<NavigationInstruction> instructionOption,
    @required bool finished,
    @required bool stopped,
  }) = _NavigationState;

  factory NavigationState.initial() => _NavigationState(
        isLoading: true,
        resultObjectOption: none(),
        instructionOption: none(),
        finished: false,
        stopped: false,
      );
}
