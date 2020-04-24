import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pokemon_app/app/application/auth/sign_in_form/sign_in_form_bloc.dart';

import '../../infraestructure/auth/auth_firebase_facade.dart';
import 'pages/register_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/splash_screen_page.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FirebaseAuth.instance),
        Bind((i) => GoogleSignIn()),
        Bind((i) => AuthFirebaseFacade(
              firebaseAuth: i.get<FirebaseAuth>(),
              googleSignIn: i.get<GoogleSignIn>(),
            )),
        Bind((i) => SignInFormBloc(i.get<AuthFirebaseFacade>())),
      ];

  @override
  List<Router> get routers => [
        Router("/splash_screen", child: (_, args) => SplashScreenPage()),
        Router("/sign_in", child: (_, args) => SignInPage()),
        Router("/sign_up", child: (_, args) => RegisterPage()),
      ];
}
