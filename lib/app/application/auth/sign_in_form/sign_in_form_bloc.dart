import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/auth_facade_interface.dart';
import '../../../domain/auth/auth_failures.dart';
import '../../../domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthFacadeInterface _authFacade;

  SignInFormBloc(this._authFacade);

  @override
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailAddressStr),
          authFailureOrSucessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSucessOption: none(),
        );
      },
      signInWithEmailAndPassword: (e) async* {
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        Either<AuthFailure, Unit> authFailureOrSucess;
        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSucessOption: none(),
          );
          authFailureOrSucess = await _authFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSucessOption: optionOf(authFailureOrSucess),
        );
      },
      signInWithGoogle: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSucessOption: none(),
        );
        final authFailureOrSucess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSucessOption: some(authFailureOrSucess),
        );
      },
    );
  }
}
