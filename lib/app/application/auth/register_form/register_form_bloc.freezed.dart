// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterFormEventTearOff {
  const _$RegisterFormEventTearOff();

  UsermameChanged usernameChanged(String usernameStr) {
    return UsermameChanged(
      usernameStr,
    );
  }

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  RegisterWithEmailAndPassword registerWithEmailAndPassword(
      {@required Username username,
      @required EmailAddress emailAddress,
      @required Password password}) {
    return RegisterWithEmailAndPassword(
      username: username,
      emailAddress: emailAddress,
      password: password,
    );
  }
}

// ignore: unused_element
const $RegisterFormEvent = _$RegisterFormEventTearOff();

mixin _$RegisterFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required
        Result registerWithEmailAndPassword(
            Username username, EmailAddress emailAddress, Password password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPassword(
        Username username, EmailAddress emailAddress, Password password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(UsermameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(UsermameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result orElse(),
  });
}

abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res>;
}

class _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  final RegisterFormEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterFormEvent) _then;
}

abstract class $UsermameChangedCopyWith<$Res> {
  factory $UsermameChangedCopyWith(
          UsermameChanged value, $Res Function(UsermameChanged) then) =
      _$UsermameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

class _$UsermameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $UsermameChangedCopyWith<$Res> {
  _$UsermameChangedCopyWithImpl(
      UsermameChanged _value, $Res Function(UsermameChanged) _then)
      : super(_value, (v) => _then(v as UsermameChanged));

  @override
  UsermameChanged get _value => super._value as UsermameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(UsermameChanged(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

class _$UsermameChanged implements UsermameChanged {
  const _$UsermameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'RegisterFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsermameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  $UsermameChangedCopyWith<UsermameChanged> get copyWith =>
      _$UsermameChangedCopyWithImpl<UsermameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required
        Result registerWithEmailAndPassword(
            Username username, EmailAddress emailAddress, Password password),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPassword != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPassword(
        Username username, EmailAddress emailAddress, Password password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(UsermameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPassword != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(UsermameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsermameChanged implements RegisterFormEvent {
  const factory UsermameChanged(String usernameStr) = _$UsermameChanged;

  String get usernameStr;
  $UsermameChangedCopyWith<UsermameChanged> get copyWith;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required
        Result registerWithEmailAndPassword(
            Username username, EmailAddress emailAddress, Password password),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPassword != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPassword(
        Username username, EmailAddress emailAddress, Password password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(UsermameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPassword != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(UsermameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required
        Result registerWithEmailAndPassword(
            Username username, EmailAddress emailAddress, Password password),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPassword != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPassword(
        Username username, EmailAddress emailAddress, Password password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(UsermameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPassword != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(UsermameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordCopyWith(
          RegisterWithEmailAndPassword value,
          $Res Function(RegisterWithEmailAndPassword) then) =
      _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({Username username, EmailAddress emailAddress, Password password});
}

class _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordCopyWithImpl(
      RegisterWithEmailAndPassword _value,
      $Res Function(RegisterWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPassword));

  @override
  RegisterWithEmailAndPassword get _value =>
      super._value as RegisterWithEmailAndPassword;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
  }) {
    return _then(RegisterWithEmailAndPassword(
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
    ));
  }
}

class _$RegisterWithEmailAndPassword implements RegisterWithEmailAndPassword {
  const _$RegisterWithEmailAndPassword(
      {@required this.username,
      @required this.emailAddress,
      @required this.password})
      : assert(username != null),
        assert(emailAddress != null),
        assert(password != null);

  @override
  final Username username;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'RegisterFormEvent.registerWithEmailAndPassword(username: $username, emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPassword &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password);

  @override
  $RegisterWithEmailAndPasswordCopyWith<RegisterWithEmailAndPassword>
      get copyWith => _$RegisterWithEmailAndPasswordCopyWithImpl<
          RegisterWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required
        Result registerWithEmailAndPassword(
            Username username, EmailAddress emailAddress, Password password),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPassword != null);
    return registerWithEmailAndPassword(username, emailAddress, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPassword(
        Username username, EmailAddress emailAddress, Password password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(username, emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(UsermameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPassword != null);
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(UsermameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPassword implements RegisterFormEvent {
  const factory RegisterWithEmailAndPassword(
      {@required Username username,
      @required EmailAddress emailAddress,
      @required Password password}) = _$RegisterWithEmailAndPassword;

  Username get username;
  EmailAddress get emailAddress;
  Password get password;
  $RegisterWithEmailAndPasswordCopyWith<RegisterWithEmailAndPassword>
      get copyWith;
}

class _$RegisterFormStateTearOff {
  const _$RegisterFormStateTearOff();

  _RegisterFormState call(
      {@required Username username,
      @required EmailAddress emailAddress,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSucessOption}) {
    return _RegisterFormState(
      username: username,
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSucessOption: authFailureOrSucessOption,
    );
  }
}

// ignore: unused_element
const $RegisterFormState = _$RegisterFormStateTearOff();

mixin _$RegisterFormState {
  Username get username;
  EmailAddress get emailAddress;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSucessOption;

  $RegisterFormStateCopyWith<RegisterFormState> get copyWith;
}

abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSucessOption});
}

class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  final RegisterFormState _value;
  // ignore: unused_field
  final $Res Function(RegisterFormState) _then;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSucessOption = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSucessOption: authFailureOrSucessOption == freezed
          ? _value.authFailureOrSucessOption
          : authFailureOrSucessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(
          _RegisterFormState value, $Res Function(_RegisterFormState) then) =
      __$RegisterFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSucessOption});
}

class __$RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$RegisterFormStateCopyWith<$Res> {
  __$RegisterFormStateCopyWithImpl(
      _RegisterFormState _value, $Res Function(_RegisterFormState) _then)
      : super(_value, (v) => _then(v as _RegisterFormState));

  @override
  _RegisterFormState get _value => super._value as _RegisterFormState;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSucessOption = freezed,
  }) {
    return _then(_RegisterFormState(
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSucessOption: authFailureOrSucessOption == freezed
          ? _value.authFailureOrSucessOption
          : authFailureOrSucessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_RegisterFormState implements _RegisterFormState {
  const _$_RegisterFormState(
      {@required this.username,
      @required this.emailAddress,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSucessOption})
      : assert(username != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSucessOption != null);

  @override
  final Username username;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSucessOption;

  @override
  String toString() {
    return 'RegisterFormState(username: $username, emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSucessOption: $authFailureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFormState &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSucessOption,
                    authFailureOrSucessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSucessOption,
                    authFailureOrSucessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSucessOption);

  @override
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith =>
      __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
          {@required
              Username username,
          @required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSucessOption}) =
      _$_RegisterFormState;

  @override
  Username get username;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSucessOption;
  @override
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith;
}
