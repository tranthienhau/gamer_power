import 'package:DemoApp/app/page/firstscreen/bloc/firstscreen_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FirstScreenState', () {
    group('ListGameState', () {
      test('supports value comparison', () {
        expect(ListGameState(listGame: []), ListGameState(listGame: []));
      });
    });

    group('GetListGameErrorState', () {
      test('supports value comparison', () {
        expect(GetListGameErrorState(errorMessage: 'Test Error'),
            GetListGameErrorState(errorMessage: 'Test Error'));
      });
    });
  });
}
