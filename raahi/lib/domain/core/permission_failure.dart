import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_failure.freezed.dart';

@freezed
abstract class PermissionFailure with _$PermissionFailure {
  const factory PermissionFailure.denied() = _Denied;
  const factory PermissionFailure.deniedForever() = _DeniedForever;
  const factory PermissionFailure.unknown() = _Unknown;
}