import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:meta/meta.dart';
import 'package:raahi/domain/core/value_objects.dart';
import 'package:raahi/domain/search/query_result_object.dart';
import 'package:raahi/domain/search/value_objects.dart';
import 'package:raahi/domain/search/query_failure.dart';

import '../../infrastructure/sms/sms_helper.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

@LazySingleton()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SmsHelper _smsHelper;
  SearchBloc(this._smsHelper) : super(SearchState.initial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    StreamSubscription<bool> msgDelivered;
    StreamSubscription<String> msgReceived;
    bool isSent = false;
    yield* event.map(
      inputChanged: (e) async* {
        yield state.copyWith(searchInput: SearchInput(e.input));
      },
      sendQuery: (e) async* {
        // TODO: Implement sending SMS query
        yield state.copyWith(isLoading: true);
        _smsHelper.sendSms(
            'R0${state.searchInput.getOrCrash()};${e.locationData.latitude};${e.locationData.longitude}');
        _smsHelper.isMssgDelivered();
        msgDelivered = _smsHelper.isSmsDeliveredStream.listen((event) {
          debugPrint('Location Delivered: $event');
          isSent = true;
        }, onError: (e) {
          debugPrint('Some Error occurred $e');
        });
      },
      queryResultReceived: (e) async* {
        msgReceived = _smsHelper.receivedMsgStream.listen((event) {});
        // TODO: Call when query sent successfully
        if (isSent) {
          yield state.copyWith(
            isLoading: false,
            resultObjects: some(
              [
                QueryResultObject(
                  name: LocationName('This place'),
                  cityName: 'drkj',
                )
              ],
            ),
          );
        }
        // This is dummy data replace it with real
      },
      startNavigation: (value) async* {},
    );
  }
}
