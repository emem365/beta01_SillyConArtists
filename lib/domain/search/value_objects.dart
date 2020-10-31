import 'package:dartz/dartz.dart';
import 'package:raahi/domain/core/value_failures.dart';
import 'package:raahi/domain/core/value_objects.dart';
import 'package:raahi/domain/core/value_validators.dart';

class SearchInput extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SearchInput(String input) {
    assert(input != null);
    return SearchInput._(
      validateSearchInput(input),
    );
  }

  const SearchInput._(this.value);
}