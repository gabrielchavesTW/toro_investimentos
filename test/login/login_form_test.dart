import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toro_investimentos/src/ui/login/login_form.dart';

void main() {
  Future<void> setup(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: LoginForm(),
      ),
    ));
  }

  testWidgets('Login form should have email and senha inputs',
      (WidgetTester tester) async {
    await setup(tester);

    expect(find.text('E-mail ou CPF:'), findsOneWidget);
    expect(find.text('Senha:'), findsOneWidget);
  });

  testWidgets('Login form should have button with entrar text',
      (WidgetTester tester) async {
    await setup(tester);

    expect(find.text('ENTRAR'), findsOneWidget);
  });
}
