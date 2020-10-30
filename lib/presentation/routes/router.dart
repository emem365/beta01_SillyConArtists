import 'package:auto_route/auto_route_annotations.dart';
import 'package:raahi/presentation/core/splash.dart';
import 'package:raahi/presentation/home/home.dart';
import 'package:raahi/presentation/navigation/navigation.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: Splash, initial: true),
  CustomRoute(
    page: Home,
    durationInMilliseconds: 1500,
  ),
  CustomRoute(
    page: Navigation,
    durationInMilliseconds: 500,
  )
])
class $Router {}
