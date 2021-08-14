import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/login/login_form.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/logo-transparent.png',
            width: 150,
          ),
          Text("O jeito mais fácil de investir na Bolsa."),
          LoginForm()
        ],
      ),
    );
  }
}
