import 'package:flutter/material.dart';

class PokemonTypeTagWidget extends StatelessWidget {
  final String name;
  final Color backgroundColor;

  const PokemonTypeTagWidget({
    Key key,
    @required this.name,
    @required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (12 * name.length).toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: backgroundColor,
      ),
      padding: const EdgeInsets.all(2),
      child: Center(
        child: Text(
          name.toUpperCase(),
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
