import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/login/login.dart';
import 'package:toro_investimentos/src/ui/steps/step.dart';
import 'package:toro_investimentos/src/ui/tema.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => Login(),
      },
      theme: defaultTema(context),
      home: Scaffold(body: StepPage()),
    );
  }
}
