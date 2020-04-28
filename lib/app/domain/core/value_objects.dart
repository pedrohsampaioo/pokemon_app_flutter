import 'package:dartz/dartz.dart';

import 'errors.dart';
import 'failures.dart';

abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;

  const ValueObject();

  bool isValid() => value.isRight();

  T getOrCrash() {
    return value.fold(
      (f) => throw UnexpectedValueError(f),
      id,
    );
  }

  @override
  String toString() => 'Value Object(value: $value)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
