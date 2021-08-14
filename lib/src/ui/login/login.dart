import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/login/login_form.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/logo-transparent.png'),
        Text("O jeito mais fácil de investir na Bolsa."),
        LoginForm()
      ],
    );
  }
}