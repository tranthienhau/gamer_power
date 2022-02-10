import 'package:DemoApp/domain/entities/game.dart';

abstract class GamesRespository {
  Future<List<Game>> getGames();
}
