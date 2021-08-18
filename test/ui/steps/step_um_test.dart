import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/steps/step_buttons.dart';
import 'package:toro_investimentos/src/ui/steps/step_um.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    //Samsung S9 device
    tester.binding.window.devicePixelRatioTestValue = 0.5202312138728323;
    tester.binding.window.physicalSizeTestValue = Size(360, 900);
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: StepUm(),
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
