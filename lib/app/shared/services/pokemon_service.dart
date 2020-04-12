import 'package:dartz/dartz.dart';
import 'package:pokemon_app/app/core/failures/failure.dart';
import 'package:pokemon_app/app/shared/models/pokemon_model.dart';
import 'package:pokemon_app/app/shared/repositories/pokemon_repository.dart';
import 'package:meta/meta.dart';

class PokemonService {
  final PokemonRepository repository;

  const PokemonService({
    @required this.repository,
  });

  //TODO: Handle error and DIO interceptors
  Future<Either<Failure, List<PokemonModel>>> fetch({
    @required int currentPage,
    int limit = 20,
  }) async {
    try {
      final data = await repository.fetch(
        currentPage: currentPage,
        limit: limit,
      );
      return Right(data);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  //TODO: Handle error and DIO interceptors
  Future<Either<Failure, PokemonModel>> search({
    @required String name,
  }) async {
    try {
      final data = await repository.search(name: name);
      return Right(data);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
