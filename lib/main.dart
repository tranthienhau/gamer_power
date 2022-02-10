import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/app.dart';
import 'setup.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // sets up the internal locator
  await setupLocator();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}
