part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @required SearchInput searchInput,
    @required bool showError,
    @required Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption,
  }) = _SearchState;

  factory SearchState.initial() => _SearchState(
        searchInput: SearchInput(''),
        showError: false,
        queryFailureOrSuccessOption: none(),
      );
}
