import 'package:flutter_modular/flutter_modular.dart';

import '../../application/auth/register_form/register_form_bloc.dart';
import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../infraestructure/auth/auth_firebase_facade.dart';
import 'pages/register_page.dart';
import 'pages/sign_in_page.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SignInFormBloc(i.get<AuthFirebaseFacade>())),
        Bind((i) => RegisterFormBloc(i.get<AuthFirebaseFacade>())),
      ];

  @override
  List<Router> get routers => [
        Router("/sign_in", child: (_, args) => SignInPage()),
        Router("/sign_up", child: (_, args) => RegisterPage()),
      ];
}
