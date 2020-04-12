import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_app/app/modules/home/home_page.dart';
import 'package:pokemon_app/app/shared/bloc/pokemon_bloc.dart';
import 'package:pokemon_app/app/shared/repositories/pokemon_repository.dart';
import 'package:pokemon_app/app/shared/services/pokemon_service.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
        Bind((i) => PokemonRepository(client: i.get<Dio>())),
        Bind((i) => PokemonService(repository: i.get<PokemonRepository>())),
        Bind((i) => PokemonBloc(service: i.get<PokemonService>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];
}
