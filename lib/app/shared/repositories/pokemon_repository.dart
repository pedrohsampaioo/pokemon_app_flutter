import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:pokemon_app/app/shared/models/pokemon_model.dart';

class PokemonRepository {
  final Dio client;
  const PokemonRepository({@required this.client});

  Future<List<PokemonModel>> fetch({
    @required int currentPage,
    int limit = 20,
  }) async {
    try {
      List<PokemonModel> listPokemon = [];
      final queryParameters = {
        "offset": currentPage,
        "limit": limit,
      };
      final result = await client.get(
        "https://pokeapi.co/api/v2/pokemon/",
        queryParameters: queryParameters,
      );
      final pokemons = result.data["results"];
      for (var pokemon in pokemons) {
        final data = await search(name: pokemon["name"]);
        listPokemon.add(data);
      }
      return listPokemon;
    } catch (e) {
      rethrow;
    }
  }

  Future<PokemonModel> search({
    @required String name,
  }) async {
    try {
      final result =
          await client.get("https://pokeapi.co/api/v2/pokemon/$name");
      Map<String, dynamic> json = result.data;
      final pokemon = PokemonModel.fromJson(json);
      return pokemon;
    } catch (e) {
      rethrow;
    }
  }
}
