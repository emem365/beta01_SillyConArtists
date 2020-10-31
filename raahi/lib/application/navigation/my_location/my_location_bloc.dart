import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:raahi/domain/core/permission_failure.dart';
import 'package:raahi/domain/navigation/status_failure.dart';
import 'package:raahi/infrastructure/location/my_location.dart';

part 'my_location_event.dart';

part 'my_location_state.dart';

part 'my_location_bloc.freezed.dart';

@Singleton()
class MyLocationBloc extends Bloc<MyLocationEvent, MyLocationState> {
  MyLocation _myLocation;

  MyLocationBloc(this._myLocation) : super(MyLocationState.initial());

  @override
  Stream<MyLocationState> mapEventToState(
    MyLocationEvent event,
  ) async* {
    yield* event.map(
      getPermission: (e) async* {},
      getStatus: (e) async* {},
      locationUpdated: (e) async* {},
    );
  }
}
