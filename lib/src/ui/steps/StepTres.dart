import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toro_investimentos/src/ui/steps/StepButtons.dart';

class StepTres extends StatelessWidget {
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
            child: SvgPicture.asset('assets/images/onboarding/step3.svg', key: ValueKey('StepTresImage'),),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 24),
            child: Text(
              "Cashback em Fundos de Investimento",
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 24),
            child: RichText(
              key: ValueKey('StepTresDescription'),
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText1,
                children: <TextSpan>[
                  TextSpan(text: 'Receba parte da taxa de\nadministração, '),
                  TextSpan(
                    text: 'em dinheiro, direto na\nsua conta Toro.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ),
          StepButtons(currentPage: 2,)
        ],
      ),
    );
  }
}
