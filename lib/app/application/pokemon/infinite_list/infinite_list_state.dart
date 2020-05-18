part of 'infinite_list_bloc.dart';

@freezed
abstract class InfiniteListState with _$InfiniteListState {
  const factory InfiniteListState.initial() = Initial;
  const factory InfiniteListState.loading({
    @required List<Pokemon> currentListing,
  }) = Loading;
  const factory InfiniteListState.successfullyLoaded({
    @required List<Pokemon> currentListing,
    @required bool endOfList,
  }) = SuccessfullyLoaded;
  const factory InfiniteListState.failureLoaded({
    @required List<Pokemon> currentListing,
    @required PokemonFailure failure,
  }) = FailureLoaded;
}
