import 'package:flutter/material.dart';
import 'package:harry_potter_avalon/src/game/screen/home_screen.dart';
import 'package:harry_potter_avalon/src/home/screen/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          GameScreen.routeName: (context) => const GameScreen(),
        });
  }
}
