import 'package:first_training/screens/sort_player_screen.dart';
import 'package:first_training/screens/splash_screen.dart';
import 'package:first_training/screens/tab_screen.dart';
import 'package:first_training/screens/team_list_screen.dart';
import 'package:flutter/material.dart';
import './screens/player_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Team Management App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LeagueScreen(),
      initialRoute: '/splash_screen',
      routes: {
        '/': (lig) => TabScreen(),
        '/splash_screen' : (context) => SplashScreen(),
        TeamListScreen.routeName: (lig) => TeamListScreen(),
        PlayerScreen.routeName: (ctx) => PlayerScreen(),
        SortScreen.routeName: (ctx) => SortScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
