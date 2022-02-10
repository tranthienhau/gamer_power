// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'firstscreen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FirstScreenStateTearOff {
  const _$FirstScreenStateTearOff();

  ListGameState listGameState(List<Game> listGame) {
    return ListGameState(
      listGame,
    );
  }

  GetListGameErrorState getListGameFailState(String errorMessage) {
    return GetListGameErrorState(
      errorMessage,
    );
  }
}

/// @nodoc
const $FirstScreenState = _$FirstScreenStateTearOff();

/// @nodoc
mixin _$FirstScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> listGame) listGameState,
    required TResult Function(String errorMessage) getListGameFailState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> listGame)? listGameState,
    TResult Function(String errorMessage)? getListGameFailState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListGameState value) listGameState,
    required TResult Function(GetListGameErrorState value) getListGameFailState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListGameState value)? listGameState,
    TResult Function(GetListGameErrorState value)? getListGameFailState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstScreenStateCopyWith<$Res> {
  factory $FirstScreenStateCopyWith(
          FirstScreenState value, $Res Function(FirstScreenState) then) =
      _$FirstScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirstScreenStateCopyWithImpl<$Res>
    implements $FirstScreenStateCopyWith<$Res> {
  _$FirstScreenStateCopyWithImpl(this._value, this._then);

  final FirstScreenState _value;
  // ignore: unused_field
  final $Res Function(FirstScreenState) _then;
}

/// @nodoc
abstract class $ListGameStateCopyWith<$Res> {
  factory $ListGameStateCopyWith(
          ListGameState value, $Res Function(ListGameState) then) =
      _$ListGameStateCopyWithImpl<$Res>;
  $Res call({List<Game> listGame});
}

/// @nodoc
class _$ListGameStateCopyWithImpl<$Res>
    extends _$FirstScreenStateCopyWithImpl<$Res>
    implements $ListGameStateCopyWith<$Res> {
  _$ListGameStateCopyWithImpl(
      ListGameState _value, $Res Function(ListGameState) _then)
      : super(_value, (v) => _then(v as ListGameState));

  @override
  ListGameState get _value => super._value as ListGameState;

  @override
  $Res call({
    Object? listGame = freezed,
  }) {
    return _then(ListGameState(
      listGame == freezed
          ? _value.listGame
          : listGame // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ));
  }
}

/// @nodoc

class _$ListGameState implements ListGameState {
  const _$ListGameState(this.listGame);

  @override
  final List<Game> listGame;

  @override
  String toString() {
    return 'FirstScreenState.listGameState(listGame: $listGame)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListGameState &&
            (identical(other.listGame, listGame) ||
                const DeepCollectionEquality()
                    .equals(other.listGame, listGame)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listGame);

  @JsonKey(ignore: true)
  @override
  $ListGameStateCopyWith<ListGameState> get copyWith =>
      _$ListGameStateCopyWithImpl<ListGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> listGame) listGameState,
    required TResult Function(String errorMessage) getListGameFailState,
  }) {
    return listGameState(listGame);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> listGame)? listGameState,
    TResult Function(String errorMessage)? getListGameFailState,
    required TResult orElse(),
  }) {
    if (listGameState != null) {
      return listGameState(listGame);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListGameState value) listGameState,
    required TResult Function(GetListGameErrorState value) getListGameFailState,
  }) {
    return listGameState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListGameState value)? listGameState,
    TResult Function(GetListGameErrorState value)? getListGameFailState,
    required TResult orElse(),
  }) {
    if (listGameState != null) {
      return listGameState(this);
    }
    return orElse();
  }
}

abstract class ListGameState implements FirstScreenState {
  const factory ListGameState(List<Game> listGame) = _$ListGameState;

  List<Game> get listGame => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListGameStateCopyWith<ListGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListGameErrorStateCopyWith<$Res> {
  factory $GetListGameErrorStateCopyWith(GetListGameErrorState value,
          $Res Function(GetListGameErrorState) then) =
      _$GetListGameErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$GetListGameErrorStateCopyWithImpl<$Res>
    extends _$FirstScreenStateCopyWithImpl<$Res>
    implements $GetListGameErrorStateCopyWith<$Res> {
  _$GetListGameErrorStateCopyWithImpl(
      GetListGameErrorState _value, $Res Function(GetListGameErrorState) _then)
      : super(_value, (v) => _then(v as GetListGameErrorState));

  @override
  GetListGameErrorState get _value => super._value as GetListGameErrorState;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(GetListGameErrorState(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetListGameErrorState implements GetListGameErrorState {
  const _$GetListGameErrorState(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'FirstScreenState.getListGameFailState(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetListGameErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $GetListGameErrorStateCopyWith<GetListGameErrorState> get copyWith =>
      _$GetListGameErrorStateCopyWithImpl<GetListGameErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> listGame) listGameState,
    required TResult Function(String errorMessage) getListGameFailState,
  }) {
    return getListGameFailState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> listGame)? listGameState,
    TResult Function(String errorMessage)? getListGameFailState,
    required TResult orElse(),
  }) {
    if (getListGameFailState != null) {
      return getListGameFailState(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListGameState value) listGameState,
    required TResult Function(GetListGameErrorState value) getListGameFailState,
  }) {
    return getListGameFailState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListGameState value)? listGameState,
    TResult Function(GetListGameErrorState value)? getListGameFailState,
    required TResult orElse(),
  }) {
    if (getListGameFailState != null) {
      return getListGameFailState(this);
    }
    return orElse();
  }
}

abstract class GetListGameErrorState implements FirstScreenState {
  const factory GetListGameErrorState(String errorMessage) =
      _$GetListGameErrorState;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetListGameErrorStateCopyWith<GetListGameErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
