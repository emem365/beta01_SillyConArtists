// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

// ignore: unused_element
  _InputChanged inputChanged({@required String input}) {
    return _InputChanged(
      input: input,
    );
  }

// ignore: unused_element
  _SendQuery sendQuery() {
    return const _SendQuery();
  }

// ignore: unused_element
  _QuerySent querySent() {
    return const _QuerySent();
  }
}

/// @nodoc
// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inputChanged(String input),
    @required Result sendQuery(),
    @required Result querySent(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String input),
    Result sendQuery(),
    Result querySent(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(_InputChanged value),
    @required Result sendQuery(_SendQuery value),
    @required Result querySent(_QuerySent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(_InputChanged value),
    Result sendQuery(_SendQuery value),
    Result querySent(_QuerySent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$InputChangedCopyWith<$Res> {
  factory _$InputChangedCopyWith(
          _InputChanged value, $Res Function(_InputChanged) then) =
      __$InputChangedCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$InputChangedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$InputChangedCopyWith<$Res> {
  __$InputChangedCopyWithImpl(
      _InputChanged _value, $Res Function(_InputChanged) _then)
      : super(_value, (v) => _then(v as _InputChanged));

  @override
  _InputChanged get _value => super._value as _InputChanged;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_InputChanged(
      input: input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_InputChanged implements _InputChanged {
  const _$_InputChanged({@required this.input}) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'SearchEvent.inputChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InputChanged &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @override
  _$InputChangedCopyWith<_InputChanged> get copyWith =>
      __$InputChangedCopyWithImpl<_InputChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inputChanged(String input),
    @required Result sendQuery(),
    @required Result querySent(),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(querySent != null);
    return inputChanged(input);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String input),
    Result sendQuery(),
    Result querySent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inputChanged != null) {
      return inputChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(_InputChanged value),
    @required Result sendQuery(_SendQuery value),
    @required Result querySent(_QuerySent value),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(querySent != null);
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(_InputChanged value),
    Result sendQuery(_SendQuery value),
    Result querySent(_QuerySent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inputChanged != null) {
      return inputChanged(this);
    }
    return orElse();
  }
}

abstract class _InputChanged implements SearchEvent {
  const factory _InputChanged({@required String input}) = _$_InputChanged;

  String get input;
  _$InputChangedCopyWith<_InputChanged> get copyWith;
}

/// @nodoc
abstract class _$SendQueryCopyWith<$Res> {
  factory _$SendQueryCopyWith(
          _SendQuery value, $Res Function(_SendQuery) then) =
      __$SendQueryCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendQueryCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$SendQueryCopyWith<$Res> {
  __$SendQueryCopyWithImpl(_SendQuery _value, $Res Function(_SendQuery) _then)
      : super(_value, (v) => _then(v as _SendQuery));

  @override
  _SendQuery get _value => super._value as _SendQuery;
}

/// @nodoc
class _$_SendQuery implements _SendQuery {
  const _$_SendQuery();

  @override
  String toString() {
    return 'SearchEvent.sendQuery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SendQuery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inputChanged(String input),
    @required Result sendQuery(),
    @required Result querySent(),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(querySent != null);
    return sendQuery();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String input),
    Result sendQuery(),
    Result querySent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendQuery != null) {
      return sendQuery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(_InputChanged value),
    @required Result sendQuery(_SendQuery value),
    @required Result querySent(_QuerySent value),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(querySent != null);
    return sendQuery(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(_InputChanged value),
    Result sendQuery(_SendQuery value),
    Result querySent(_QuerySent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendQuery != null) {
      return sendQuery(this);
    }
    return orElse();
  }
}

abstract class _SendQuery implements SearchEvent {
  const factory _SendQuery() = _$_SendQuery;
}

/// @nodoc
abstract class _$QuerySentCopyWith<$Res> {
  factory _$QuerySentCopyWith(
          _QuerySent value, $Res Function(_QuerySent) then) =
      __$QuerySentCopyWithImpl<$Res>;
}

/// @nodoc
class __$QuerySentCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$QuerySentCopyWith<$Res> {
  __$QuerySentCopyWithImpl(_QuerySent _value, $Res Function(_QuerySent) _then)
      : super(_value, (v) => _then(v as _QuerySent));

  @override
  _QuerySent get _value => super._value as _QuerySent;
}

/// @nodoc
class _$_QuerySent implements _QuerySent {
  const _$_QuerySent();

  @override
  String toString() {
    return 'SearchEvent.querySent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _QuerySent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inputChanged(String input),
    @required Result sendQuery(),
    @required Result querySent(),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(querySent != null);
    return querySent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String input),
    Result sendQuery(),
    Result querySent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (querySent != null) {
      return querySent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(_InputChanged value),
    @required Result sendQuery(_SendQuery value),
    @required Result querySent(_QuerySent value),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(querySent != null);
    return querySent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(_InputChanged value),
    Result sendQuery(_SendQuery value),
    Result querySent(_QuerySent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (querySent != null) {
      return querySent(this);
    }
    return orElse();
  }
}

abstract class _QuerySent implements SearchEvent {
  const factory _QuerySent() = _$_QuerySent;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchState call(
      {@required
          SearchInput searchInput,
      @required
          bool showError,
      @required
          Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption}) {
    return _SearchState(
      searchInput: searchInput,
      showError: showError,
      queryFailureOrSuccessOption: queryFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  SearchInput get searchInput;
  bool get showError;
  Option<Either<QueryFailure, Unit>> get queryFailureOrSuccessOption;

  $SearchStateCopyWith<SearchState> get copyWith;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {SearchInput searchInput,
      bool showError,
      Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object searchInput = freezed,
    Object showError = freezed,
    Object queryFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      searchInput: searchInput == freezed
          ? _value.searchInput
          : searchInput as SearchInput,
      showError: showError == freezed ? _value.showError : showError as bool,
      queryFailureOrSuccessOption: queryFailureOrSuccessOption == freezed
          ? _value.queryFailureOrSuccessOption
          : queryFailureOrSuccessOption as Option<Either<QueryFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchInput searchInput,
      bool showError,
      Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object searchInput = freezed,
    Object showError = freezed,
    Object queryFailureOrSuccessOption = freezed,
  }) {
    return _then(_SearchState(
      searchInput: searchInput == freezed
          ? _value.searchInput
          : searchInput as SearchInput,
      showError: showError == freezed ? _value.showError : showError as bool,
      queryFailureOrSuccessOption: queryFailureOrSuccessOption == freezed
          ? _value.queryFailureOrSuccessOption
          : queryFailureOrSuccessOption as Option<Either<QueryFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {@required this.searchInput,
      @required this.showError,
      @required this.queryFailureOrSuccessOption})
      : assert(searchInput != null),
        assert(showError != null),
        assert(queryFailureOrSuccessOption != null);

  @override
  final SearchInput searchInput;
  @override
  final bool showError;
  @override
  final Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption;

  @override
  String toString() {
    return 'SearchState(searchInput: $searchInput, showError: $showError, queryFailureOrSuccessOption: $queryFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.searchInput, searchInput) ||
                const DeepCollectionEquality()
                    .equals(other.searchInput, searchInput)) &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)) &&
            (identical(other.queryFailureOrSuccessOption,
                    queryFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.queryFailureOrSuccessOption,
                    queryFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchInput) ^
      const DeepCollectionEquality().hash(showError) ^
      const DeepCollectionEquality().hash(queryFailureOrSuccessOption);

  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
          {@required
              SearchInput searchInput,
          @required
              bool showError,
          @required
              Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption}) =
      _$_SearchState;

  @override
  SearchInput get searchInput;
  @override
  bool get showError;
  @override
  Option<Either<QueryFailure, Unit>> get queryFailureOrSuccessOption;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
