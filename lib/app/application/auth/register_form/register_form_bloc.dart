import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/auth_facade_interface.dart';
import '../../../domain/auth/auth_failures.dart';
import '../../../domain/auth/value_objects.dart';

part 'register_form_bloc.freezed.dart';
part 'register_form_event.dart';
part 'register_form_state.dart';

class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final AuthFacadeInterface _authFacade;

  RegisterFormBloc(this._authFacade);

  @override
  RegisterFormState get initialState => RegisterFormState.initial();

  @override
  Stream<RegisterFormState> mapEventToState(
    RegisterFormEvent event,
  ) async* {
    yield* event.map(
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.usernameStr),
          authFailureOrSucessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSucessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSucessOption: none(),
        );
      },
      registerWithEmailAndPassword: (e) async* {
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        final isUsernameValid = state.username.isValid();
        Either<AuthFailure, Unit> authFailureOrSucess;
        if (isEmailValid && isPasswordValid && isUsernameValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSucessOption: none(),
          );
          authFailureOrSucess = await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
            username: state.username,
          );
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSucessOption: optionOf(authFailureOrSucess),
        );
      },
    );
  }
}
