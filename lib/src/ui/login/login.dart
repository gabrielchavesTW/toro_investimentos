import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/login/login_form.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 24),
            child: Image.asset(
              'assets/images/logo-transparent.png',
              key: ValueKey('ToroLogoLogin'),
              width: 150,
            ),
          ),
          RichText(
              key: ValueKey('LoginDescription'),
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline1,
                  children: <TextSpan>[
                    TextSpan(text: 'O jeito mais fácil\nde '),
                    TextSpan(
                      text: 'investir',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    TextSpan(text: ' na \nBolsa.'),
                  ])),
          LoginForm()
        ],
      ),
    );
  }
}
