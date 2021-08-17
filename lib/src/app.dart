import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/acoes/acoes.dart';
import 'package:toro_investimentos/src/ui/tema.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTema(),
      home: Scaffold(body: AcoesPage()),
    );
  }
}
