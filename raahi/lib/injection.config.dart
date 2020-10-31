// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure/location/my_location.dart';
import 'application/navigation/my_location/my_location_bloc.dart';
import 'application/navigation/navigation_bloc.dart';
import 'application/search/search_bloc.dart';
import 'infrastructure/sms/sms_helper.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<MyLocation>(() => MyLocation());
<<<<<<< HEAD
  gh.lazySingleton<NavigationBloc>(() => NavigationBloc());
  gh.lazySingleton<SmsHelper>(() => SmsHelper());
  gh.lazySingleton<SearchBloc>(() => SearchBloc(get<SmsHelper>()));
=======


  gh.lazySingleton<NavigationBloc>(() => NavigationBloc());
  gh.factory<SearchBloc>(() => SearchBloc());
>>>>>>> 8db4e7d189a341d3839c34bf479b3e05ff27d972

  // Eager singletons must be registered in the right order
  gh.singleton<MyLocationBloc>(MyLocationBloc(get<MyLocation>()));
  return get;
}
