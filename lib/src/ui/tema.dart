import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData defaultTema(BuildContext context) {
  return ThemeData(
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
  );
}

class TemaToro {
  static TextStyle headline1(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return TextStyle(
        fontSize: (deviceWidth / 10),
        color: Colors.black,
        fontWeight: FontWeight.bold);
  }

  static TextStyle headline2(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return TextStyle(
        fontSize: (deviceWidth / 10),
        color: Color(0XFF4baed3),
        fontWeight: FontWeight.bold);
  }

  static TextStyle headline3(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return TextStyle(
        fontSize: (deviceWidth / 11.75),
        fontWeight: FontWeight.w400,
        color: Colors.black);
  }

  static TextStyle bodyText1(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return TextStyle(
        fontSize: (deviceWidth / 22.5),
        fontWeight: FontWeight.w300,
        color: Colors.black);
  }

  static TextStyle bodyText2(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return TextStyle(
        fontSize: (deviceWidth / 22.5),
        fontWeight: FontWeight.w500,
        color: Colors.black);
  }
}
