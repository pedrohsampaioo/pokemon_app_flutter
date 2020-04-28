import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router("/home_page", child: (context, args) => HomePage()),
      ];
}
