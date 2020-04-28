part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.usernameChanged(String usernameStr) =
      UsermameChanged;
  const factory RegisterFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory RegisterFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory RegisterFormEvent.registerWithEmailAndPassword({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Password password,
  }) = RegisterWithEmailAndPassword;
}
