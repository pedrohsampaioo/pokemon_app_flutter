import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../application/auth/authentication_status/authentication_status_bloc.dart';
import '../widgets/custom_linear_progress_widget.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  AuthenticationStatusBloc _blocAuthenticationStatus;

  @override
  void initState() {
    super.initState();
    _runOnStartup();
  }

  void _runOnStartup() {
    _blocAuthenticationStatus = Modular.get<AuthenticationStatusBloc>();
    _blocAuthenticationStatus
        .add(AuthenticationStatusEvent.checkAuthenticatedUserStarted());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFedf1fe),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child:
              BlocListener<AuthenticationStatusBloc, AuthenticationStatusState>(
            bloc: _blocAuthenticationStatus,
            listener: (context, state) {
              state.map(
                isAuthenticated: (e) async {
                  await Future.delayed(Duration(seconds: 2));
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/home_module", (Route<dynamic> route) => false);
                },
                unauthenticated: (e) async {
                  await Future.delayed(Duration(seconds: 2));
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/auth_module", (Route<dynamic> route) => false);
                },
                initial: (e) {},
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 32),
                  Text(
                    "Bookmark Pokemon",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color(0xFF2c3956),
                    ),
                  ),
                  Text(
                    "keep your favorite Pokémon",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xFF2c3956),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Flexible(
                    child: Center(
                      child: Image.asset(
                        "assets/images/wrapper.gif",
                        height: 300,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: CustomLinearProgressWidget(),
                  ),
                  const SizedBox(height: 64),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
