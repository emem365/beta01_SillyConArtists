part of 'navigation_bloc.dart';

@freezed
abstract class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.start({@required QueryResultObject resultObject}) = _Start;
  const factory NavigationEvent.nextInstruction() = _NextInstruction;
  const factory NavigationEvent.stop() = _Stop;
}
