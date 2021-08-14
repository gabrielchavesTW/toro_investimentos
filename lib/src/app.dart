import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/login/login.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}