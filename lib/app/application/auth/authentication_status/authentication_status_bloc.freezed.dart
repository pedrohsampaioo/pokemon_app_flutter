// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'authentication_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationStatusEventTearOff {
  const _$AuthenticationStatusEventTearOff();

  CheckAuthenticatedUserStarted checkAuthenticatedUserStarted() {
    return const CheckAuthenticatedUserStarted();
  }

  SignOutPressed signOutPressed() {
    return const SignOutPressed();
  }
}

// ignore: unused_element
const $AuthenticationStatusEvent = _$AuthenticationStatusEventTearOff();

mixin _$AuthenticationStatusEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthenticatedUserStarted(),
    @required Result signOutPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthenticatedUserStarted(),
    Result signOutPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result checkAuthenticatedUserStarted(
            CheckAuthenticatedUserStarted value),
    @required Result signOutPressed(SignOutPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthenticatedUserStarted(CheckAuthenticatedUserStarted value),
    Result signOutPressed(SignOutPressed value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationStatusEventCopyWith<$Res> {
  factory $AuthenticationStatusEventCopyWith(AuthenticationStatusEvent value,
          $Res Function(AuthenticationStatusEvent) then) =
      _$AuthenticationStatusEventCopyWithImpl<$Res>;
}

class _$AuthenticationStatusEventCopyWithImpl<$Res>
    implements $AuthenticationStatusEventCopyWith<$Res> {
  _$AuthenticationStatusEventCopyWithImpl(this._value, this._then);

  final AuthenticationStatusEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationStatusEvent) _then;
}

abstract class $CheckAuthenticatedUserStartedCopyWith<$Res> {
  factory $CheckAuthenticatedUserStartedCopyWith(
          CheckAuthenticatedUserStarted value,
          $Res Function(CheckAuthenticatedUserStarted) then) =
      _$CheckAuthenticatedUserStartedCopyWithImpl<$Res>;
}

class _$CheckAuthenticatedUserStartedCopyWithImpl<$Res>
    extends _$AuthenticationStatusEventCopyWithImpl<$Res>
    implements $CheckAuthenticatedUserStartedCopyWith<$Res> {
  _$CheckAuthenticatedUserStartedCopyWithImpl(
      CheckAuthenticatedUserStarted _value,
      $Res Function(CheckAuthenticatedUserStarted) _then)
      : super(_value, (v) => _then(v as CheckAuthenticatedUserStarted));

  @override
  CheckAuthenticatedUserStarted get _value =>
      super._value as CheckAuthenticatedUserStarted;
}

class _$CheckAuthenticatedUserStarted implements CheckAuthenticatedUserStarted {
  const _$CheckAuthenticatedUserStarted();

  @override
  String toString() {
    return 'AuthenticationStatusEvent.checkAuthenticatedUserStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckAuthenticatedUserStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthenticatedUserStarted(),
    @required Result signOutPressed(),
  }) {
    assert(checkAuthenticatedUserStarted != null);
    assert(signOutPressed != null);
    return checkAuthenticatedUserStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthenticatedUserStarted(),
    Result signOutPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthenticatedUserStarted != null) {
      return checkAuthenticatedUserStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result checkAuthenticatedUserStarted(
            CheckAuthenticatedUserStarted value),
    @required Result signOutPressed(SignOutPressed value),
  }) {
    assert(checkAuthenticatedUserStarted != null);
    assert(signOutPressed != null);
    return checkAuthenticatedUserStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthenticatedUserStarted(CheckAuthenticatedUserStarted value),
    Result signOutPressed(SignOutPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthenticatedUserStarted != null) {
      return checkAuthenticatedUserStarted(this);
    }
    return orElse();
  }
}

abstract class CheckAuthenticatedUserStarted
    implements AuthenticationStatusEvent {
  const factory CheckAuthenticatedUserStarted() =
      _$CheckAuthenticatedUserStarted;
}

abstract class $SignOutPressedCopyWith<$Res> {
  factory $SignOutPressedCopyWith(
          SignOutPressed value, $Res Function(SignOutPressed) then) =
      _$SignOutPressedCopyWithImpl<$Res>;
}

class _$SignOutPressedCopyWithImpl<$Res>
    extends _$AuthenticationStatusEventCopyWithImpl<$Res>
    implements $SignOutPressedCopyWith<$Res> {
  _$SignOutPressedCopyWithImpl(
      SignOutPressed _value, $Res Function(SignOutPressed) _then)
      : super(_value, (v) => _then(v as SignOutPressed));

  @override
  SignOutPressed get _value => super._value as SignOutPressed;
}

class _$SignOutPressed implements SignOutPressed {
  const _$SignOutPressed();

  @override
  String toString() {
    return 'AuthenticationStatusEvent.signOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthenticatedUserStarted(),
    @required Result signOutPressed(),
  }) {
    assert(checkAuthenticatedUserStarted != null);
    assert(signOutPressed != null);
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthenticatedUserStarted(),
    Result signOutPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result checkAuthenticatedUserStarted(
            CheckAuthenticatedUserStarted value),
    @required Result signOutPressed(SignOutPressed value),
  }) {
    assert(checkAuthenticatedUserStarted != null);
    assert(signOutPressed != null);
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthenticatedUserStarted(CheckAuthenticatedUserStarted value),
    Result signOutPressed(SignOutPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class SignOutPressed implements AuthenticationStatusEvent {
  const factory SignOutPressed() = _$SignOutPressed;
}

class _$AuthenticationStatusStateTearOff {
  const _$AuthenticationStatusStateTearOff();

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }

  IsAuthenticated isAuthenticated(User currentUser) {
    return IsAuthenticated(
      currentUser,
    );
  }

  Initial initial() {
    return const Initial();
  }
}

// ignore: unused_element
const $AuthenticationStatusState = _$AuthenticationStatusStateTearOff();

mixin _$AuthenticationStatusState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result isAuthenticated(User currentUser),
    @required Result initial(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result isAuthenticated(User currentUser),
    Result initial(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(Unauthenticated value),
    @required Result isAuthenticated(IsAuthenticated value),
    @required Result initial(Initial value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(Unauthenticated value),
    Result isAuthenticated(IsAuthenticated value),
    Result initial(Initial value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationStatusStateCopyWith<$Res> {
  factory $AuthenticationStatusStateCopyWith(AuthenticationStatusState value,
          $Res Function(AuthenticationStatusState) then) =
      _$AuthenticationStatusStateCopyWithImpl<$Res>;
}

class _$AuthenticationStatusStateCopyWithImpl<$Res>
    implements $AuthenticationStatusStateCopyWith<$Res> {
  _$AuthenticationStatusStateCopyWithImpl(this._value, this._then);

  final AuthenticationStatusState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationStatusState) _then;
}

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStatusStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthenticationStatusState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result isAuthenticated(User currentUser),
    @required Result initial(),
  }) {
    assert(unauthenticated != null);
    assert(isAuthenticated != null);
    assert(initial != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result isAuthenticated(User currentUser),
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(Unauthenticated value),
    @required Result isAuthenticated(IsAuthenticated value),
    @required Result initial(Initial value),
  }) {
    assert(unauthenticated != null);
    assert(isAuthenticated != null);
    assert(initial != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(Unauthenticated value),
    Result isAuthenticated(IsAuthenticated value),
    Result initial(Initial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthenticationStatusState {
  const factory Unauthenticated() = _$Unauthenticated;
}

abstract class $IsAuthenticatedCopyWith<$Res> {
  factory $IsAuthenticatedCopyWith(
          IsAuthenticated value, $Res Function(IsAuthenticated) then) =
      _$IsAuthenticatedCopyWithImpl<$Res>;
  $Res call({User currentUser});

  $UserCopyWith<$Res> get currentUser;
}

class _$IsAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStatusStateCopyWithImpl<$Res>
    implements $IsAuthenticatedCopyWith<$Res> {
  _$IsAuthenticatedCopyWithImpl(
      IsAuthenticated _value, $Res Function(IsAuthenticated) _then)
      : super(_value, (v) => _then(v as IsAuthenticated));

  @override
  IsAuthenticated get _value => super._value as IsAuthenticated;

  @override
  $Res call({
    Object currentUser = freezed,
  }) {
    return _then(IsAuthenticated(
      currentUser == freezed ? _value.currentUser : currentUser as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get currentUser {
    if (_value.currentUser == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

class _$IsAuthenticated implements IsAuthenticated {
  const _$IsAuthenticated(this.currentUser) : assert(currentUser != null);

  @override
  final User currentUser;

  @override
  String toString() {
    return 'AuthenticationStatusState.isAuthenticated(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsAuthenticated &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUser);

  @override
  $IsAuthenticatedCopyWith<IsAuthenticated> get copyWith =>
      _$IsAuthenticatedCopyWithImpl<IsAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result isAuthenticated(User currentUser),
    @required Result initial(),
  }) {
    assert(unauthenticated != null);
    assert(isAuthenticated != null);
    assert(initial != null);
    return isAuthenticated(currentUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result isAuthenticated(User currentUser),
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isAuthenticated != null) {
      return isAuthenticated(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(Unauthenticated value),
    @required Result isAuthenticated(IsAuthenticated value),
    @required Result initial(Initial value),
  }) {
    assert(unauthenticated != null);
    assert(isAuthenticated != null);
    assert(initial != null);
    return isAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(Unauthenticated value),
    Result isAuthenticated(IsAuthenticated value),
    Result initial(Initial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isAuthenticated != null) {
      return isAuthenticated(this);
    }
    return orElse();
  }
}

abstract class IsAuthenticated implements AuthenticationStatusState {
  const factory IsAuthenticated(User currentUser) = _$IsAuthenticated;

  User get currentUser;
  $IsAuthenticatedCopyWith<IsAuthenticated> get copyWith;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStatusStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthenticationStatusState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result isAuthenticated(User currentUser),
    @required Result initial(),
  }) {
    assert(unauthenticated != null);
    assert(isAuthenticated != null);
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result isAuthenticated(User currentUser),
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(Unauthenticated value),
    @required Result isAuthenticated(IsAuthenticated value),
    @required Result initial(Initial value),
  }) {
    assert(unauthenticated != null);
    assert(isAuthenticated != null);
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(Unauthenticated value),
    Result isAuthenticated(IsAuthenticated value),
    Result initial(Initial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthenticationStatusState {
  const factory Initial() = _$Initial;
}
