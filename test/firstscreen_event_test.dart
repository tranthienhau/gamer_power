import 'package:DemoApp/app/page/firstscreen/bloc/firstscreen_event.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FirstScreenEvent', () {
    group('GetListGames', () {
      test('supports value comparison', () {
        expect(GetListGames(), GetListGames());
      });
    });
  });
}
