import 'package:DemoApp/data/data.dart';
import 'package:DemoApp/domain/entities/game.dart';
import 'package:DemoApp/domain/repositories/games_repository.dart';

class GamesRepositoryImpl extends GamesRespository {
  final GamesDataSource _gamesDataSource;
  GamesRepositoryImpl(this._gamesDataSource);

  @override
  Future<List<Game>> getGames() async {
    final result = await _gamesDataSource.getGames();
    return result;
  }
}
