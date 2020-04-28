part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSucessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() {
    return RegisterFormState(
      username: Username(""),
      emailAddress: EmailAddress(""),
      password: Password(""),
      showErrorMessages: false,
      isSubmitting: false,
      authFailureOrSucessOption: none(),
    );
  }
}
