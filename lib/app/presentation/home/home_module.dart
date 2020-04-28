import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_app/app/presentation/home/pages/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];
}
