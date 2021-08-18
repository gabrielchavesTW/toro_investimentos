import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/login/login.dart';
import 'package:toro_investimentos/src/ui/login/login_form.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    //Samsung S9 device
    tester.binding.window.devicePixelRatioTestValue = 0.5202312138728323;
    tester.binding.window.physicalSizeTestValue = Size(360, 900);
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Login(),
      ),
    ));
  }

  testWidgets(
    'Login should have text description',
    (WidgetTester tester) async {
      await setup(tester);

      final richText = find.byKey(
        ValueKey('LoginDescription'),
      );

      final richTextWidget = tester.element(richText).widget as RichText;
      expect(richTextWidget.text.toPlainText(),
          'O jeito mais fácil\nde investir na \nBolsa.');
    },
  );

  testWidgets('Login should have Login form', (WidgetTester tester) async {
    await setup(tester);
    expect(find.byType(LoginForm), findsOneWidget);
  });

  testWidgets('Login should have Toro Logo image', (WidgetTester tester) async {
    await setup(tester);
    expect(find.byKey(ValueKey('ToroLogoLogin')), findsOneWidget);
  });
}
