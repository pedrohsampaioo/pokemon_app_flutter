import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
abstract class Pokemon with _$Pokemon {
  const factory Pokemon({
    @required String imageURL,
    @required int id,
    @required String name,
    @required int height,
    @required int weight,
    @required List<String> types,
    @required bool isFavorite,
  }) = _Pokemon;
}
