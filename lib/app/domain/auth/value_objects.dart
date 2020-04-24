import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value);

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }
}
