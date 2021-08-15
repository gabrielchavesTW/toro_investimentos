import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/steps/StepButtons.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: StepButtons(
            currentPage: 1,
          ),
        ),
      ),
    ));
  }

  testWidgets('StepButtons should have buttons abra sua conta grátis e entrar',
      (WidgetTester tester) async {
    await setup(tester);

    expect(find.text('Abra sua conta grátis'), findsOneWidget);
    expect(find.text('Entrar'), findsOneWidget);
  });
}
