import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/login/login.dart';

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
        )),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              fontSize: 30.0,
              color: Color(0XFF4baed3),
              fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
