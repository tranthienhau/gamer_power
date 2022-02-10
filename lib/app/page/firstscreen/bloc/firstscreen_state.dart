import 'package:DemoApp/domain/entities/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'firstscreen_state.freezed.dart';

@freezed
abstract class FirstScreenState with _$FirstScreenState {
  const factory FirstScreenState.listGameState(List<Game> listGame) =
      ListGameState;
  const factory FirstScreenState.getListGameFailState(String errorMessage) =
      GetListGameErrorState;
}

// class ListGameState extends FirstScreenState {
//   final List<Game> listGame;
//   ListGameState({required this.listGame}) : super();

//   @override
//   List<Object> get props => [listGame];
// }

// class GetListGameErrorState extends FirstScreenState {
//   final errorMessage;
//   GetListGameErrorState({required this.errorMessage}) : super();

//   @override
//   List<Object> get props => [errorMessage];
// }
