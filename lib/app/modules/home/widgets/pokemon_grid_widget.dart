import 'package:flutter/material.dart';
import 'package:pokemon_app/app/shared/models/pokemon_model.dart';

class PokemonGridWidget extends StatefulWidget {
  final List<PokemonModel> pokemonList;
  PokemonGridWidget({
    @required this.pokemonList,
    Key key,
  }) : super(key: key);
  @override
  _PokemonGridWidgetState createState() => _PokemonGridWidgetState();
}

class _PokemonGridWidgetState extends State<PokemonGridWidget> {
  @override
  Widget build(BuildContext context) {
    final pokemonList = widget.pokemonList;
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: pokemonList.length,
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.78,
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (_, index) {
        final pokemon = pokemonList[index];
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 10,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Material(
                      color: Color(0xFFeeebe8),
                      child: InkWell(
                        onTap: () {},
                        child: Image.network(
                          pokemon.urlSprit,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: SizedBox(),
              ),
              Flexible(
                flex: 2,
                child: Text(
                  pokemon.name,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF7c818b),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
