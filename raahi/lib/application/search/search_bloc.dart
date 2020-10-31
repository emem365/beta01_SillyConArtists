import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:raahi/domain/core/value_objects.dart';
import 'package:raahi/domain/search/query_result_object.dart';
import 'package:raahi/domain/search/value_objects.dart';
import 'package:raahi/domain/search/query_failure.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      inputChanged: (e) async* {
        yield state.copyWith(searchInput: SearchInput(e.input));
      },
      sendQuery: (e) async* {
        // TODO: Implement sending SMS query
        Future.delayed(
          const Duration(milliseconds: 1000),
          () => add(
            const SearchEvent.queryResultReceived(),
          ),
        );
        yield state.copyWith(isLoading: true);
      },
      queryResultReceived: (e) async* {
        // TODO: Call when query sent successfully
        yield state.copyWith(
          isLoading: false,
          resultObjects: some(
            [
              QueryResultObject(
                name: LocationName('This place'),
                distance: 200.0,
              ),
              QueryResultObject(
                name: LocationName('This place'),
                distance: 200.0,
              ),
              QueryResultObject(
                name: LocationName('This place'),
                distance: 200.0,
              ),
            ],
          ),
        ); // This is dummy data replace it with real
      },
    );
  }
}
