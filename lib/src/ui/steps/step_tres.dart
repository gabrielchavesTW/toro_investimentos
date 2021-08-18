import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toro_investimentos/src/ui/steps/step_buttons.dart';
import 'package:toro_investimentos/src/ui/tema.dart';

class StepTres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                left: 0,
                top: (deviceHeight / 9.61),
                right: 0,
                bottom: (deviceHeight / 28.83)),
            child: SvgPicture.asset(
              'assets/images/onboarding/step3.svg',
              fit: BoxFit.fitHeight,
              key: ValueKey('StepTresImage'),
            ),
          )),
          Container(
            padding: EdgeInsets.only(bottom: (deviceHeight / 28.83)),
            child: Text(
              "Cashback em Fundos de Investimento",
              style: TemaToro.headline3(context),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: (deviceHeight / 28.83)),
            child: RichText(
              key: ValueKey('StepTresDescription'),
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TemaToro.bodyText1(context),
                children: <TextSpan>[
                  TextSpan(text: 'Receba parte da taxa de\nadministração, '),
                  TextSpan(
                    text: 'em dinheiro, direto na\nsua conta Toro.',
                    style: TemaToro.bodyText2(context),
                  ),
                ],
              ),
            ),
          ),
          StepButtons(
            currentPage: 2,
          )
        ],
      ),
    );
  }
}
