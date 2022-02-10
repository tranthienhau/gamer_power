import 'package:DemoApp/app/page/firstscreen/widget/firstscreen_page.dart';
import 'package:DemoApp/app/page/secondscreen/widget/secondscreen_page.dart';
import 'package:DemoApp/domain/entities/game.dart';
import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
/// Manage all routes in the application
class AppRoute {
  /// First Page route
  static const firstPage = '/firstPage';

  /// Second Page route
  static const secondPage = '/secondPage';

  /// App router generation
  static Route<Object>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case firstPage:
        return MaterialPageRoute(builder: (_) => FirstScreenPage());
      case secondPage:
        final game = settings.arguments as Game;
        return MaterialPageRoute(builder: (_) => SecondScreenPage(game: game));
      default:
        break;
    }
  }
}
