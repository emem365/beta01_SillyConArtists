part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    @required bool isLoading,
    @required Option<List<CoordinatePoint>> points,
    @required bool reRouting,
    @required bool finished,
  }) = _NavigationState;

  factory NavigationState.initial() => _NavigationState(
        isLoading: true,
        points: none(),
        reRouting: false,
        finished: false,
      );
}
