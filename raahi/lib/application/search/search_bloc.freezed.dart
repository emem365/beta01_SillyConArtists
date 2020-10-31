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
  _SendQuery sendQuery({@required LocationData locationData}) {
    return _SendQuery(
      locationData: locationData,
    );
  }

// ignore: unused_element
  _QueryResultReceived queryResultReceived() {
    return const _QueryResultReceived();
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
    @required Result sendQuery(LocationData locationData),
    @required Result queryResultReceived(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String input),
    Result sendQuery(LocationData locationData),
    Result queryResultReceived(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(_InputChanged value),
    @required Result sendQuery(_SendQuery value),
    @required Result queryResultReceived(_QueryResultReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(_InputChanged value),
    Result sendQuery(_SendQuery value),
    Result queryResultReceived(_QueryResultReceived value),
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
    @required Result sendQuery(LocationData locationData),
    @required Result queryResultReceived(),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(queryResultReceived != null);
    return inputChanged(input);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String input),
    Result sendQuery(LocationData locationData),
    Result queryResultReceived(),
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
    @required Result queryResultReceived(_QueryResultReceived value),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(queryResultReceived != null);
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(_InputChanged value),
    Result sendQuery(_SendQuery value),
    Result queryResultReceived(_QueryResultReceived value),
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
  $Res call({LocationData locationData});
}

/// @nodoc
class __$SendQueryCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$SendQueryCopyWith<$Res> {
  __$SendQueryCopyWithImpl(_SendQuery _value, $Res Function(_SendQuery) _then)
      : super(_value, (v) => _then(v as _SendQuery));

  @override
  _SendQuery get _value => super._value as _SendQuery;

  @override
  $Res call({
    Object locationData = freezed,
  }) {
    return _then(_SendQuery(
      locationData: locationData == freezed
          ? _value.locationData
          : locationData as LocationData,
    ));
  }
}

/// @nodoc
class _$_SendQuery implements _SendQuery {
  const _$_SendQuery({@required this.locationData})
      : assert(locationData != null);

  @override
  final LocationData locationData;

  @override
  String toString() {
    return 'SearchEvent.sendQuery(locationData: $locationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendQuery &&
            (identical(other.locationData, locationData) ||
                const DeepCollectionEquality()
                    .equals(other.locationData, locationData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationData);

  @override
  _$SendQueryCopyWith<_SendQuery> get copyWith =>
      __$SendQueryCopyWithImpl<_SendQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inputChanged(String input),
    @required Result sendQuery(LocationData locationData),
    @required Result queryResultReceived(),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(queryResultReceived != null);
    return sendQuery(locationData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String input),
    Result sendQuery(LocationData locationData),
    Result queryResultReceived(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendQuery != null) {
      return sendQuery(locationData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(_InputChanged value),
    @required Result sendQuery(_SendQuery value),
    @required Result queryResultReceived(_QueryResultReceived value),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(queryResultReceived != null);
    return sendQuery(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(_InputChanged value),
    Result sendQuery(_SendQuery value),
    Result queryResultReceived(_QueryResultReceived value),
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
  const factory _SendQuery({@required LocationData locationData}) =
      _$_SendQuery;

  LocationData get locationData;
  _$SendQueryCopyWith<_SendQuery> get copyWith;
}

/// @nodoc
abstract class _$QueryResultReceivedCopyWith<$Res> {
  factory _$QueryResultReceivedCopyWith(_QueryResultReceived value,
          $Res Function(_QueryResultReceived) then) =
      __$QueryResultReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class __$QueryResultReceivedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$QueryResultReceivedCopyWith<$Res> {
  __$QueryResultReceivedCopyWithImpl(
      _QueryResultReceived _value, $Res Function(_QueryResultReceived) _then)
      : super(_value, (v) => _then(v as _QueryResultReceived));

  @override
  _QueryResultReceived get _value => super._value as _QueryResultReceived;
}

/// @nodoc
class _$_QueryResultReceived implements _QueryResultReceived {
  const _$_QueryResultReceived();

  @override
  String toString() {
    return 'SearchEvent.queryResultReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _QueryResultReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inputChanged(String input),
    @required Result sendQuery(LocationData locationData),
    @required Result queryResultReceived(),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(queryResultReceived != null);
    return queryResultReceived();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inputChanged(String input),
    Result sendQuery(LocationData locationData),
    Result queryResultReceived(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (queryResultReceived != null) {
      return queryResultReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inputChanged(_InputChanged value),
    @required Result sendQuery(_SendQuery value),
    @required Result queryResultReceived(_QueryResultReceived value),
  }) {
    assert(inputChanged != null);
    assert(sendQuery != null);
    assert(queryResultReceived != null);
    return queryResultReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inputChanged(_InputChanged value),
    Result sendQuery(_SendQuery value),
    Result queryResultReceived(_QueryResultReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (queryResultReceived != null) {
      return queryResultReceived(this);
    }
    return orElse();
  }
}

abstract class _QueryResultReceived implements SearchEvent {
  const factory _QueryResultReceived() = _$_QueryResultReceived;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _SearchState call(
      {@required SearchInput searchInput,
      @required bool isLoading,
      @required Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption,
      @required Option<List<QueryResultObject>> resultObjects}) {
    return _SearchState(
      searchInput: searchInput,
      isLoading: isLoading,
      queryFailureOrSuccessOption: queryFailureOrSuccessOption,
      resultObjects: resultObjects,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  SearchInput get searchInput;
  bool get isLoading;
  Option<Either<QueryFailure, Unit>> get queryFailureOrSuccessOption;
  Option<List<QueryResultObject>> get resultObjects;

  $SearchStateCopyWith<SearchState> get copyWith;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {SearchInput searchInput,
      bool isLoading,
      Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption,
      Option<List<QueryResultObject>> resultObjects});
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
    Object isLoading = freezed,
    Object queryFailureOrSuccessOption = freezed,
    Object resultObjects = freezed,
  }) {
    return _then(_value.copyWith(
      searchInput: searchInput == freezed
          ? _value.searchInput
          : searchInput as SearchInput,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      queryFailureOrSuccessOption: queryFailureOrSuccessOption == freezed
          ? _value.queryFailureOrSuccessOption
          : queryFailureOrSuccessOption as Option<Either<QueryFailure, Unit>>,
      resultObjects: resultObjects == freezed
          ? _value.resultObjects
          : resultObjects as Option<List<QueryResultObject>>,
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
      bool isLoading,
      Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption,
      Option<List<QueryResultObject>> resultObjects});
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
    Object isLoading = freezed,
    Object queryFailureOrSuccessOption = freezed,
    Object resultObjects = freezed,
  }) {
    return _then(_SearchState(
      searchInput: searchInput == freezed
          ? _value.searchInput
          : searchInput as SearchInput,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      queryFailureOrSuccessOption: queryFailureOrSuccessOption == freezed
          ? _value.queryFailureOrSuccessOption
          : queryFailureOrSuccessOption as Option<Either<QueryFailure, Unit>>,
      resultObjects: resultObjects == freezed
          ? _value.resultObjects
          : resultObjects as Option<List<QueryResultObject>>,
    ));
  }
}

/// @nodoc
class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {@required this.searchInput,
      @required this.isLoading,
      @required this.queryFailureOrSuccessOption,
      @required this.resultObjects})
      : assert(searchInput != null),
        assert(isLoading != null),
        assert(queryFailureOrSuccessOption != null),
        assert(resultObjects != null);

  @override
  final SearchInput searchInput;
  @override
  final bool isLoading;
  @override
  final Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption;
  @override
  final Option<List<QueryResultObject>> resultObjects;

  @override
  String toString() {
    return 'SearchState(searchInput: $searchInput, isLoading: $isLoading, queryFailureOrSuccessOption: $queryFailureOrSuccessOption, resultObjects: $resultObjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.searchInput, searchInput) ||
                const DeepCollectionEquality()
                    .equals(other.searchInput, searchInput)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.queryFailureOrSuccessOption,
                    queryFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.queryFailureOrSuccessOption,
                    queryFailureOrSuccessOption)) &&
            (identical(other.resultObjects, resultObjects) ||
                const DeepCollectionEquality()
                    .equals(other.resultObjects, resultObjects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchInput) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(queryFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(resultObjects);

  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {@required
          SearchInput searchInput,
      @required
          bool isLoading,
      @required
          Option<Either<QueryFailure, Unit>> queryFailureOrSuccessOption,
      @required
          Option<List<QueryResultObject>> resultObjects}) = _$_SearchState;

  @override
  SearchInput get searchInput;
  @override
  bool get isLoading;
  @override
  Option<Either<QueryFailure, Unit>> get queryFailureOrSuccessOption;
  @override
  Option<List<QueryResultObject>> get resultObjects;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
