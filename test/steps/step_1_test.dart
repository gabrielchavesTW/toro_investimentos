import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/steps/StepButtons.dart';
import 'package:toro_investimentos/src/ui/steps/StepUm.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: StepUm(),
        ),
      ),
    ));
  }

  testWidgets('StepUm should have text description',
      (WidgetTester tester) async {
    await setup(tester);

    expect(
        find.text(
            'Olá!\nAgora você tem o jeito\nmais fácil de investir na\nBolsa.'),
        findsOneWidget);
  });

  testWidgets('StepUm should have step buttons', (WidgetTester tester) async {
    await setup(tester);
    expect(find.byType(StepButtons), findsOneWidget);
  });

  testWidgets('StepUm should have StepUm image', (WidgetTester tester) async {
    await setup(tester);
    expect(find.byKey(ValueKey('StepUmImage')), findsOneWidget);
  });
}
