import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:toro_investimentos/src/app.dart';
import 'package:toro_investimentos/src/ui/login.dart';
import 'package:toro_investimentos/src/ui/splash_screen.dart';

void main() {
  testWidgets('Login screen should show text', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Login(),
      ),
    ));

    expect(find.text('O jeito mais fácil de investir na Bolsa.'), findsOneWidget);
  });
}