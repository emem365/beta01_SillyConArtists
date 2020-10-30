// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/splash.dart';
import '../home/home.dart';
import '../navigation/navigation.dart';

class Routes {
  static const String splash = '/';
  static const String home = '/Home';
  static const String navigation = '/Navigation';
  static const all = <String>{
    splash,
    home,
    navigation,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splash, page: Splash),
    RouteDef(Routes.home, page: Home),
    RouteDef(Routes.navigation, page: Navigation),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    Splash: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Splash(),
        settings: data,
      );
    },
    Home: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Home(),
        settings: data,
        transitionDuration: const Duration(milliseconds: 1500),
      );
    },
    Navigation: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => Navigation(),
        settings: data,
        transitionDuration: const Duration(milliseconds: 500),
      );
    },
  };
}
