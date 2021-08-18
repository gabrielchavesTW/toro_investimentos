import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/steps/step_buttons.dart';
import 'package:toro_investimentos/src/ui/steps/step_quatro.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    //Samsung S9 device
    tester.binding.window.devicePixelRatioTestValue = 0.5202312138728323;
    tester.binding.window.physicalSizeTestValue = Size(360, 900);
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: StepQuatro(),
      ),
    ));
  }

  testWidgets('StepQuatro should have text description',
      (WidgetTester tester) async {
    await setup(tester);

    expect(find.text('E tem muito mais!'), findsOneWidget);
    expect(find.text('Recomendações de investimentos.'), findsOneWidget);
    expect(find.text('Cursos do iniciante ao avançado.'), findsOneWidget);
    expect(find.text('Invista sabendo quanto pode ganhar.'), findsOneWidget);
  });

  testWidgets('StepQuatro should have step buttons',
      (WidgetTester tester) async {
    await setup(tester);
    expect(find.byType(StepButtons), findsOneWidget);
  });

  testWidgets('StepQuatro should have StepQuatro image',
      (WidgetTester tester) async {
    await setup(tester);
    expect(find.byKey(ValueKey('StepQuatroImage')), findsOneWidget);
  });
}
