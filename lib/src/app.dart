import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/steps/step.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
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
          headline3: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.black
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          bodyText2: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: Scaffold(
          body: StepPage()
      ),
    );
  }
}
