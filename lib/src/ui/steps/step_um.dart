import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toro_investimentos/src/ui/tema.dart';

import 'step_buttons.dart';

class StepUm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
                bottom: (deviceHeight / 28.83), top: (deviceHeight / 9.61)),
            child: Text(
              "Olá!\nAgora você tem o jeito\nmais fácil de investir na\nBolsa.",
              style: TemaToro.headline3(context),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                  left: 0, top: 0, right: 0, bottom: (deviceHeight / 28.83)),
              child: SvgPicture.asset(
                'assets/images/onboarding/step1.svg',
                key: ValueKey('StepUmImage'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          StepButtons(
            currentPage: 0,
          )
        ],
      ),
    );
  }
}
