part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.inputChanged({@required String input}) = _InputChanged;
  const factory SearchEvent.sendQuery() = _SendQuery;
  const factory SearchEvent.queryResultReceived() = _QueryResultReceived;
}
