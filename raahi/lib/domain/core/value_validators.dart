import 'package:dartz/dartz.dart';
import 'package:raahi/domain/core/value_failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSearchInput(String input) {
  final Either<ValueFailure<String>, String> maxLengthFailureOrString =
      validateMaxStringLength(
    input,
    50,
  );
  final Either<ValueFailure<String>, String> emptyOrString =
      validateStringNotEmpty(input);
  final Either<ValueFailure<String>, String> multilineOrString =
      validateSingleLine(input);
  if (maxLengthFailureOrString.isLeft()) {
    return left(ValueFailure.exceedingLength(
        failedValue: input, max: 50));
  }
  if (emptyOrString.isLeft()) {
    return left(ValueFailure.empty(failedValue: input));
  }
  if (multilineOrString.isLeft()) {
    return left(ValueFailure.multiline(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateLocationName(String input) {
  Either<ValueFailure<String>, String> emptyOrString =
      validateStringNotEmpty(input);
  if (emptyOrString.isLeft()) {
    return left(ValueFailure.empty(failedValue: input));
  }
  return right(input);
}
