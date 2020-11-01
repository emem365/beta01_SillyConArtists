import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:raahi/domain/core/value_objects.dart';
import 'package:raahi/domain/navigation/navigation_instruction.dart';
import 'package:raahi/domain/search/query_result_object.dart';
import 'package:raahi/infrastructure/sms/sms_helper.dart';

part 'navigation_event.dart';

part 'navigation_state.dart';

part 'navigation_bloc.freezed.dart';

@LazySingleton()
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  final SmsHelper _smsHelper;

  NavigationBloc(this._smsHelper) : super(NavigationState.initial());

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event,) async* {
    yield* event.map(
      start: (e) async* {
        yield state.copyWith(
          resultObjectOption: some(e.resultObject),
          isLoading: true,
        );
        // TODO: Call next instruction method to get first instruction
        yield state.copyWith(
          isLoading: false,
        ); // TODO: Yield state with instruction
      },
      nextInstruction: (e) async* {
        yield state.copyWith(isLoading: true);
        // TODO: Call next instruction method
        // TODO: Check if the instruction is final and set [finished] bool
        yield state.copyWith(
          isLoading: false,); // TODO: Yield state with next instruction
      },
      stop: (e) async* {
        yield NavigationState.initial();
        yield state.copyWith(stopped: true);
      },
    );
  }
}
