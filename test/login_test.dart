import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:toro_investimentos/src/ui/login/login.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Login(),
      ),
    ));
  }
  testWidgets('Login screen should show text', (WidgetTester tester) async {
    await setup(tester);

    expect(find.text('O jeito mais fácil de investir na Bolsa.'), findsOneWidget);
  });

  testWidgets('Login screen should have email and senha inputs', (WidgetTester tester) async {
    await setup(tester);

    expect(find.text('E-mail ou CPF:'), findsOneWidget);
    expect(find.text('Senha:'), findsOneWidget);
    expect(find.text('ENTRAR'), findsOneWidget);
  });
}