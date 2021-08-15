import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'StepButtons.dart';

class StepUm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 24),
            child: Text(
              "Olá!\nAgora você tem o jeito\nmais fácil de investir na\nBolsa.",
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 24),
            child: SvgPicture.asset('assets/images/onboarding/step1.svg', key: ValueKey('StepUmImage'),),
          ),
          StepButtons(
            currentPage: 0,
          )
        ],
      ),
    );
  }
}
