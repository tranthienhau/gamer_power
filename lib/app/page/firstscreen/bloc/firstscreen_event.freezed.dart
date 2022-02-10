// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'firstscreen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FirstScreenEventTearOff {
  const _$FirstScreenEventTearOff();

  GetListGames fetchListGame() {
    return const GetListGames();
  }
}

/// @nodoc
const $FirstScreenEvent = _$FirstScreenEventTearOff();

/// @nodoc
mixin _$FirstScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListGames value) fetchListGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListGames value)? fetchListGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstScreenEventCopyWith<$Res> {
  factory $FirstScreenEventCopyWith(
          FirstScreenEvent value, $Res Function(FirstScreenEvent) then) =
      _$FirstScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirstScreenEventCopyWithImpl<$Res>
    implements $FirstScreenEventCopyWith<$Res> {
  _$FirstScreenEventCopyWithImpl(this._value, this._then);

  final FirstScreenEvent _value;
  // ignore: unused_field
  final $Res Function(FirstScreenEvent) _then;
}

/// @nodoc
abstract class $GetListGamesCopyWith<$Res> {
  factory $GetListGamesCopyWith(
          GetListGames value, $Res Function(GetListGames) then) =
      _$GetListGamesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetListGamesCopyWithImpl<$Res>
    extends _$FirstScreenEventCopyWithImpl<$Res>
    implements $GetListGamesCopyWith<$Res> {
  _$GetListGamesCopyWithImpl(
      GetListGames _value, $Res Function(GetListGames) _then)
      : super(_value, (v) => _then(v as GetListGames));

  @override
  GetListGames get _value => super._value as GetListGames;
}

/// @nodoc

class _$GetListGames implements GetListGames {
  const _$GetListGames();

  @override
  String toString() {
    return 'FirstScreenEvent.fetchListGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetListGames);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListGame,
  }) {
    return fetchListGame();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListGame,
    required TResult orElse(),
  }) {
    if (fetchListGame != null) {
      return fetchListGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListGames value) fetchListGame,
  }) {
    return fetchListGame(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListGames value)? fetchListGame,
    required TResult orElse(),
  }) {
    if (fetchListGame != null) {
      return fetchListGame(this);
    }
    return orElse();
  }
}

abstract class GetListGames implements FirstScreenEvent {
  const factory GetListGames() = _$GetListGames;
}
