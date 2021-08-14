import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/steps/StepUm.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body:   SingleChildScrollView(
          child: StepUm(),
        ),
      ),
    ));
  }

  testWidgets('StepUm should have text description',
          (WidgetTester tester) async {
        await setup(tester);

        expect(find.text('Ola!\nAgora voce tem o jeito\nmais facil de investir na\nBolsa.'), findsOneWidget);
      });

  testWidgets('StepUm should have buttons abra sua conta gratis e entrar',
          (WidgetTester tester) async {
        await setup(tester);

        expect(find.text('Abra sua conta gratis'), findsOneWidget);
        expect(find.text('Entrar'), findsOneWidget);
      });
}
