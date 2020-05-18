import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../application/auth/authentication_status/authentication_status_bloc.dart';
import '../../../application/auth/register_form/register_form_bloc.dart';
import '../../../domain/auth/auth_failures.dart';
import '../components/form_register_component.dart';
import '../components/snack_bar_component.dart';
import '../components/top_information_component.dart';
import '../widgets/close_page_icon_widget.dart';

class RegisterPage extends StatelessWidget {
  final _blocRegisterFormBloc = Modular.get<RegisterFormBloc>();
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
    RegisterFormState state,
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
                $AuthenticationStatusEvent.checkAuthenticatedUserStarted());
            Future.delayed(
              Duration(seconds: 2),
              () => Navigator.pushNamedAndRemoveUntil(
                context,
                "/home_module",
                (Route<dynamic> route) => false,
              ),
            );
            return snackBarWithSucessMessage("Sign up completed");
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
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: ClosePageIconWidget(
                  action: () => Navigator.pop(context),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TopInformationComponent(titlePage: "Sign Up"),
                  BlocListener<RegisterFormBloc, RegisterFormState>(
                    bloc: _blocRegisterFormBloc,
                    listener: _handleAuthenticationNotifications,
                    child: FormRegisterComponent(
                      bloc: _blocRegisterFormBloc,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
