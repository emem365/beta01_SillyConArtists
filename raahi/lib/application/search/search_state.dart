part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @required SearchInput searchInput,
    @required bool isLoading,
    @required Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption,
    @required Option<List<QueryResultObject>> resultObjects,
  }) = _SearchState;

  factory SearchState.initial() => _SearchState(
        searchInput: SearchInput(''),
        isLoading: false,
        queryFailureOrSuccessOption: none(),
        resultObjects: none(),
      );
}
