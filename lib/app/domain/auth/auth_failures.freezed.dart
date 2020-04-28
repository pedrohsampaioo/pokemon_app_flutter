// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  ServerError serverError() {
    return const ServerError();
  }

  InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const InvalidEmailAndPasswordCombination();
  }

  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

  ErrorWhenRegisteringUsername errorWhenRegisteringUsername() {
    return const ErrorWhenRegisteringUsername();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailAlreadyInUse(),
    @required Result errorWhenRegisteringUsername(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombination(),
    Result emailAlreadyInUse(),
    Result errorWhenRegisteringUsername(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailAlreadyInUse(),
    @required Result errorWhenRegisteringUsername(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailAlreadyInUse != null);
    assert(errorWhenRegisteringUsername != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombination(),
    Result emailAlreadyInUse(),
    Result errorWhenRegisteringUsername(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailAlreadyInUse != null);
    assert(errorWhenRegisteringUsername != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailAlreadyInUse(),
    @required Result errorWhenRegisteringUsername(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailAlreadyInUse != null);
    assert(errorWhenRegisteringUsername != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombination(),
    Result emailAlreadyInUse(),
    Result errorWhenRegisteringUsername(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailAlreadyInUse != null);
    assert(errorWhenRegisteringUsername != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailAlreadyInUse(),
    @required Result errorWhenRegisteringUsername(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailAlreadyInUse != null);
    assert(errorWhenRegisteringUsername != null);
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombination(),
    Result emailAlreadyInUse(),
    Result errorWhenRegisteringUsername(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailAlreadyInUse != null);
    assert(errorWhenRegisteringUsername != null);
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}

abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailAlreadyInUse(),
    @required Result errorWhenRegisteringUsername(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailAlreadyInUse != null);
    assert(errorWhenRegisteringUsername != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombination(),
    Result emailAlreadyInUse(),
    Result errorWhenRegisteringUsername(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailAlreadyInUse != null);
    assert(errorWhenRegisteringUsername != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

abstract class $ErrorWhenRegisteringUsernameCopyWith<$Res> {
  factory $ErrorWhenRegisteringUsernameCopyWith(
          ErrorWhenRegisteringUsername value,
          $Res Function(ErrorWhenRegisteringUsername) then) =
      _$ErrorWhenRegisteringUsernameCopyWithImpl<$Res>;
}

class _$ErrorWhenRegisteringUsernameCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $ErrorWhenRegisteringUsernameCopyWith<$Res> {
  _$ErrorWhenRegisteringUsernameCopyWithImpl(
      ErrorWhenRegisteringUsername _value,
      $Res Function(ErrorWhenRegisteringUsername) _then)
      : super(_value, (v) => _then(v as ErrorWhenRegisteringUsername));

  @override
  ErrorWhenRegisteringUsername get _value =>
      super._value as ErrorWhenRegisteringUsername;
}

class _$ErrorWhenRegisteringUsername implements ErrorWhenRegisteringUsername {
  const _$ErrorWhenRegisteringUsername();

  @override
  String toString() {
    return 'AuthFailure.errorWhenRegisteringUsername()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErrorWhenRegisteringUsername);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailAlreadyInUse(),
    @required Result errorWhenRegisteringUsername(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailAlreadyInUse != null);
    assert(errorWhenRegisteringUsername != null);
    return errorWhenRegisteringUsername();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombination(),
    Result emailAlreadyInUse(),
    Result errorWhenRegisteringUsername(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorWhenRegisteringUsername != null) {
      return errorWhenRegisteringUsername();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailAlreadyInUse != null);
    assert(errorWhenRegisteringUsername != null);
    return errorWhenRegisteringUsername(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result errorWhenRegisteringUsername(ErrorWhenRegisteringUsername value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorWhenRegisteringUsername != null) {
      return errorWhenRegisteringUsername(this);
    }
    return orElse();
  }
}

abstract class ErrorWhenRegisteringUsername implements AuthFailure {
  const factory ErrorWhenRegisteringUsername() = _$ErrorWhenRegisteringUsername;
}
