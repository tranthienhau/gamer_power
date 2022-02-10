import 'package:DemoApp/app/page/firstscreen/bloc/firstscreen_bloc.dart';
import 'package:DemoApp/app/page/firstscreen/bloc/firstscreen_event.dart';
import 'package:DemoApp/app/page/firstscreen/bloc/firstscreen_state.dart';
import 'package:DemoApp/app/services/dialog_service.dart';
import 'package:DemoApp/app/services/navigation_service.dart';
import 'package:DemoApp/domain/domain.dart';
import 'package:DemoApp/domain/entities/game.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'firstscreen_bloc_test.mocks.dart';

@GenerateMocks([FetchGamesUseCase, DialogService])
void main() {
  group('FirstScreenBloc', () {
    late MockFetchGamesUseCase mockFetchGamesUseCase;
    late MockDialogService mockDialogService;
    late Game demoReturnGame;

    String errorMessageTest = 'Get List Fail';

    setUp(() async {
      mockFetchGamesUseCase = MockFetchGamesUseCase();
      mockDialogService = MockDialogService();
      demoReturnGame = Game(
          type: 'DLC & Loot',
          id: 1397,
          title: 'Trove Chonkxion Mount Key Giveaway',
          worth: 'N/A',
          thumbnail: 'https://www.gamerpower.com/offers/1/620411e116b44.jpg',
          image: 'https://www.gamerpower.com/offers/1b/620411e116b44.jpg',
          description:
              'Claim your free Trove Chonkxion Mount Key and unlock a Chonkxion Mount plus a Chonkxini Ally! Grab it now before it\'s too late!',
          instructions:
              '1. Login into your free MMOBomb account and click the button to unlock your key.\r\n2. Follow the giveaway instructions to redeem your key.',
          open_giveaway_url:
              'https://www.gamerpower.com/open/trove-chonkxion-mount-key-giveaway',
          published_date: '2022-02-09 20:11:29',
          platforms: 'PC, Playstation 4, Xbox One, Nintendo Switch',
          end_date: 'N/A',
          users: 160,
          status: 'Active',
          gamerpower_url:
              'https://www.gamerpower.com/trove-chonkxion-mount-key-giveaway',
          open_giveaway:
              'https://www.gamerpower.com/open/trove-chonkxion-mount-key-giveaway');
    });

    blocTest<FirstScreenBloc, FirstScreenState>(
      'emit get list game success',
      build: () {
        when(mockFetchGamesUseCase.perform())
            .thenAnswer((realInvocation) async {
          return [demoReturnGame];
        });
        when(mockDialogService.showLoading())
            .thenAnswer((realInvocation) async => true);
        when(mockDialogService.hideLoading())
            .thenAnswer((realInvocation) async => true);
        return FirstScreenBloc(ListGameState(listGame: []),
            mockFetchGamesUseCase, mockDialogService);
      },
      act: (bloc) => bloc.add(GetListGames()),
      expect: () => <FirstScreenState>[
        ListGameState(listGame: [demoReturnGame])
      ],
    );

    blocTest<FirstScreenBloc, FirstScreenState>(
      'emit get list game error',
      build: () {
        when(mockFetchGamesUseCase.perform()).thenThrow(errorMessageTest);
        when(mockDialogService.showLoading())
            .thenAnswer((realInvocation) async => true);
        when(mockDialogService.hideLoading())
            .thenAnswer((realInvocation) async => true);
        return FirstScreenBloc(ListGameState(listGame: []),
            mockFetchGamesUseCase, mockDialogService);
      },
      act: (bloc) => bloc.add(GetListGames()),
      expect: () => <FirstScreenState>[
        GetListGameErrorState(errorMessage: errorMessageTest)
      ],
    );
  });
}
