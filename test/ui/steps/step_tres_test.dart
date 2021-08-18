import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/steps/step_buttons.dart';
import 'package:toro_investimentos/src/ui/steps/step_tres.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    //Samsung S9 device
    tester.binding.window.devicePixelRatioTestValue = 0.5202312138728323;
    tester.binding.window.physicalSizeTestValue = Size(360, 900);
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: StepTres(),
      ),
    ));
  }

  testWidgets(
    'StepTres should have text description',
    (WidgetTester tester) async {
      await setup(tester);

      expect(find.text('Cashback em Fundos de Investimento'), findsOneWidget);

      final richText = find.byKey(
        ValueKey('StepTresDescription'),
      );

      final richTextWidget = tester.element(richText).widget as RichText;
      expect(richTextWidget.text.toPlainText(),
          'Receba parte da taxa de\nadministração, em dinheiro, direto na\nsua conta Toro.');
    },
  );

  testWidgets('StepTres should have step buttons', (WidgetTester tester) async {
    await setup(tester);
    expect(find.byType(StepButtons), findsOneWidget);
  });

  testWidgets('StepTres should have StepTres image',
      (WidgetTester tester) async {
    await setup(tester);
    expect(find.byKey(ValueKey('StepTresImage')), findsOneWidget);
  });
}
