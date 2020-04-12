import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_app/app/shared/repositories/pokemon_repository.dart';
import 'package:pokemon_app/app/shared/models/pokemon_model.dart';

main() {
  Dio client;
  PokemonRepository repository;

  setUp(() {
    client = Dio();
    repository = PokemonRepository(client: client);
  });

  group("testing the pokemon repository", () {
    test("Search for a specific pokemon", () async {
      final pokemon = await repository.search(name: "bulbasaur");
      expect(pokemon.name, "bulbasaur");
    });

    test("Search for a pokemon list", () async {
      final listPokemon = await repository.fetch(currentPage: 0);
      expect(listPokemon, isA<List<PokemonModel>>());
    });
  });
}
