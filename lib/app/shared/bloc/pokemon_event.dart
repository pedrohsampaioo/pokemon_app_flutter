part of 'pokemon_bloc.dart';

abstract class PokemonEvent {
  Stream<PokemonState> execute(
    PokemonState state,
    PokemonService service,
  );
}

class PokemonFetch extends PokemonEvent {
  final int currentPage;
  final int limit;

  PokemonFetch({
    @required this.currentPage,
    this.limit = 20,
  });

  @override
  Stream<PokemonState> execute(
    PokemonState state,
    PokemonService service,
  ) async* {
    yield PokemonLoading();
    final data = await service.fetch(
      currentPage: currentPage,
      limit: limit,
    );
    yield* data.fold((failure) async* {
      yield PokemonError(message: failure.message);
    }, (data) async* {
      yield PokemonLoaded(pokemonList: data);
    });
  }
}

class PokemonListMore extends PokemonEvent {
  final int currentPage;
  final int limit;

  PokemonListMore({
    @required this.currentPage,
    this.limit = 20,
  });

  @override
  Stream<PokemonState> execute(
    PokemonState state,
    PokemonService service,
  ) async* {
    List<PokemonModel> pokemonList = [];
    pokemonList = [
      ...pokemonList,
      ...(state as PokemonLoaded).pokemonList,
    ];
    yield PokemonLoading(pokemonList: pokemonList);
    final data = await service.fetch(
      currentPage: currentPage,
      limit: limit,
    );
    yield* data.fold((failure) async* {
      yield PokemonError(message: failure.message);
    }, (data) async* {
      pokemonList = [
        ...pokemonList,
        ...data,
      ];
      yield PokemonLoaded(pokemonList: pokemonList);
    });
  }
}
