import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  }
  return left(
    ValueFailure.invalidEmailAddress(failedValue: input),
  );
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length > 5) {
    return right(input);
  }
  return left(
    ValueFailure.shortPassword(failedValue: input),
  );
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.isNotEmpty) {
    return right(input);
  }
  return left(
    ValueFailure.invalidUsername(),
  );
}
