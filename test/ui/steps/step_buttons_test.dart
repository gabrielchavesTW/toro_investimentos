import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/components/toro_button.dart';
import 'package:toro_investimentos/src/ui/login/login.dart';
import 'package:toro_investimentos/src/ui/steps/step_buttons.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    final dpi = tester.binding.window.devicePixelRatio;
    tester.binding.window.physicalSizeTestValue = Size(1080 * dpi, 2220* dpi);
    await tester.pumpWidget(MaterialApp(
      routes: {
        '/login': (context) => Login(),
      },
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

  testWidgets('Botao entrar deve abrir a tela de login ao ser clicado',
          (WidgetTester tester) async {
        await setup(tester);



        var buttonEntrar = find.byType(ToroButton).last;
        await tester.tap(buttonEntrar);
        await tester.pumpAndSettle();

        expect(find.byType(Login), findsOneWidget);
      });
}
