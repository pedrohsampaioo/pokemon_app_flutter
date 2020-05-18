import 'package:flutter/material.dart';
import 'package:pokemon_app/app/domain/pokemon/pokemon.dart';
import 'package:pokemon_app/app/presentation/home/widgets/pokemon_type_tag_widget.dart';
import 'package:pokemon_app/app/theme/app_colors.dart';

class CardPokemonWidget extends StatelessWidget {
  final Pokemon pokemon;

  const CardPokemonWidget({
    Key key,
    @required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          flex: 4,
          child: Material(
            shadowColor: Color(0xFFeff0f3),
            elevation: 4,
            color: Color(0xFFedecf0),
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  pokemon.imageURL,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 6),
        Flexible(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "${pokemon.id}. ",
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFF818691),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      pokemon.name,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFF2c3956),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Wrap(
                  alignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: _buildTypeTag(pokemon.types),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildTypeTag(List<String> types) {
    final listWithTags = types
        .map(
          (type) => Padding(
            padding: const EdgeInsets.only(
              right: 4,
              bottom: 4,
            ),
            child: PokemonTypeTagWidget(
              name: type,
              backgroundColor: AppColors.typePokemon[type],
            ),
          ),
        )
        .toList();
    return listWithTags.length < 4
        ? listWithTags
        : [
            ...listWithTags.sublist(0, 3),
            Text(
              "...",
              style: TextStyle(
                color: Color(0xFF2c3956),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ];
  }
}
