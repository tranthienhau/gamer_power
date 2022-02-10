import 'package:DemoApp/domain/entities/game.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_model.g.dart';

@JsonSerializable()
class GameModel extends Game {
  GameModel(
      {required String type,
      required int id,
      required String title,
      required String worth,
      required String thumbnail,
      required String image,
      required String description,
      required String instructions,
      required String open_giveaway_url,
      required String published_date,
      required String platforms,
      required String end_date,
      required int users,
      required String status,
      required String gamerpower_url,
      required String open_giveaway})
      : super(
            type: type,
            id: id,
            title: title,
            worth: worth,
            thumbnail: thumbnail,
            image: image,
            description: description,
            instructions: instructions,
            open_giveaway_url: open_giveaway_url,
            published_date: published_date,
            platforms: platforms,
            end_date: end_date,
            users: users,
            status: status,
            gamerpower_url: gamerpower_url,
            open_giveaway: open_giveaway);

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);

  Map<String, dynamic> toJson() => _$GameModelToJson(this);
}
