// ignore: depend_on_referenced_packages
// ignore_for_file: use_key_in_widget_constructors

//packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsiveness/updater.dart';

//screens
import '/home.dart';
import '/landing.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Updater())],
      child: MaterialApp(
        home: LandingScreen(),
        routes: {HomeScreen.routeName: (ctx) => HomeScreen()},
      ),
    );
  }
}
