import 'package:auto_route/auto_route_annotations.dart';
import 'package:raahi/presentation/core/error_occurred.dart';
import 'package:raahi/presentation/core/splash.dart';
import 'package:raahi/presentation/home/home.dart';
import 'package:raahi/presentation/navigation/navigation.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: Splash, initial: true),
  CustomRoute(
    page: Home,
    durationInMilliseconds: 500,
  ),
  CustomRoute(
    page: ErrorOccurred,
    durationInMilliseconds: 500,
  ),
  CustomRoute(
    page: Navigation,
    durationInMilliseconds: 500,
  )
])
class $Router {}
