import 'package:flutter/material.dart';

import '../../../domain/pokemon/pokemon.dart';
import '../widgets/card_pokemon_widget.dart';

class ListWithPokemonComponent extends StatelessWidget {
  final List<Pokemon> pokemonList;

  const ListWithPokemonComponent({
    Key key,
    @required this.pokemonList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        return CardPokemonWidget(
          pokemon: pokemonList[index],
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 16);
      },
      itemCount: pokemonList.length,
    );
  }
}
