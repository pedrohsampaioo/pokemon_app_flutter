part of 'pokemon_bloc.dart';

@immutable
abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonLoading extends PokemonState {
  final List<PokemonModel> pokemonList;
  PokemonLoading({
    this.pokemonList,
  });
}

class PokemonLoaded extends PokemonState {
  final List<PokemonModel> pokemonList;
  PokemonLoaded({
    @required this.pokemonList,
  });
}

class PokemonError extends PokemonState {
  final String message;
  PokemonError({
    @required this.message,
  });
}
