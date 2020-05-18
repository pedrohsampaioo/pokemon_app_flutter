import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../application/auth/authentication_status/authentication_status_bloc.dart';
import '../../infraestructure/auth/auth_firebase_facade.dart';
import '../auth/auth_module.dart';
import '../home/home_module.dart';
import 'pages/splash_screen_page.dart';

class SplashScreenModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FirebaseAuth.instance),
        Bind((i) => GoogleSignIn()),
        Bind((i) => AuthFirebaseFacade(
            firebaseAuth: i.get<FirebaseAuth>(),
            googleSignIn: i.get<GoogleSignIn>())),
        Bind((i) => AuthenticationStatusBloc(i.get<AuthFirebaseFacade>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SplashScreenPage()),
        Router("/auth_module", module: AuthModule()),
        Router("/home_module", module: HomeModule()),
      ];
}
