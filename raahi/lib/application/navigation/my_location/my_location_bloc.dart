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
  final MyLocation _myLocation;

  MyLocationBloc(this._myLocation) : super(MyLocationState.initial());

  StreamSubscription _locationDataStreamSubscription;

  @override
  Stream<MyLocationState> mapEventToState(
    MyLocationEvent event,
  ) async* {
    yield* event.map(
      getPermission: (e) async* {
        final Either<PermissionFailure, Unit> permissionFailureOrSuccess =
            await _myLocation.getPermission();
        yield state.copyWith(
            permissionFailureOrSuccessOption: some(permissionFailureOrSuccess));
      },
      getStatus: (e) async* {
        final Either<StatusFailure, Unit> statusFailureOrSuccess =
            await _myLocation.getServiceStatus();
        yield state.copyWith(
            statusFailureOrSuccessOption: some(statusFailureOrSuccess));
      },
      listenToLocation: (e) async* {
        await _myLocation.startListening();
        _locationDataStreamSubscription = _myLocation.locationStream.listen((locationData) {
          add(MyLocationEvent.locationUpdated(locationData: locationData));
        });
      },
      locationUpdated: (e) async* {
        yield state.copyWith(locationDataOption: some(e.locationData));
      },
      stopListening: (e) async* {
        _locationDataStreamSubscription?.cancel();
      }
    );
  }
}
