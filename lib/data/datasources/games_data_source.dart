import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' show Client, Response;
import 'package:DemoApp/data/models/game_model.dart';

abstract class GamesDataSource {
  Future<List<GameModel>> getGames();
}

class LocalGamesDataSourceImpl extends GamesDataSource {
  Client client = Client();
  @override
  Future<List<GameModel>> getGames() async {
    final response =
        await client.get(Uri.parse('https://www.gamerpower.com/api/giveaways'));
    final data = json.decode(response.body);
    return (data as List).map((e) => GameModel.fromJson(e)).toList();
  }
}
