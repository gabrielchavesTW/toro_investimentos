import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/login/login.dart';
import 'package:toro_investimentos/src/ui/welcome/WelcomeUm.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0XFF4baed3),
        accentColor: Colors.cyan[600],
        buttonColor: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0XFF4baed3),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                primary: Color(0XFF4baed3),
                backgroundColor: Color(0XFF4baed3),
                side: BorderSide(color: Color(0XFF4baed3)),
                textStyle: TextStyle(color: Colors.white))),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              fontSize: 30.0,
              color: Color(0XFF4baed3),
              fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: Scaffold(
        body: WelcomeUm(),
      ),
    );
  }
}
