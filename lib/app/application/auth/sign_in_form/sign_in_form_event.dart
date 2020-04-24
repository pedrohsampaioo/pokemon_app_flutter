part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(
    String emailAddressStr,
  ) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(
    String passwordStr,
  ) = PasswordChanged;
  const factory SignInFormEvent.signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) = SignInWithEmailAndPassword;
  const factory SignInFormEvent.registerInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) = RegisterWithEmailAndPassword;
  const factory SignInFormEvent.signInWithGoogle() = SignInWithGoogle;
}
