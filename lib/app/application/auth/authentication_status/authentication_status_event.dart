part of 'authentication_status_bloc.dart';

@freezed
abstract class AuthenticationStatusEvent with _$AuthenticationStatusEvent {
  const factory AuthenticationStatusEvent.checkAuthenticatedUserStarted() =
      CheckAuthenticatedUserStarted;
  const factory AuthenticationStatusEvent.signOutPressed() = SignOutPressed;
}
