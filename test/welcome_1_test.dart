import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/welcome/WelcomeUm.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body:   SingleChildScrollView(
          child: WelcomeUm(),
        ),
      ),
    ));
  }

  testWidgets('WelcomeUm should have text description',
          (WidgetTester tester) async {
        await setup(tester);

        expect(find.text('Ola!\nAgora voce tem o jeito\n mais facil de investir na\nBolsa.'), findsOneWidget);
      });

  testWidgets('WelcomeUm should have buttons abra sua conta gratis e entrar',
          (WidgetTester tester) async {
        await setup(tester);

        expect(find.text('Abra sua conta gratis'), findsOneWidget);
        expect(find.text('Entrar'), findsOneWidget);
      });
}
