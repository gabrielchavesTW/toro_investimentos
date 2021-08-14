import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toro_investimentos/src/ui/components/toro_button.dart';
import 'package:toro_investimentos/src/ui/login/login_form.dart';

class StepDois extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 24),
            child: SvgPicture.asset('assets/images/onboarding/step2.svg'),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 24),
            child: Text(
              "Corretagem Zero",
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 24),
            child: RichText(
              key: ValueKey('StepDoisDescription'),
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText1,
                children: <TextSpan>[
                  TextSpan(text: 'Aproveite para investir com\n'),
                  TextSpan(
                    text: 'Corretagem Zero em qualquer tipo\nde ativo',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  TextSpan(text: ', inclusive da Bolsa.'),
                ],
              ),
            ),
          ),
          ToroButton(
              padding: EdgeInsets.only(bottom: 14),
              buttonText: 'Abra sua conta gratis',
              onPressed: () {}),
          ToroButton(
              padding: EdgeInsets.only(bottom: 14),
              buttonText: 'Entrar',
              buttonStyle: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.white),
              ),
              buttonTextStyle:
              TextStyle(color: Theme.of(context).primaryColor),
              onPressed: () {}),
        ],
      ),
    );
  }
}
