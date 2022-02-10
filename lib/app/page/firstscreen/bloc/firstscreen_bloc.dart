import 'package:DemoApp/app/services/dialog_service.dart';
import 'package:DemoApp/domain/domain.dart';
import 'package:DemoApp/domain/entities/game.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firstscreen_event.dart';
import 'firstscreen_state.dart';

class FirstScreenBloc extends Bloc<FirstScreenEvent, FirstScreenState> {
  final DialogService _dialogService;
  final FetchGamesUseCase _fetchGamesUseCase;
  FirstScreenBloc(FirstScreenState initialState, this._fetchGamesUseCase,
      this._dialogService)
      : super(initialState);

  FirstScreenState get initialState => ListGameState(listGame: []);

  @override
  Stream<FirstScreenState> mapEventToState(FirstScreenEvent event) async* {
    switch (event.runtimeType) {
      case GetListGames:
        yield* _mapGetListGameToState(event as GetListGames);
        break;
    }
  }

  Stream<FirstScreenState> _mapGetListGameToState(GetListGames event) async* {
    _dialogService.showLoading();
    try {
      List<Game> listGame = await _fetchGamesUseCase.perform();
      _dialogService.hideLoading();
      yield ListGameState(listGame: listGame);
    } catch (error) {
      _dialogService.hideLoading();
      yield GetListGameErrorState(errorMessage: error.toString());
    }
  }
}
