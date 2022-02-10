import 'package:DemoApp/domain/entities/game.dart';
import 'package:equatable/equatable.dart';

abstract class FirstScreenState extends Equatable {
  const FirstScreenState();

  @override
  List<Object> get props => [];
}

class ListGameState extends FirstScreenState {
  final List<Game> listGame;
  ListGameState({required this.listGame}) : super();

  @override
  List<Object> get props => [listGame];
}

class GetListGameErrorState extends FirstScreenState {
  final errorMessage;
  GetListGameErrorState({required this.errorMessage}) : super();

  @override
  List<Object> get props => [errorMessage];
}
