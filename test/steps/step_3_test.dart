import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/steps/StepButtons.dart';
import 'package:toro_investimentos/src/ui/steps/StepTres.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: StepTres(),
        ),
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
          'Receba parte da taxa de administração, em dinheiro, direto na\nsua conta Toro.');
    },
  );

  testWidgets('StepTres should have step buttons', (WidgetTester tester) async {
    await setup(tester);
    expect(find.byType(StepButtons), findsOneWidget);
  });
}
