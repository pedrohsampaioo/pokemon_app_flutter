// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PokemonTearOff {
  const _$PokemonTearOff();

  _Pokemon call(
      {@required String imageURL,
      @required int id,
      @required String name,
      @required int height,
      @required int weight,
      @required List<String> types,
      @required bool isFavorite}) {
    return _Pokemon(
      imageURL: imageURL,
      id: id,
      name: name,
      height: height,
      weight: weight,
      types: types,
      isFavorite: isFavorite,
    );
  }
}

// ignore: unused_element
const $Pokemon = _$PokemonTearOff();

mixin _$Pokemon {
  String get imageURL;
  int get id;
  String get name;
  int get height;
  int get weight;
  List<String> get types;
  bool get isFavorite;

  $PokemonCopyWith<Pokemon> get copyWith;
}

abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res>;
  $Res call(
      {String imageURL,
      int id,
      String name,
      int height,
      int weight,
      List<String> types,
      bool isFavorite});
}

class _$PokemonCopyWithImpl<$Res> implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  final Pokemon _value;
  // ignore: unused_field
  final $Res Function(Pokemon) _then;

  @override
  $Res call({
    Object imageURL = freezed,
    Object id = freezed,
    Object name = freezed,
    Object height = freezed,
    Object weight = freezed,
    Object types = freezed,
    Object isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      height: height == freezed ? _value.height : height as int,
      weight: weight == freezed ? _value.weight : weight as int,
      types: types == freezed ? _value.types : types as List<String>,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
    ));
  }
}

abstract class _$PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) then) =
      __$PokemonCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imageURL,
      int id,
      String name,
      int height,
      int weight,
      List<String> types,
      bool isFavorite});
}

class __$PokemonCopyWithImpl<$Res> extends _$PokemonCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(_Pokemon _value, $Res Function(_Pokemon) _then)
      : super(_value, (v) => _then(v as _Pokemon));

  @override
  _Pokemon get _value => super._value as _Pokemon;

  @override
  $Res call({
    Object imageURL = freezed,
    Object id = freezed,
    Object name = freezed,
    Object height = freezed,
    Object weight = freezed,
    Object types = freezed,
    Object isFavorite = freezed,
  }) {
    return _then(_Pokemon(
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      height: height == freezed ? _value.height : height as int,
      weight: weight == freezed ? _value.weight : weight as int,
      types: types == freezed ? _value.types : types as List<String>,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
    ));
  }
}

class _$_Pokemon implements _Pokemon {
  const _$_Pokemon(
      {@required this.imageURL,
      @required this.id,
      @required this.name,
      @required this.height,
      @required this.weight,
      @required this.types,
      @required this.isFavorite})
      : assert(imageURL != null),
        assert(id != null),
        assert(name != null),
        assert(height != null),
        assert(weight != null),
        assert(types != null),
        assert(isFavorite != null);

  @override
  final String imageURL;
  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  final List<String> types;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'Pokemon(imageURL: $imageURL, id: $id, name: $name, height: $height, weight: $weight, types: $types, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pokemon &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(types) ^
      const DeepCollectionEquality().hash(isFavorite);

  @override
  _$PokemonCopyWith<_Pokemon> get copyWith =>
      __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {@required String imageURL,
      @required int id,
      @required String name,
      @required int height,
      @required int weight,
      @required List<String> types,
      @required bool isFavorite}) = _$_Pokemon;

  @override
  String get imageURL;
  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  List<String> get types;
  @override
  bool get isFavorite;
  @override
  _$PokemonCopyWith<_Pokemon> get copyWith;
}
