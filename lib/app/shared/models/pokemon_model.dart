import 'package:meta/meta.dart';

class PokemonModel {
  final int id;
  final String name;
  final String urlSprit;
  PokemonModel({
    @required this.id,
    @required this.name,
    @required this.urlSprit,
  });

  static PokemonModel fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      id: json["id"],
      name: json["name"],
      urlSprit: json["sprites"]["front_default"],
    );
  }
}
