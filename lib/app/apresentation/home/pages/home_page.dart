import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../application/auth/authentication_status/authentication_status_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _blocAuthenticationStatus = Modular.get<AuthenticationStatusBloc>();

  @override
  void initState() {
    super.initState();

    _blocAuthenticationStatus
        .add(AuthenticationStatusEvent.checkAuthenticatedUserStarted());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<AuthenticationStatusBloc, AuthenticationStatusState>(
          bloc: _blocAuthenticationStatus,
          listener: (context, state) {
            state.maybeMap(
                unauthenticated: (e) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/auth_module", (Route<dynamic> route) => false);
                },
                orElse: () {});
          },
          builder: (context, state) {
            return Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Text(state.maybeMap(
                      isAuthenticated: (e) =>
                          e.currentUser.displayName.getOrCrash(),
                      orElse: () => "")),
                  GestureDetector(
                    child: Text("logout"),
                    onTap: () {
                      _blocAuthenticationStatus.add(
                        AuthenticationStatusEvent.signOutPressed(),
                      );
                    },
                  ),
                ],
              ),
            );
          }),
    );
  }
}
