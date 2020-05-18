// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'infinite_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$InfiniteListEventTearOff {
  const _$InfiniteListEventTearOff();

  FetchPokemon fetchPokemonPressed() {
    return const FetchPokemon();
  }
}

// ignore: unused_element
const $InfiniteListEvent = _$InfiniteListEventTearOff();

mixin _$InfiniteListEvent {}

abstract class $InfiniteListEventCopyWith<$Res> {
  factory $InfiniteListEventCopyWith(
          InfiniteListEvent value, $Res Function(InfiniteListEvent) then) =
      _$InfiniteListEventCopyWithImpl<$Res>;
}

class _$InfiniteListEventCopyWithImpl<$Res>
    implements $InfiniteListEventCopyWith<$Res> {
  _$InfiniteListEventCopyWithImpl(this._value, this._then);

  final InfiniteListEvent _value;
  // ignore: unused_field
  final $Res Function(InfiniteListEvent) _then;
}

abstract class $FetchPokemonCopyWith<$Res> {
  factory $FetchPokemonCopyWith(
          FetchPokemon value, $Res Function(FetchPokemon) then) =
      _$FetchPokemonCopyWithImpl<$Res>;
}

class _$FetchPokemonCopyWithImpl<$Res>
    extends _$InfiniteListEventCopyWithImpl<$Res>
    implements $FetchPokemonCopyWith<$Res> {
  _$FetchPokemonCopyWithImpl(
      FetchPokemon _value, $Res Function(FetchPokemon) _then)
      : super(_value, (v) => _then(v as FetchPokemon));

  @override
  FetchPokemon get _value => super._value as FetchPokemon;
}

class _$FetchPokemon implements FetchPokemon {
  const _$FetchPokemon();

  @override
  String toString() {
    return 'InfiniteListEvent.fetchPokemonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchPokemon);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class FetchPokemon implements InfiniteListEvent {
  const factory FetchPokemon() = _$FetchPokemon;
}

class _$InfiniteListStateTearOff {
  const _$InfiniteListStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading({@required List<Pokemon> currentListing}) {
    return Loading(
      currentListing: currentListing,
    );
  }

  SuccessfullyLoaded successfullyLoaded(
      {@required List<Pokemon> currentListing, @required bool endOfList}) {
    return SuccessfullyLoaded(
      currentListing: currentListing,
      endOfList: endOfList,
    );
  }

  FailureLoaded failureLoaded(
      {@required List<Pokemon> currentListing,
      @required PokemonFailure failure}) {
    return FailureLoaded(
      currentListing: currentListing,
      failure: failure,
    );
  }
}

// ignore: unused_element
const $InfiniteListState = _$InfiniteListStateTearOff();

mixin _$InfiniteListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(List<Pokemon> currentListing),
    @required
        Result successfullyLoaded(List<Pokemon> currentListing, bool endOfList),
    @required
        Result failureLoaded(
            List<Pokemon> currentListing, PokemonFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(List<Pokemon> currentListing),
    Result successfullyLoaded(List<Pokemon> currentListing, bool endOfList),
    Result failureLoaded(List<Pokemon> currentListing, PokemonFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result successfullyLoaded(SuccessfullyLoaded value),
    @required Result failureLoaded(FailureLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result successfullyLoaded(SuccessfullyLoaded value),
    Result failureLoaded(FailureLoaded value),
    @required Result orElse(),
  });
}

abstract class $InfiniteListStateCopyWith<$Res> {
  factory $InfiniteListStateCopyWith(
          InfiniteListState value, $Res Function(InfiniteListState) then) =
      _$InfiniteListStateCopyWithImpl<$Res>;
}

class _$InfiniteListStateCopyWithImpl<$Res>
    implements $InfiniteListStateCopyWith<$Res> {
  _$InfiniteListStateCopyWithImpl(this._value, this._then);

  final InfiniteListState _value;
  // ignore: unused_field
  final $Res Function(InfiniteListState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$InfiniteListStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'InfiniteListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(List<Pokemon> currentListing),
    @required
        Result successfullyLoaded(List<Pokemon> currentListing, bool endOfList),
    @required
        Result failureLoaded(
            List<Pokemon> currentListing, PokemonFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successfullyLoaded != null);
    assert(failureLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(List<Pokemon> currentListing),
    Result successfullyLoaded(List<Pokemon> currentListing, bool endOfList),
    Result failureLoaded(List<Pokemon> currentListing, PokemonFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result successfullyLoaded(SuccessfullyLoaded value),
    @required Result failureLoaded(FailureLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successfullyLoaded != null);
    assert(failureLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result successfullyLoaded(SuccessfullyLoaded value),
    Result failureLoaded(FailureLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements InfiniteListState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  $Res call({List<Pokemon> currentListing});
}

class _$LoadingCopyWithImpl<$Res> extends _$InfiniteListStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object currentListing = freezed,
  }) {
    return _then(Loading(
      currentListing: currentListing == freezed
          ? _value.currentListing
          : currentListing as List<Pokemon>,
    ));
  }
}

class _$Loading implements Loading {
  const _$Loading({@required this.currentListing})
      : assert(currentListing != null);

  @override
  final List<Pokemon> currentListing;

  @override
  String toString() {
    return 'InfiniteListState.loading(currentListing: $currentListing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.currentListing, currentListing) ||
                const DeepCollectionEquality()
                    .equals(other.currentListing, currentListing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentListing);

  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(List<Pokemon> currentListing),
    @required
        Result successfullyLoaded(List<Pokemon> currentListing, bool endOfList),
    @required
        Result failureLoaded(
            List<Pokemon> currentListing, PokemonFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successfullyLoaded != null);
    assert(failureLoaded != null);
    return loading(currentListing);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(List<Pokemon> currentListing),
    Result successfullyLoaded(List<Pokemon> currentListing, bool endOfList),
    Result failureLoaded(List<Pokemon> currentListing, PokemonFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(currentListing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result successfullyLoaded(SuccessfullyLoaded value),
    @required Result failureLoaded(FailureLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successfullyLoaded != null);
    assert(failureLoaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result successfullyLoaded(SuccessfullyLoaded value),
    Result failureLoaded(FailureLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements InfiniteListState {
  const factory Loading({@required List<Pokemon> currentListing}) = _$Loading;

  List<Pokemon> get currentListing;
  $LoadingCopyWith<Loading> get copyWith;
}

abstract class $SuccessfullyLoadedCopyWith<$Res> {
  factory $SuccessfullyLoadedCopyWith(
          SuccessfullyLoaded value, $Res Function(SuccessfullyLoaded) then) =
      _$SuccessfullyLoadedCopyWithImpl<$Res>;
  $Res call({List<Pokemon> currentListing, bool endOfList});
}

class _$SuccessfullyLoadedCopyWithImpl<$Res>
    extends _$InfiniteListStateCopyWithImpl<$Res>
    implements $SuccessfullyLoadedCopyWith<$Res> {
  _$SuccessfullyLoadedCopyWithImpl(
      SuccessfullyLoaded _value, $Res Function(SuccessfullyLoaded) _then)
      : super(_value, (v) => _then(v as SuccessfullyLoaded));

  @override
  SuccessfullyLoaded get _value => super._value as SuccessfullyLoaded;

  @override
  $Res call({
    Object currentListing = freezed,
    Object endOfList = freezed,
  }) {
    return _then(SuccessfullyLoaded(
      currentListing: currentListing == freezed
          ? _value.currentListing
          : currentListing as List<Pokemon>,
      endOfList: endOfList == freezed ? _value.endOfList : endOfList as bool,
    ));
  }
}

class _$SuccessfullyLoaded implements SuccessfullyLoaded {
  const _$SuccessfullyLoaded(
      {@required this.currentListing, @required this.endOfList})
      : assert(currentListing != null),
        assert(endOfList != null);

  @override
  final List<Pokemon> currentListing;
  @override
  final bool endOfList;

  @override
  String toString() {
    return 'InfiniteListState.successfullyLoaded(currentListing: $currentListing, endOfList: $endOfList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessfullyLoaded &&
            (identical(other.currentListing, currentListing) ||
                const DeepCollectionEquality()
                    .equals(other.currentListing, currentListing)) &&
            (identical(other.endOfList, endOfList) ||
                const DeepCollectionEquality()
                    .equals(other.endOfList, endOfList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentListing) ^
      const DeepCollectionEquality().hash(endOfList);

  @override
  $SuccessfullyLoadedCopyWith<SuccessfullyLoaded> get copyWith =>
      _$SuccessfullyLoadedCopyWithImpl<SuccessfullyLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(List<Pokemon> currentListing),
    @required
        Result successfullyLoaded(List<Pokemon> currentListing, bool endOfList),
    @required
        Result failureLoaded(
            List<Pokemon> currentListing, PokemonFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successfullyLoaded != null);
    assert(failureLoaded != null);
    return successfullyLoaded(currentListing, endOfList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(List<Pokemon> currentListing),
    Result successfullyLoaded(List<Pokemon> currentListing, bool endOfList),
    Result failureLoaded(List<Pokemon> currentListing, PokemonFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successfullyLoaded != null) {
      return successfullyLoaded(currentListing, endOfList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result successfullyLoaded(SuccessfullyLoaded value),
    @required Result failureLoaded(FailureLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successfullyLoaded != null);
    assert(failureLoaded != null);
    return successfullyLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result successfullyLoaded(SuccessfullyLoaded value),
    Result failureLoaded(FailureLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successfullyLoaded != null) {
      return successfullyLoaded(this);
    }
    return orElse();
  }
}

abstract class SuccessfullyLoaded implements InfiniteListState {
  const factory SuccessfullyLoaded(
      {@required List<Pokemon> currentListing,
      @required bool endOfList}) = _$SuccessfullyLoaded;

  List<Pokemon> get currentListing;
  bool get endOfList;
  $SuccessfullyLoadedCopyWith<SuccessfullyLoaded> get copyWith;
}

abstract class $FailureLoadedCopyWith<$Res> {
  factory $FailureLoadedCopyWith(
          FailureLoaded value, $Res Function(FailureLoaded) then) =
      _$FailureLoadedCopyWithImpl<$Res>;
  $Res call({List<Pokemon> currentListing, PokemonFailure failure});

  $PokemonFailureCopyWith<$Res> get failure;
}

class _$FailureLoadedCopyWithImpl<$Res>
    extends _$InfiniteListStateCopyWithImpl<$Res>
    implements $FailureLoadedCopyWith<$Res> {
  _$FailureLoadedCopyWithImpl(
      FailureLoaded _value, $Res Function(FailureLoaded) _then)
      : super(_value, (v) => _then(v as FailureLoaded));

  @override
  FailureLoaded get _value => super._value as FailureLoaded;

  @override
  $Res call({
    Object currentListing = freezed,
    Object failure = freezed,
  }) {
    return _then(FailureLoaded(
      currentListing: currentListing == freezed
          ? _value.currentListing
          : currentListing as List<Pokemon>,
      failure: failure == freezed ? _value.failure : failure as PokemonFailure,
    ));
  }

  @override
  $PokemonFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $PokemonFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$FailureLoaded implements FailureLoaded {
  const _$FailureLoaded({@required this.currentListing, @required this.failure})
      : assert(currentListing != null),
        assert(failure != null);

  @override
  final List<Pokemon> currentListing;
  @override
  final PokemonFailure failure;

  @override
  String toString() {
    return 'InfiniteListState.failureLoaded(currentListing: $currentListing, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureLoaded &&
            (identical(other.currentListing, currentListing) ||
                const DeepCollectionEquality()
                    .equals(other.currentListing, currentListing)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentListing) ^
      const DeepCollectionEquality().hash(failure);

  @override
  $FailureLoadedCopyWith<FailureLoaded> get copyWith =>
      _$FailureLoadedCopyWithImpl<FailureLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(List<Pokemon> currentListing),
    @required
        Result successfullyLoaded(List<Pokemon> currentListing, bool endOfList),
    @required
        Result failureLoaded(
            List<Pokemon> currentListing, PokemonFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successfullyLoaded != null);
    assert(failureLoaded != null);
    return failureLoaded(currentListing, failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(List<Pokemon> currentListing),
    Result successfullyLoaded(List<Pokemon> currentListing, bool endOfList),
    Result failureLoaded(List<Pokemon> currentListing, PokemonFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failureLoaded != null) {
      return failureLoaded(currentListing, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result successfullyLoaded(SuccessfullyLoaded value),
    @required Result failureLoaded(FailureLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successfullyLoaded != null);
    assert(failureLoaded != null);
    return failureLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result successfullyLoaded(SuccessfullyLoaded value),
    Result failureLoaded(FailureLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failureLoaded != null) {
      return failureLoaded(this);
    }
    return orElse();
  }
}

abstract class FailureLoaded implements InfiniteListState {
  const factory FailureLoaded(
      {@required List<Pokemon> currentListing,
      @required PokemonFailure failure}) = _$FailureLoaded;

  List<Pokemon> get currentListing;
  PokemonFailure get failure;
  $FailureLoadedCopyWith<FailureLoaded> get copyWith;
}
