import 'package:DemoApp/data/datasources/games_data_source.dart';
import 'package:DemoApp/data/repositories/games_repository_impl.dart';
import 'package:DemoApp/domain/repositories/games_repository.dart';
import 'package:DemoApp/domain/usecases/fetch_games_usecase.dart';
import 'package:get_it/get_it.dart';

import 'app/page/firstscreen/bloc/firstscreen_bloc.dart';
import 'app/page/firstscreen/bloc/firstscreen_state.dart';
import 'app/services/dialog_service.dart';
import 'app/services/navigation_service.dart';

/// Ioc instance
GetIt locator = GetIt.instance;

/// Setup dependencies in application
Future setupLocator() async {
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  // Services
  locator
      .registerLazySingleton<DialogService>(() => DialogServiceImpl(locator()));

  // Respositories and Data sources
  locator.registerFactory<GamesDataSource>(() => LocalGamesDataSourceImpl());
  locator.registerLazySingleton<GamesRespository>(
      () => GamesRepositoryImpl(locator()));

  _setupUseCases();

  _setupBloc();
}

/// Register all use cases in IoC
void _setupUseCases() {
  locator.registerFactory(() => FetchGamesUseCase(locator()));
}

/// Register all bloc in IoC
void _setupBloc() {
  locator.registerFactory<FirstScreenBloc>(
      () => FirstScreenBloc(ListGameState(listGame: []), locator(), locator()));
}
