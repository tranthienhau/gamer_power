import 'package:freezed_annotation/freezed_annotation.dart';
part 'firstscreen_event.freezed.dart';

@freezed
abstract class FirstScreenEvent with _$FirstScreenEvent {
  const factory FirstScreenEvent.fetchListGame() = GetListGames;
}
