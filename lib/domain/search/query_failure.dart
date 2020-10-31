import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_failure.freezed.dart';

@freezed
abstract class QueryFailure with _$QueryFailure {
  const factory QueryFailure.timedOut() = _TimedOut;
  const factory QueryFailure.unexpected() = _Unexpected;
}