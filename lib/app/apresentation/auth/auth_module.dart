import 'package:flutter_modular/flutter_modular.dart';

import 'pages/register_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/splash_screen_page.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router("/splash_screen", child: (_, args) => SplashScreenPage()),
        Router("/sign_in", child: (_, args) => SignInPage()),
        Router("/sign_up", child: (_, args) => RegisterPage()),
      ];
}
