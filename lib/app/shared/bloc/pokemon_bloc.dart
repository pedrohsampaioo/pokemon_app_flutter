import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokemon_app/app/shared/models/pokemon_model.dart';
import 'package:pokemon_app/app/shared/services/pokemon_service.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonService service;

  PokemonBloc({
    @required this.service,
  });

  @override
  PokemonState get initialState => PokemonInitial();

  @override
  Stream<PokemonState> mapEventToState(
    PokemonEvent event,
  ) async* {
    yield* event.execute(
      state,
      service,
    );
  }
}
