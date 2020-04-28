import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/user.dart';
import '../../../infraestructure/auth/auth_firebase_facade.dart';

part 'authentication_status_bloc.freezed.dart';
part 'authentication_status_event.dart';
part 'authentication_status_state.dart';

class AuthenticationStatusBloc
    extends Bloc<AuthenticationStatusEvent, AuthenticationStatusState> {
  final AuthFirebaseFacade _authFirebase;

  AuthenticationStatusBloc(this._authFirebase);

  @override
  AuthenticationStatusState get initialState =>
      AuthenticationStatusState.initial();

  @override
  Stream<AuthenticationStatusState> mapEventToState(
    AuthenticationStatusEvent event,
  ) async* {
    yield* event.map(
      checkAuthenticatedUserStarted: (e) async* {
        final hasOrNot = await _authFirebase.getCurrentSignedUser();
        yield hasOrNot.fold(
          () => AuthenticationStatusState.unauthenticated(),
          (user) => AuthenticationStatusState.isAuthenticated(user),
        );
      },
      signOutPressed: (e) async* {
        await _authFirebase.signOut();
        yield AuthenticationStatusState.unauthenticated();
      },
    );
  }
}
