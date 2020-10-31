// Ensure that the build script itself is not opted in to null safety,
// instead of taking the language version from the current package.
//
// @dart=2.9
//
// ignore_for_file: directives_ordering

import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:auto_route_generator/builder.dart' as _i2;
import 'package:freezed/builder.dart' as _i3;
import 'package:injectable_generator/builder.dart' as _i4;
import 'package:source_gen/builder.dart' as _i5;
import 'package:build_config/build_config.dart' as _i6;
import 'dart:isolate' as _i7;
import 'package:build_runner/build_runner.dart' as _i8;
import 'dart:io' as _i9;

final _builders = <_i1.BuilderApplication>[
  _i1.apply('auto_route_generator:autoRouteGenerator', [_i2.autoRouteGenerator],
      _i1.toDependentsOf('auto_route_generator'),
      hideOutput: false),
  _i1.apply('freezed:freezed', [_i3.freezed], _i1.toDependentsOf('freezed'),
      hideOutput: false),
  _i1.apply('injectable_generator:injectable_builder', [_i4.injectableBuilder],
      _i1.toDependentsOf('injectable_generator'),
      hideOutput: true),
  _i1.apply('injectable_generator:injectable_config_builder',
      [_i4.injectableConfigBuilder], _i1.toDependentsOf('injectable_generator'),
      hideOutput: false),
  _i1.apply('source_gen:combining_builder', [_i5.combiningBuilder],
      _i1.toNoneByDefault(),
      hideOutput: false, appliesBuilders: ['source_gen:part_cleanup']),
  _i1.applyPostProcess('source_gen:part_cleanup', _i5.partCleanup,
      defaultGenerateFor: const _i6.InputSet())
];
void main(List<String> args, [_i7.SendPort sendPort]) async {
  var result = await _i8.run(args, _builders);
  sendPort?.send(result);
  _i9.exitCode = result;
}
