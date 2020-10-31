part of 'navigation_bloc.dart';

@freezed
abstract class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.start() = _Start;
  const factory NavigationEvent.reRoute() = _ReRoute;
  const factory NavigationEvent.stop() = _Stop;
}
