// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmailAddress<T> invalidEmailAddress<T>(
      {@required String failedValue}) {
    return InvalidEmailAddress<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({@required String failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidUsername<T> invalidUsername<T>() {
    return InvalidUsername<T>();
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidUsername(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidUsername(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmailAddress<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmailAddress<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class $InvalidEmailAddressCopyWith<T, $Res> {
  factory $InvalidEmailAddressCopyWith(InvalidEmailAddress<T> value,
          $Res Function(InvalidEmailAddress<T>) then) =
      _$InvalidEmailAddressCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class _$InvalidEmailAddressCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailAddressCopyWith<T, $Res> {
  _$InvalidEmailAddressCopyWithImpl(InvalidEmailAddress<T> _value,
      $Res Function(InvalidEmailAddress<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmailAddress<T>));

  @override
  InvalidEmailAddress<T> get _value => super._value as InvalidEmailAddress<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmailAddress<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidEmailAddress<T> implements InvalidEmailAddress<T> {
  const _$InvalidEmailAddress({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmailAddress(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAddress<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailAddressCopyWith<T, InvalidEmailAddress<T>> get copyWith =>
      _$InvalidEmailAddressCopyWithImpl<T, InvalidEmailAddress<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidUsername(),
  }) {
    assert(invalidEmailAddress != null);
    assert(shortPassword != null);
    assert(invalidUsername != null);
    return invalidEmailAddress(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidUsername(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAddress != null) {
      return invalidEmailAddress(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmailAddress<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(shortPassword != null);
    assert(invalidUsername != null);
    return invalidEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmailAddress<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAddress != null) {
      return invalidEmailAddress(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAddress<T> implements ValueFailure<T> {
  const factory InvalidEmailAddress({@required String failedValue}) =
      _$InvalidEmailAddress<T>;

  String get failedValue;
  $InvalidEmailAddressCopyWith<T, InvalidEmailAddress<T>> get copyWith;
}

abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidUsername(),
  }) {
    assert(invalidEmailAddress != null);
    assert(shortPassword != null);
    assert(invalidUsername != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidUsername(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmailAddress<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(shortPassword != null);
    assert(invalidUsername != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmailAddress<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required String failedValue}) =
      _$ShortPassword<T>;

  String get failedValue;
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

abstract class $InvalidUsernameCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
}

class _$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername<T> _value, $Res Function(InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsername<T>));

  @override
  InvalidUsername<T> get _value => super._value as InvalidUsername<T>;
}

class _$InvalidUsername<T> implements InvalidUsername<T> {
  const _$InvalidUsername();

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUsername()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidUsername<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidUsername(),
  }) {
    assert(invalidEmailAddress != null);
    assert(shortPassword != null);
    assert(invalidUsername != null);
    return invalidUsername();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidUsername(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmailAddress<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(shortPassword != null);
    assert(invalidUsername != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmailAddress<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername<T> implements ValueFailure<T> {
  const factory InvalidUsername() = _$InvalidUsername<T>;
}
