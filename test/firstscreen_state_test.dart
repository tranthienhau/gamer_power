import 'package:DemoApp/app/page/firstscreen/bloc/firstscreen_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FirstScreenState', () {
    group('ListGameState', () {
      test('supports value comparison', () {
        expect(FirstScreenState.listGameState([]),
            FirstScreenState.listGameState([]));
      });
    });

    group('GetListGameErrorState', () {
      test('supports value comparison', () {
        expect(FirstScreenState.getListGameFailState('Test Error'),
            FirstScreenState.getListGameFailState('Test Error'));
      });
    });
  });
}
