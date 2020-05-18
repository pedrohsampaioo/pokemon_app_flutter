import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../application/auth/authentication_status/authentication_status_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../domain/auth/auth_failures.dart';
import '../components/form_sign_in_component.dart';
import '../components/snack_bar_component.dart';
import '../components/top_information_component.dart';
import '../widgets/text_with_action_widget.dart';

class SignInPage extends StatelessWidget {
  final _blocSignInForm = Modular.get<SignInFormBloc>();
  final _blocAuthenticationStatus = Modular.get<AuthenticationStatusBloc>();

  String _mapperAuthenticationFailures(AuthFailure failure) {
    return failure.map<String>(
      cancelledByUser: (e) => "Cancelled by user",
      serverError: (e) => "Server error",
      invalidEmailAndPasswordCombination: (e) =>
          "Invalid email and password combination",
      emailAlreadyInUse: (e) => "Email already in  use",
      errorWhenRegisteringUsername: (e) =>
          "Error when trying to register your username",
    );
  }

  void _handleAuthenticationNotifications(
    BuildContext context,
    SignInFormState state,
  ) {
    SnackBar snackBar;
    state.authFailureOrSucessOption.fold(
      () {},
      (failureOrSucess) {
        snackBar = failureOrSucess.fold<SnackBar>(
          (failure) => snackBarWithFailureMessage(
            _mapperAuthenticationFailures(failure),
          ),
          (sucess) {
            _blocAuthenticationStatus.add(
              $AuthenticationStatusEvent.checkAuthenticatedUserStarted(),
            );
            Future.delayed(
              Duration(seconds: 2),
              () => Navigator.pushNamedAndRemoveUntil(
                context,
                "/home_module",
                (Route<dynamic> route) => false,
              ),
            );
            return snackBarWithSucessMessage("Sign in completed");
          },
        );
      },
    );
    if (snackBar != null) {
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFedf1fe),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: BlocListener<SignInFormBloc, SignInFormState>(
            bloc: _blocSignInForm,
            listener: _handleAuthenticationNotifications,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TopInformationComponent(titlePage: "Sign In"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: FormSignInComponent(
                    bloc: _blocSignInForm,
                  ),
                ),
                _buildAccountQuestionMessage(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAccountQuestionMessage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 4),
              TextWithActionWidget(
                text: "SIGN UP",
                color: Colors.black,
                action: () => Modular.to.pushNamed("/auth_module/sign_up"),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ],
      ),
    );
  }
}
