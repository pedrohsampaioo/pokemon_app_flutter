import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/pokemon/pokemon.dart';
import '../../../domain/pokemon/pokemon_failure.dart';
import '../../../infraestructure/auth/pokemon_repository.dart';

part 'infinite_list_bloc.freezed.dart';
part 'infinite_list_event.dart';
part 'infinite_list_state.dart';

class InfiniteListBloc extends Bloc<InfiniteListEvent, InfiniteListState> {
  @override
  InfiniteListState get initialState => InfiniteListState.initial();

  final PokemonRepository _repository;
  InfiniteListBloc(this._repository);

  int _currentOffset = 0;
  int _currentLimit = 20;
  List<Pokemon> _currentListing = [];

  @override
  Stream<InfiniteListState> mapEventToState(
    InfiniteListEvent event,
  ) async* {
    yield Loading(
      currentListing: _currentListing,
    );
    final failureOrSucess = await _repository.fetchRangeOfPokemon(
      offset: _currentOffset,
      limit: _currentLimit,
    );
    yield failureOrSucess.fold(
      (failure) => FailureLoaded(
        failure: failure,
        currentListing: _currentListing,
      ),
      (listing) {
        bool endOfList = false;
        _currentOffset += _currentLimit;
        if (listing.isEmpty) {
          endOfList = true;
        }
        _currentListing = [
          ..._currentListing,
          ...listing,
        ];
        return SuccessfullyLoaded(
          currentListing: _currentListing,
          endOfList: endOfList,
        );
      },
    );
  }
}
