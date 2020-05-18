part of 'infinite_list_bloc.dart';

@freezed
abstract class InfiniteListEvent with _$InfiniteListEvent {
  const factory InfiniteListEvent.fetchPokemonPressed() = FetchPokemon;
}
