import 'package:flutter/material.dart';
import 'package:toro_investimentos/src/ui/login/login_form.dart';
import 'package:toro_investimentos/src/ui/tema.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
                width: (deviceWidth / 2.4),
              ),
            ),
            RichText(
                key: ValueKey('LoginDescription'),
                text: TextSpan(
                    style: TemaToro.headline1(context),
                    children: <TextSpan>[
                      TextSpan(text: 'O jeito mais fácil\nde '),
                      TextSpan(
                        text: 'investir',
                        style: TemaToro.headline2(context),
                      ),
                      TextSpan(text: ' na \nBolsa.'),
                    ])),
            LoginForm()
          ],
        ),
      ),
    );
  }
}
