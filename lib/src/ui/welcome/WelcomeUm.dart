import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/login/login_form.dart';

class WelcomeUm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ola!\nAgora voce tem o jeito\n mais facil de investir na\nBolsa.",
          style: Theme.of(context).textTheme.headline1,
        ),
        Container(
          padding: EdgeInsets.only(left:0,top:0,right:0,bottom:24),
          child: Image.asset(
            'assets/images/onboarding/step1.svg',
          ),
        ),
        ElevatedButton(
          onPressed: () {
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text('Abra sua conta gratis'),
          ),
        ),
        ElevatedButton(
          onPressed: () {
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text('Entrar'),
          ),
        ),
      ],
    );
  }
}
