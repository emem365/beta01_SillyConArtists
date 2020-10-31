import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raahi/domain/core/value_objects.dart';

part 'query_result_object.freezed.dart';

@freezed
abstract class QueryResultObject with _$QueryResultObject {
  const factory QueryResultObject(
      {@required LocationName name,
      @required double distance}) = _QueryResultObject;
}
