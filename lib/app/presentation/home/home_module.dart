import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../infraestructure/auth/pokemon_repository.dart';

import '../../application/pokemon/infinite_list/infinite_list_bloc.dart';

import 'pages/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
        Bind((i) => PokemonRepository(i.get<Dio>())),
        Bind((i) => InfiniteListBloc(i.get<PokemonRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router("/home_page", child: (context, args) => HomePage()),
      ];
}
