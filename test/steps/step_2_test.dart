import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/steps/StepButtons.dart';
import 'package:toro_investimentos/src/ui/steps/StepDois.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: StepDois(),
        ),
      ),
    ));
  }

  testWidgets(
    'StepDois should have text description',
    (WidgetTester tester) async {
      await setup(tester);

      expect(find.text('Corretagem Zero'), findsOneWidget);

      final richText = find.byKey(
        ValueKey('StepDoisDescription'),
      );

      final richTextWidget = tester.element(richText).widget as RichText;
      expect(richTextWidget.text.toPlainText(),
          'Aproveite para investir com\nCorretagem Zero em qualquer tipo\nde ativo, inclusive da Bolsa.');
    },
  );

  testWidgets('StepDois should have step buttons', (WidgetTester tester) async {
    await setup(tester);
    expect(find.byType(StepButtons), findsOneWidget);
  });
}