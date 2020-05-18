// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PokemonFailureTearOff {
  const _$PokemonFailureTearOff();

  RequestError requestError() {
    return const RequestError();
  }
}

// ignore: unused_element
const $PokemonFailure = _$PokemonFailureTearOff();

mixin _$PokemonFailure {}

abstract class $PokemonFailureCopyWith<$Res> {
  factory $PokemonFailureCopyWith(
          PokemonFailure value, $Res Function(PokemonFailure) then) =
      _$PokemonFailureCopyWithImpl<$Res>;
}

class _$PokemonFailureCopyWithImpl<$Res>
    implements $PokemonFailureCopyWith<$Res> {
  _$PokemonFailureCopyWithImpl(this._value, this._then);

  final PokemonFailure _value;
  // ignore: unused_field
  final $Res Function(PokemonFailure) _then;
}

abstract class $RequestErrorCopyWith<$Res> {
  factory $RequestErrorCopyWith(
          RequestError value, $Res Function(RequestError) then) =
      _$RequestErrorCopyWithImpl<$Res>;
}

class _$RequestErrorCopyWithImpl<$Res>
    extends _$PokemonFailureCopyWithImpl<$Res>
    implements $RequestErrorCopyWith<$Res> {
  _$RequestErrorCopyWithImpl(
      RequestError _value, $Res Function(RequestError) _then)
      : super(_value, (v) => _then(v as RequestError));

  @override
  RequestError get _value => super._value as RequestError;
}

class _$RequestError implements RequestError {
  const _$RequestError();

  @override
  String toString() {
    return 'PokemonFailure.requestError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestError);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class RequestError implements PokemonFailure {
  const factory RequestError() = _$RequestError;
}
