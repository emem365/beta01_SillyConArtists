import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinate_point.freezed.dart';

@freezed
abstract class CoordinatePoint with _$CoordinatePoint {
  const factory CoordinatePoint({@required double latitude, @required double longitude}) = _CoordinatePoint;
}
