part of 'authentication_status_bloc.dart';

@freezed
abstract class AuthenticationStatusState with _$AuthenticationStatusState {
  const factory AuthenticationStatusState.unauthenticated() = Unauthenticated;
  const factory AuthenticationStatusState.isAuthenticated(User currentUser) =
      IsAuthenticated;
  const factory AuthenticationStatusState.initial() = Initial;
}
