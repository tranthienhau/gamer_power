import 'package:DemoApp/domain/domain.dart';
import 'package:DemoApp/domain/entities/game.dart';
import 'package:DemoApp/domain/repositories/games_repository.dart';

class FetchGamesUseCase extends BaseUseCase<List<Game>, Object?> {
  final GamesRespository _gamesRespository;
  FetchGamesUseCase(this._gamesRespository);

  @override
  Future<List<Game>> perform({Object? param}) async {
    try {
      final games = await _gamesRespository.getGames();
      return games;
    } on Exception catch (_) {
      return [];
    }
  }
}
