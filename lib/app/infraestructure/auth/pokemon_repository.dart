import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../domain/pokemon/pokemon.dart';
import '../../domain/pokemon/pokemon_failure.dart';

class PokemonRepository {
  final Dio client;

  const PokemonRepository._(this.client);

  factory PokemonRepository(Dio client) {
    client.options.baseUrl = "https://pokeapi.co/api/v2";
    return PokemonRepository._(client);
  }

  //TODO: create serialization
  Future<Either<PokemonFailure, Pokemon>> getOne(String nameOrId) async {
    try {
      final resquestResult = await client.get("/pokemon/$nameOrId");
      final json = resquestResult.data;
      List<String> types = [];
      for (Map<String, dynamic> mapWithType in json["types"]) {
        String type = mapWithType["type"]["name"];
        types.add(type);
      }
      final pokemon = Pokemon(
        isFavorite: false,
        id: json["id"],
        name: json["name"],
        weight: json["weight"],
        height: json["height"],
        types: types,
        imageURL: json["sprites"]["front_default"],
      );
      return right(pokemon);
    } on DioError {
      return left(PokemonFailure.requestError());
    }
  }

  Future<Either<PokemonFailure, List<Pokemon>>> fetchRangeOfPokemon({
    @required int offset,
    int limit = 20,
  }) async {
    try {
      List<Pokemon> pokemonList = [];
      final requestResult =
          await client.get("/pokemon/?offset=$offset&limit=$limit");
      final json = requestResult.data;
      for (Map<String, dynamic> mapWithName in json["results"]) {
        String name = mapWithName["name"];
        final failureOrSucess = await getOne(name);
        final pokemon = failureOrSucess.getOrElse(
          () => throw DioError,
        );
        pokemonList.add(pokemon);
      }
      return right(pokemonList);
    } on DioError {
      return left(PokemonFailure.requestError());
    }
  }
}
